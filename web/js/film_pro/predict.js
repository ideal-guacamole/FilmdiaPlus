/**
 * Created by samsung1 on 2017/6/12.
 */
var gallery = document.getElementById('owl-demo');
var thisweek1_name = document.getElementById('thisweek1_name');
var thisweek2_name = document.getElementById('thisweek2_name');
var thisweek3_name = document.getElementById('thisweek3_name');
var thisweek4_name = document.getElementById('thisweek4_name');
var thisweek5_name = document.getElementById('thisweek5_name');
var thisweek1_pic = document.getElementById('thisweek1_pic');
var thisweek2_pic = document.getElementById('thisweek2_pic');
var thisweek3_pic = document.getElementById('thisweek3_pic');
var thisweek4_pic = document.getElementById('thisweek4_pic');
var thisweek5_pic = document.getElementById('thisweek5_pic');
var coming1_name = document.getElementById('coming1_name');
var coming2_name = document.getElementById('coming2_name');
var coming3_name = document.getElementById('coming3_name');
var coming4_name = document.getElementById('coming4_name');
var coming5_name = document.getElementById('coming5_name');
var coming1_pic = document.getElementById('coming1_pic');
var coming2_pic = document.getElementById('coming2_pic');
var coming3_pic = document.getElementById('coming3_pic');
var coming4_pic = document.getElementById('coming4_pic');
var coming5_pic = document.getElementById('coming5_pic');

var director_info = document.getElementById('director_info');
var star_info = document.getElementById('star_info');
var predictChartBox = document.getElementById('predictChartBox');

var linear = document.getElementById('linear');
var lasso = document.getElementById('lasso');
var k_nearest = document.getElementById('k_nearest');
var poly = document.getElementById('poly');
var min = document.getElementById('min');
var max = document.getElementById('max');
var precise = document.getElementById('precise');
var imdbfilmID = '';
var analysis = '';

function setResult(a, b, c, minimum, maximum, final) {
    a.innerHTML = minimum;
    b.innerHTML = maximum;
    c.innerHTML = final;
}
function getAnalysis(imdbid) {
    $.ajax({
        type: 'post',
        url: '/predict/getAnalysis.action',
        data: imdbid,
        success: function (data) {
            analysis = data;
            // console.log(data);
            setDirector(data.directors, director_info);
            setStars(data.actors, star_info);
            var predictChart = echarts.init(predictChartBox,'infographic');
            var dateData = [];
            var clickData = [];
            for(var key in data.youtubeClickTimes){
                dateData.push(key);
                clickData.push(data.youtubeClickTimes[key])
            }
            dateData = dateData.reverse();
            clickData = clickData.reverse();
            // console.log(dateData);
            // console.log(clickData);
            var option = {
                title:{
                    text: 'Youtube Hits'
                },
                tooltip: {
                    trigger: 'axis',
                    formatter: "Date: {b}<br/> Click Number: {c}"
                },
                xAxis: {
                    type: 'category',
                    name: 'Date',
                    axisTick: {
                        alignWithLabel: true
                    },
                    data: dateData
                },
                yAxis: {
                    type: 'value',
                    name: 'Youtube Click Number',
                    scale: true
                },
                series:{
                    type: 'line',
                    name: 'Click Number',
                    // symbolSize: 6,
                    data: clickData
                }
            };
            predictChart.setOption(option);
            // alert(data.predictGross_linear);
            linear.onclick = function () {
                if(imdbfilmID!='null') {
                    min.innerHTML = '$'+data.predictGross_linear_range[0];
                    max.innerHTML = '$'+data.predictGross_linear_range[1];
                    precise.innerHTML = '$'+data.predictGross_linear;
                }else {
                    alert('Please choose a movie to be predicted first.');
                }
            };
            lasso.onclick = function () {
                if(imdbfilmID!='null') {
                    min.innerHTML = '$'+data.predictGross_lasso_range[0];
                    max.innerHTML = '$'+data.predictGross_lasso_range[1];
                    precise.innerHTML = '$'+data.predictGross_lasso;
                }else {
                    alert('Please choose a movie to be predicted first.');
                }
            };
            k_nearest.onclick = function () {
                if(imdbfilmID!='null') {
                    min.innerHTML = '$'+data.predictGross_knn_range[0];
                    max.innerHTML = '$'+data.predictGross_knn_range[1];
                    precise.innerHTML = '$'+data.predictGross_knn;
                }else {
                    alert('Please choose a movie to be predicted first.');
                }
            };
            poly.onclick = function () {
                if(imdbfilmID!='null') {
                    min.innerHTML = '$'+data.predictGross_poly_range[0];
                    max.innerHTML = '$'+data.predictGross_poly_range[1];
                    precise.innerHTML = '$'+data.predictGross_poly;
                }else {
                    alert('Please choose a movie to be predicted first.');
                }
            };
        }
    });
}

