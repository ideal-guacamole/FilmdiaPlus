var imdbfilmID = '';
var analysis = [];

function getAnalysis(imdbid) {
    $.ajax({
        type: 'post',
        url: '/predict/getAnalysis.action',
        data: imdbid,
        success: function (data) {
            analysis.push(data);
        }
    });
}

function initChart(i) {
    var predictBox = predict_boxs[i];
    var predictChart = echarts.init(predictBox);
    var dateData = [];
    var clickData = [];
    var data = analysis[i];
    console.log(analysis[i]);
    for (var key in data.youtubeClickTimes) {
        dateData.push(key);
        clickData.push(data.youtubeClickTimes[key]);
    }
    dateData = dateData.reverse();
    clickData = clickData.reverse();
    // console.log(dateData);
    // console.log(clickData);
    var option = {
        tooltip: {
            trigger: 'axis',
            formatter: "Date: {b}<br/> Click Number: {c}"
        },
        xAxis: {
            type: 'category',
            name: 'Date',
            boundryGap:false,
            axisTick: {
                alignWithLabel: true
            },
            data: dateData
        },
        yAxis: {
            type: 'value',
            name: 'Clicks',
            scale: true,
            axisTick:{
                show:false
            },
            axisLabel:{
                formatter:function (value,index) {
                    var divided = value/1000000;
                    var trans = '';
                    if (divided<1){
                        trans+=divided.toFixed(2);
                    }
                    else {
                        trans+=divided.toFixed(1);
                    }
                    return trans+'M';
                }
            }
        },
        legend:{
            padding:[1,5,1,5],
            bottom:'4%',
        },
        series: {
            type: 'line',
            name: 'Click Number',
            areaStyle:{},
            // symbolSize: 6,
            data: clickData
        }
    };
    predictChart.setOption(option);
}
var predict_boxs = document.getElementsByClassName('predictChartBox');
for (var i = 0; i < predict_boxs.length; i++) {
    console.log(predict_boxs[i].getAttribute('name'));
    getAnalysis(predict_boxs[i].getAttribute('name'));
}
