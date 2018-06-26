var imdbfilmID = '';
var analysis = '';

function getAnalysis(imdbid, predictBox) {
    $.ajax({
        type: 'post',
        url: '/predict/getAnalysis.action',
        data: imdbid,
        success: function (data) {
            analysis = data;
            // console.log(data);
            var predictChart = echarts.init(predictBox, 'infographic');
            var dateData = [];
            var clickData = [];
            for (var key in data.youtubeClickTimes) {
                dateData.push(key);
                clickData.push(data.youtubeClickTimes[key])
            }
            dateData = dateData.reverse();
            clickData = clickData.reverse();
            // console.log(dateData);
            // console.log(clickData);
            var option = {
                title: {
                    text: ''
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
                series: {
                    type: 'line',
                    name: 'Click Number',
                    // symbolSize: 6,
                    data: clickData
                }
            };
            predictChart.setOption(option);
        }
    });
}

var predict_boxs = document.getElementsByClassName('predictChartBox');
for (var i = 0; i < predict_boxs.length; i++) {
    console.log(predict_boxs[i].getAttribute('name'));
    getAnalysis(predict_boxs[i].getAttribute('name'), predict_boxs[i]);
}
