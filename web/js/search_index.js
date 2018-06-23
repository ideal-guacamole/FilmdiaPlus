/**
 * Created by xyc on 17-5-22.
 */
var searchField = document.getElementById('searchField');
var searchBtn = document.getElementById('searchBtn');
searchBtn.onclick = search;
searchField.onkeyup = function () {
    if (event.keyCode === 13) {
        search();
    }
};
function search() {
    if (searchField.value !== '') {
        var url = 'views/searchPage.jsp';
        var ref = 'searchMsg';
        var value = searchField.value;
        url = setQueryString(url, ref, value);
        window.location.href = url;
    }
}
