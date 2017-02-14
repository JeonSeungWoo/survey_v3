<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Image</title>

    <style type="text/css">

        #canvas {
            position:absolute;
            left: 0%;
            top: 0%;
            width: 100%;
            height: 100%;
            overflow: hidden;
            background-color: black;
        }
        #canvas img {
            position: absolute;
            background: #666;
            overflow: hidden;
            cursor: pointer;
            left: 100%;
            border-color: #000;
            border-style: solid;
            border-width: 1px;
        }
        #canvas span {
            position: absolute;
            color: #9C9;
            font-family: 'courier new', typewriter, matrix, monospace;
            font-size: 0px;
            white-space: nowrap;
            left: -1000px;
            background:#010;
            filter: alpha(opacity=90);
            opacity:0.9;
        }
    </style>
    <script type="text/javascript">
        var O    = [];
        var cont = 0;
        var N    = 0;
        var S    = 0;
        var img, spa;
        var s = {xm:0, ym:0, nx:0, ny:0, nw:0, nh:0, cx:0, cy:0, zoom:1};
        var c = {x:0, y:0, z:-40000, xt:0, yt:0, zt:0};

        //////////////////////////////////////////////////////////////////////////////

        function resize() {

            with(document.getElementById("canvas")){
                s.nx = offsetLeft;
                s.ny = offsetTop;
                s.nw = offsetWidth;
                s.nh = offsetHeight;
                s.zoom = s.nh / 700;
            }
        }
        onresize = resize;

        document.onmousemove = function(e){
            if(window.event) e=window.event;
            s.xm = (e.x || e.clientX) - s.nx - s.nw * .5;
            s.ym = (e.y || e.clientY) - s.ny - s.nh * .5;
        }

        function CObj(n){
            this.n = n;
            this.x = s.zoom * Math.random() * s.nw * 2 - s.nw;
            this.y = s.zoom * Math.random() * s.nh * 2 - s.nh;
            this.z = Math.round(n * (10000 / N));
            this.w = img[n].width;
            this.h = img[n].height;
            this.oxt = spa[n];
            this.txt = spa[n].innerHTML;
            this.oxt.innerHTML = "";
            this.obj = img[n];
            this.obj.parent = this;
            this.obj.onclick = new Function("this.parent.click();");
            this.obj.ondrag = new Function("return false;");
            this.oxt.style.zIndex = this.obj.style.zIndex = Math.round(1000000 - this.z);
            this.F = false;
            this.CF = 100;
            this.anim = function(){
                with(this){
                    var f = 700 + z - c.z;
                    if (f > 0) {
                        var d = 1000 / f;
                        var X = s.nw * .5 + ((x - c.x - s.cx) * d);
                        var Y = s.nh * .5 + ((y - c.y - s.cy) * d);
                        var W = d * w * s.zoom;
                        var H = d * h * s.zoom;
                        with(obj.style){
                            left   = Math.round(X - W * .5)+"px";
                            top    = Math.round(Y - H * .5)+"px";
                            width  = Math.round(W)+"px";
                            height = Math.round(H)+"px";
                        }
                        with(oxt.style){
                            visibility = (CF-- > 0 && Math.random() > .9)?"hidden":"visible";
                            left   = Math.round(X - W * .5)+"px";
                            top    = Math.round(Y + H * .5)+"px";
                            if((c.zt - c.z) < 20){
                                if(!F){
                                    F = true;
                                    CF = Math.random() * 200;
                                    fontSize = 1 + Math.round(d * 20 * s.zoom)+"px";
                                    var T = "";
                                    var tn = txt.length;
                                    for(var i=0; i<tn; i++){
                                        T+=txt.charAt(i);
                                        setTimeout('O['+n+'].oxt.innerHTML = "'+(T+"_")+'";', Math.round(f/5)+16*i);
                                    }
                                }
                            } else F=false, oxt.innerHTML="";
                        }
                    } else {
                        x = s.zoom * Math.random() * s.nw * 2 - s.nw;
                        y = s.zoom * Math.random() * s.nh * 2 - s.nh;
                        z += 10000;
                        oxt.style.zIndex = obj.style.zIndex = Math.round(1000000 - z);
                    }
                }
            }

            this.click = function(){
                with(this){
                    if(S!=this){
                        c.xt = x;
                        c.yt = y;
                        c.zt = z;
                        S = this;
                    } else {
                        S = 0;
                        c.zt += 1600;
                    }
                }
            }
        }

        function run(){
            s.cx += (s.xm - s.cx) / 10;
            s.cy += (s.ym - s.cy) / 10;
            c.x  += (c.xt - c.x)  / 20;
            c.y  += (c.yt - c.y)  / 20;
            c.z  += (c.zt - c.z)  / 20;
            for(var i=0; i<N; i++) O[i].anim();
            setTimeout("run();", 16);
        }

        onload = function() {
            resize();
            s.cx = s.nw / 2;
            s.cy = s.nh / 2;
            cont = document.getElementById("canvas");
            img = document.getElementById("canvas").getElementsByTagName("img");
            spa = document.getElementById("canvas").getElementsByTagName("span");
            N = img.length;
            for(var i=0; i<N; i++) O[i] = new CObj(i);
            run();
            O[0].click();

        }

    </script>
