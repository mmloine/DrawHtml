
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../js/jquery-3.1.0.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../css/base.css" />
    <script src="../js/scrollTop.js" type="text/javascript"></script>
    <script src="../js/jquery.albumSlider.min.js" type="text/javascript"></script>
</head>
<body>
<div class="albumSlider">
    <div style="position:relative;">
        <div class="fullview">
            <img src='${first}'/>
        </div>
        <div style="position:absolute;z-indent:2;top:0;font-size: 16px;width: 500px;" align="center"
             id="filename">
            ${name}
        </div>
    </div>
    <div class="slider">
        <div class="button movebackward" title="向上滚动"></div>
        <div class="imglistwrap"><ul class="imglist">
        <#list sexMap as path>
            <li><a  href='${path}' onclick="return false;" ><img src="${path}" /></a></li>
        </#list>
        </ul></div>
        <div class="button moveforward" title="向下滚动"></div>
    </div>
</div>

</body></html>