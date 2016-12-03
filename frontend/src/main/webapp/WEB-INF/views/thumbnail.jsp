<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script>
$(document).ready(function() {
    $('#myCarousel').carousel({
	interval: 10000
	})
    
    $('#myCarousel').on('slid.bs.carousel', function() {
    	//alert("slid");
	});
    
    
});
</script>
<style>
.container {
    margin-top: 20px;
}


.carousel-control.left,
.carousel-control.right {
	opacity: 1;
	filter: alpha(opacity=100);
	background-image: none;
	background-repeat: no-repeat;
	text-shadow: none;
}


.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right, 
.carousel-control .icon-prev, 
.carousel-control .icon-next {
	position: absolute;
	top: 45%;
	z-index: 5;
	display: inline-block;
}

.carousel-control .glyphicon-chevron-left,
.carousel-control .icon-prev {
	left: 0;
}

.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-next {
	right: 0;
}



.carousel-control.left span:hover,
.carousel-control.right span:hover {
	opacity: .7;
	filter: alpha(opacity=70);
}


.thumbnail {
    position: relative;
    padding: 0px;
    margin-bottom: 20px;
}

.thumbnail img {
    width: 100%;
}
</style>
<body>
<div class="container">
    <div class="col-md-12">

        <div class="well">
            <div id="myCarousel" class="carousel slide">
                
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="row">
                            <div class="col-sm-3"><a href="#x"><img  width="300" height "300" src="http://stat.homeshop18.com/homeshop18/images/productImages/843/lava-iris-250-dual-sim-android-mobile-phone-white-medium_7603ffe52ea40b3f8248805514b0db73.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://stat.homeshop18.com/homeshop18/images/productImages/126/micromax-canvas-turbo-a250-dual-sim-android-mobile-phone-medium_359d33ce0de323788f041e0b56f1e21c.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://stat.homeshop18.com/homeshop18/images/productImages/277/lava-iris-250-dual-sim-android-mobile-phone-black-medium_b8a924d5773155bde3ed4b8b429cd232.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://www.dealsupdate.in/wp-content/uploads/2013/09/Videocon-A22-Mobile-Phone.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                        </div>
                        <!--/row-->
                    </div>
                    <!--/item-->
                    <div class="item">
                        <div class="row">
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://stat.homeshop18.com/homeshop18/images/productImages/500/lava-x38-dual-sim-android-mobile-phone-medium_14933388c2a2295aa38713e552bb63cf.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://images.mobilefun.co.uk/graphics/300pixelp/sim-free-htc-one-m8-unlocked-32gb-glacial-silver-p44340-300.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://atelierdecrituredelamaisondulivre.t.a.f.unblog.fr/files/2013/11/apple-iphone-5-smartphone-gsm-umts-4g-1.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://i.ebayimg.com/00/s/MzAwWDMwMA==/z/mY0AAOSw7NNUIJnP/$_35.JPG?set_id=2" alt="Image" class="img-responsive"></a>
                            </div>
                        </div>
                        <!--/row-->
                    </div>
                    <!--/item-->
                    <div class="item">
                        <div class="row">
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://mundo.pccomponentes.com/wp-content/uploads/2015/06/iphone_6_16gb_gold_libre.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://ecx.images-amazon.com/images/I/51RQE1zHwfL._SY300_QL70_.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://www.skldintl.com/2.png" alt="Image" class="img-responsive"></a>
                            </div>
                            <div class="col-sm-3"><a href="#x"><img width="300" height "300" src="http://www.sastayphone.com/wp-content/uploads/2016/08/lenovo-smartphone-p70-front-1-1-300x300.jpg" alt="Image" class="img-responsive"></a>
                            </div>
                        </div>
                        <!--/row-->
                    </div>
					
                    <!--/item-->
                </div>
                <!--/carousel-inner--> 
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>

                <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
            <!--/myCarousel-->
        </div>
        <!--/well-->
    </div>
</div>
</body>
</html>