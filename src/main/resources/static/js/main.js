var KE;
KindEditor.ready(function (K) {
    KE = K.create('#content', {
        allowFileManager: true, //浏览图片空间
        filterMode: false, //HTML特殊代码过滤
        afterBlur: function () { this.sync(); }, //编辑器失去焦点(blur)时执行的回调函数（将编辑器的HTML数据同步到textarea）
        afterUpload: function (url, data, name) { //上传文件后执行的回调函数，必须为3个参数
            if (name == "image" || name == "multiimage") { //单个和批量上传图片时
                var img = new Image(); img.src = url;
                img.onload = function () { //图片必须加载完成才能获取尺寸
                    if (img.width > 100) {
                        KE.html(KE.html().replace('<img src="' + url + '" width="100" height="100"/>', '<img src="' + url + '" width="100" height="100px"/>'))
                        //KE.html(KE.html().replace('<img src="' + url + '" width="300"/>', '<img src="' + url + '" width="300"/>'))
                    }
                }
            }
        }
    });
    KindEditor.create('#Contents', { allowImageUpload: false, resizeType: 1, width: "600px", height: "300px" });
});