function setDirector(directors, obj) {
    var temp = '';

    for(var key in directors) {
        var spli = key.indexOf("/");
        var name = key.substring(0, spli);
        var imageURL = key.substring(spli+1);
        temp += ''+
                '<div class="directorBox">' +
                    '<img src='+ imageURL +'" alt="">' +
                    '<h6>'+ name +'</h6>' +
                '</div>';
        var filmMap = directors[key];
        for(var key2 in filmMap) {
            temp += ''+
                    '<div class="infobox">' +
                        '<div class="filmbox">' +
                            '<img src='+ key2 +' alt="">' +
                            '<h6>$'+ filmMap[key2] +'</h6>' +
                        '</div>' +
                    '</div>';
        }
    }
    obj.innerHTML = temp;
}

function setStars(actors, obj) {
    var temp = '';

    for(var key3 in actors) {
        temp += ''+'<div class="director_info">';
        var spli = key3.indexOf("/");
        var name = key3.substring(0, spli);
        var imageURL = key3.substring(spli+1);

        temp += ''+
            '<div class="directorBox">' +
                '<img src='+ imageURL +' alt="">' +
                '<h6>'+ name +'</h6>' +
            '</div>';
        var filmMaps = actors[key3];
        for(var key4 in filmMaps) {
            temp += ''+
                '<div class="infobox">' +
                    '<div class="filmbox">' +
                        '<img src='+ key4 +' alt="">' +
                        '<h6>$'+ filmMaps[key4] +'</h6>' +
                    '</div>' +
                '</div>';
        }
        temp += ''+'</div>';
    }
    obj.innerHTML = temp;
}
function setPic(film, pic, name) {
    pic.onclick = function () {
        imdbfilmID = film.imdb_filmID;
        getAnalysis(film.imdb_filmID);
    };
    pic.src = film.posterURL;
    name.innerHTML = film.name;
}

$(window).load(function () {
    var add1 = '';
    var add2 = '';
    var temp1 = '';
    var temp2 = '';

    linear.onmouseover = function () {
        linear.title = 'An approach for modeling the relationship between ' +
            'a scalar dependent variable y and one or more explanatory variables ' +
            '(or independent variables) denoted X.';
    }
    lasso.onmouseover = function () {
        lasso.title = 'A regression analysis method that performs both variable ' +
            'selection and regularization in order to enhance the prediction ' +
            'accuracy and interpretability of the statistical model it produces.';
    }
    k_nearest.onmouseover = function () {
        k_nearest.title = 'In k-NN regression, the output is the property value for ' +
            'the object. This value is the average of the values of its k nearest neighbors.';
    }
    poly.onmouseover = function () {
        poly.title = 'A form of regression analysis in which the relationship between ' +
            'the independent variable x and the dependent variable y is modelled as an ' +
            'nth degree polynomial in x.';
    }
    





    $.ajax({
        type: 'post',
        url: '/film/getFilmByType.action',
        data: {
            filmType: 'ThisWeek'
        },
        success: function (data) {
            // $.each(data, function (i, item) {
                // temp1 = '' +
                //     '<div class="item">' +
                //         '<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">' +
                //             '<a href="" class=""><img src=' + item.posterURL +' class="img-responsive" alt="IMAGE " />' +
                //             '</a>' +
                //             '<div class="mid-1 agileits_w3layouts_mid_1_home">' +
                //                 '<div class="w3l-movie-text">' +
                //                 '<h6><a href="">' + item.name + '</a></h6>' +
                //                 '</div>' +
                //             '</div>' +
                //         '</div>' +
                //     '</div>';
                // add1 += temp1;
            // });
            // gallery.innerHTML = add1;
            setPic(data[0], thisweek1_pic, thisweek1_name);
            setPic(data[1], thisweek2_pic, thisweek2_name);
            setPic(data[2], thisweek3_pic, thisweek3_name);
            setPic(data[3], thisweek4_pic, thisweek4_name);
            setPic(data[4], thisweek5_pic, thisweek5_name);

        }
    });
    $.ajax({
        type: 'post',
        url: '/film/getFilmByType.action',
        data: {
            filmType: 'Coming'
        },
        success: function (data) {
            // $.each(data, function (i, item) {
                // temp2 = '' +
                //     '<div class="item">' +
                //     '<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">' +
                //     '<a href="" class=""><img src=' + item.posterURL +' class="img-responsive" alt="IMAGE " />' +
                //     '</a>' +
                //     '<div class="mid-1 agileits_w3layouts_mid_1_home">' +
                //     '<div class="w3l-movie-text">' +
                //     '<h6><a href="">' + item.name + '</a></h6>' +
                //     '</div>' +
                //     '</div>' +
                //     '</div>' +
                //     '</div>';
                // add2 += temp2;
            // });
            // gallery.innerHTML += add2;
            setPic(data[0], coming1_pic, coming1_name);
            setPic(data[1], coming2_pic, coming2_name);
            setPic(data[2], coming3_pic, coming3_name);
            setPic(data[3], coming4_pic, coming4_name);
            setPic(data[4], coming5_pic, coming5_name);
        }
    });
    $(document).ready(function() {
        $("#owl-demo").owlCarousel({

            autoPlay: 3000, //Set AutoPlay to 3 seconds
            autoPlay : true,
            navigation :true,
            items : 5,
            itemsDesktop : [640,4],
            itemsDesktopSmall : [414,3]

        });
    });
});