</head>

<body>

<div id="canvas">
    <img src="http://images.forwallpaper.com/files/images/c/ca0b/ca0bfd70/113187/space-stars-star-clusters-nebula.jpg"><span></span>
    <img src="http://www.dl-digital.com/images/Astronomy/Messier-Images/M42-Final-noise-cp3-1500pixels.jpg"><span></span>
    <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQtJVN_Z8T66xA04YZpxeBWwTySq61-5yFA_Yd-2TMbzLz_u6NB"><span></span>
    <img src="http://static.tumblr.com/b6bf53e28ec40e8ac1356513d0570085/iw6ylsx/airn6o24k/tumblr_static_dibxy8w5e28s0ocs8kowogkks.jpg"><span></span>
    <img src="http://en.es-static.us/upl/2016/07/orion-nebula-HAWK-1-infrared-2016-e1468249157566.jpg"><span></span>
    <img src="http://www.space.com/images/i/000/023/638/original/orion-nebula.jpg?interpolation=lanczos-none&fit=inside%7C660:*"><span></span>
    <img src="http://www.space.com/images/i/000/007/730/original/orion-nebula-eso.jpg?interpolation=lanczos-none&fit=inside%7C660:*"><span></span>
    <img src="http://www.infuture.ru/filemanager/orion-star-formation-1.jpg"><span></span>
    <img src="http://www.eso.org/public/archives/postcards/screen/postcard_0039.jpg"><span></span>
    <img src="https://dso-browser.com/img/dso-images/builtin/IrisNebula.jpg"><span></span>
    <img src="http://astronomynow.com/wp-content/uploads/2015/09/Orion_Nebula_1024x805.jpg"><span></span>
    <img src="http://chandra.harvard.edu/photo/2004/m87/m87_closeup.jpg"><span></span>
    <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRwoBHRfaIc9uoGv3LpNgNdEovAxfqkEJoEyC9EmljIK6sTJiZ0jA"><span></span>
    <img src="http://cfile204.uf.daum.net/image/14126E494DA9B7DC1A5000"><span></span>
    <img src="http://scienceon.hani.co.kr/files/attach/images/73/232/285/00CR7_ESO.jpg"><span></span>
    <img src="http://cfile214.uf.daum.net/image/1620C642515A36E621E1F3"><span></span>
    <img src="http://astro.kasi.re.kr/MenuImages/1-2-2-3.jpg"><span></span>
    <img src="http://pds13.egloos.com/pds/200907/27/93/f0046293_4a6d8926dea8a.jpg"><span></span>

</div>

</body>
</html>