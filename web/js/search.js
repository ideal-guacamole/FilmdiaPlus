/**
 * Created by xyc on 17-5-22.
 */
var searchField = document.getElementById('searchField');
var searchBtn = document.getElementById('searchBtn');
searchBtn.onclick = search;
document.onkeyup = function () {

};

var divSuggestionResults = document.getElementById('suggestionResults');

var searchItemIndex = -1;
searchField.onclick = getResults;
searchField.onkeyup = getResults;
document.body.onclick = function () {
    divSuggestionResults.style.display = 'none';
    searchItemIndex = -1;
};

function search() {
    if (searchField.value !== '') {
        var url = '/views/searchPage.jsp';
        var ref = 'searchMsg';
        var value = searchField.value;
        url = setQueryString(url, ref, value);
        window.location.href = url;
    }
}

function getResults() {
    if (event.keyCode === 40) { //Down
        if (searchItemIndex + 1 < divSuggestionResults.childElementCount) {
            searchItemIndex++;
            divSuggestionResults.getElementsByTagName('a')[searchItemIndex].className = 'highlight';
            if (searchItemIndex !== 0) {
                divSuggestionResults.getElementsByTagName('a')[searchItemIndex - 1].className = '';
            }
        }
    }
    else if (event.keyCode === 38) { //Up
        if (searchItemIndex !== -1) {
            searchItemIndex--;
            if (searchItemIndex !== -1) {
                divSuggestionResults.getElementsByTagName('a')[searchItemIndex].className = 'highlight';
            }
            divSuggestionResults.getElementsByTagName('a')[searchItemIndex + 1].className = '';
        }
    }
    else if (event.keyCode === 13) { //Enter
        if (searchItemIndex === -1) {
            search();
        }
        else {
            window.location.href = divSuggestionResults.getElementsByTagName('a')[searchItemIndex].href;
        }
    }
    else {
        var searchMsg = searchField.value;
        var aFilm = null;
        var innerHtmlTemp = '';
        if (searchMsg !== '') {
            divSuggestionResults.style.display = 'block';
            $.ajax({
                type: 'post',
                url: '/film/getFilmsByName',
                contentType: 'application/json;charset=utf-8',
                data: searchMsg,
                success: function (data) {
                    $.each(data, function (i, item) {
                        if (i < 6) {
                            var url = '../views/details.jsp';
                            url = setQueryString(url, 'filmID', item.filmID);
                            url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
                            var tagLine = item.tagLine ? item.tagLine : 'No tagline now...';
                            aFilm = '<a href=' + url + '><img src=' + item.posterURL +
                                '/><div class="suggestionResultsLabel"><span class="title">'
                                + item.name + '</span><div class="summary">' + tagLine +
                                '</div></div></a>';
                            innerHtmlTemp += aFilm;
                        }
                    });
                    divSuggestionResults.innerHTML = innerHtmlTemp;
                    var aArr = divSuggestionResults.getElementsByTagName('a');
                    for (var i = 0; i < aArr.length; i++) {
                        aArr[i].onmouseover = function () {
                            this.className = 'highlight';
                        };
                        aArr[i].onmouseout = function () {
                            this.className = '';
                        };
                        aArr[i].onclick = function () {
                            divSuggestionResults.style.display = 'none';
                        }
                    }
                }
            });

        }
        else {
            divSuggestionResults.style.display = 'none';
        }
    }
}