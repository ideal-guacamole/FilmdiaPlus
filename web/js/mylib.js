/**
 * Created by Ferriswheel on 2017/5/7.
 * 常用的函数封装
 */
// /**
//  * 模拟JQuery
//  * @param v
//  * @returns {*}
//  */
// function $(v) {
//     if(typeof v === 'function'){
//         window.onload = v;
//     }
//     else if(typeof v === 'string'){
//         return document.getElementById(v);
//     }
//     else if(typeof v === 'object'){
//         return v;
//     }
//
// }
/**
 * 存在问题：
 * 不要获取复合样式，获取单一样式（不要用来做判断）
 * 不要有空格
 * 不要获取未设定的值
 * @param obj
 * @param attr
 * @returns {*}
 */
function getStyle(obj, attr) {
    if(obj.currentStyle){
        return obj.currentStyle[attr];
    }else{
        return getComputedStyle(obj,null)[attr];
    }
}
/**
 * 移动动画函数
 * @param obj       要移动的对象
 * @param direction 移动的方向
 * @param step      移动的步长
 * @param target    移动的目标
 * @param endFn     回调函数
 */
function doMove(obj,direction,step,target,endFn) {
    step = parseInt(getStyle(obj,direction))<target ? step: -step;

    clearInterval(obj.timer);
    obj.timer = setInterval(function () {
        var distance = parseInt(getStyle(obj,direction))+step;

        if((step>0 && distance>target)||(step<0 && distance<target)){
            distance = target;
        }
        obj.style[direction] = distance+'px';
        if(distance === target){
            clearInterval(obj.timer);
            endFn && endFn();
        }
    },30);
}
/**
 * 实现抖动效果
 * @param obj           抖动的对象
 * @param direction     抖动的方向：'top','left'
 * @param endFn         回调函数
 */
function shake(obj,direction,endFn) {
    if(!obj.shake) {
        var pos = parseInt(getStyle(obj, direction));
        var arr = [];
        var num = 0;
        for (var i = 10; i >= 0; i -= 2) {
            arr.push(i, -i);
        }
        arr.push(0);
        clearInterval(obj.shake);
        obj.shake = setInterval(function () {
            obj.style[direction] = pos + arr[num] + 'px';
            num++;
            if (num === arr.length) {
                clearInterval(obj.shake);
                obj.shake = null;
                endFn && endFn();
            }
        }, 50);
    }
}
/**
 * 渐隐效果函数
 * @param obj       渐隐的对象
 * @param step      渐隐步长
 * @param target    渐隐目标值
 * @param endFn     回调函数
 */
function doOpacity(obj, step, target, endFn) {
    step = parseFloat(getStyle(obj,'opacity'))<target ? step : -step;
    clearInterval(obj.oTimer);
    obj.oTimer = setInterval(function () {
        var newOpacity = parseFloat(getStyle(obj,'opacity'))+step;

        if((step>0 && newOpacity > target) || (step<0 && newOpacity<target)){
            newOpacity = target;
        }
        obj.style.opacity = newOpacity;
        if(newOpacity === target){
            clearInterval(obj.oTimer);
            endFn && endFn();
        }
    },30);
}

/**
 * ref:参数名称
 */
function getQueryString(ref)
{
    var url = window.location.href;
    var str = url.substr(url.indexOf('?') + 1);
    if (str.indexOf('&') != -1) {
        var arr = str.split('&');
        for (var i in arr) {
            if (arr[i].split('=')[0] == ref)
                return arr[i].split('=')[1];
        }
        return null;
    }
    else {
        return url.substr(url.indexOf('=') + 1)
    }
}

/**
 *  添加地址栏参数的方法
 *  url:网页地址
 *  ref:想添加的参数名
 *  value:参数值
 */
function setQueryString(url, ref, value)
{
    var str = "";
    if (url.indexOf('?') != -1)
        str = url.substr(url.indexOf('?') + 1);
    else
        return url + "?" + ref + "=" + value;
    var returnurl = "";
    var setparam = "";
    var arr;
    var modify = "0";
    if (str.indexOf('&') != -1) {
        arr = str.split('&');
        for (var i in arr) {
            if (arr[i].split('=')[0] == ref) {
                setparam = value;
                modify = "1";
            }
            else {
                setparam = arr[i].split('=')[1];
            }
            returnurl = returnurl + arr[i].split('=')[0] + "=" + setparam + "&";
        }

        returnurl = returnurl.substr(0, returnurl.length - 1);

        if (modify == "0")
            if (returnurl == str)
                returnurl = returnurl + "&" + ref + "=" + value;
    }
    else {
        if (str.indexOf('=') != -1) {
            arr = str.split('=');

            if (arr[0] == ref) {
                setparam = value;
                modify = "1";
            }
            else {
                setparam = arr[1];
            }
            returnurl = arr[0] + "=" + setparam;
            if (modify == "0")
                if (returnurl == str)
                    returnurl = returnurl + "&" + ref + "=" + value;
        }
        else
            returnurl = ref + "=" + value;
    }
    return url.substr(0, url.indexOf('?')) + "?" + returnurl;
}