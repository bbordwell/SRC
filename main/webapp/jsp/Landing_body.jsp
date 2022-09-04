<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style><%@include file="../WEB-INF/css/landing.css"%></style>
    <style>
        * {
            font-family: Glacial;
        }
    </style>
    <title>landing body</title>
</head>
<body>    
	<div class='container'>
		<div class='top'>
			<div class='overlay'>
				<h1 id='title'>PROVISO</h1>
					<div class="book-now">
						<a href="/Proviso/ProvisoServlet?action=DateSelection" id="book-now-button">Book Now</a>
					</div>
			</div>
		</div>
		<div class='description'>
				<h1>Discover The Beauty Within Nebraska</h1>
					<h2>From Chimney Rock to the downtown streets of Omaha.</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac sapien viverra, faucibus justo ut, gravida ipsum. Aenean a imperdiet sapien. Vivamus ac nunc eu nunc lacinia gravida. Vestibulum consequat eget arcu at viverra. Maecenas feugiat, ex vel auctor egestas, ligula eros elementum turpis, et eleifend sem odio non mi. Aenean cursus ac nunc id ullamcorper. Proin ligula nibh, eleifend sed mi vitae, vehicula tincidunt leo. Sed efficitur libero vitae egestas pellentesque.</p>
				<a href="/Proviso/ProvisoServlet?action=locations" id="see-locations-button">See Locations</a>
		</div>
		<div class='photos' id='photo-background'>
			<div class='photos_box'>
				<h1>Photos</h1>
				<div class='photo-nav'>
					<div class='photo_left'>
						<button class="arrow left" onclick="prev()"></button>
					</div>
					<div class='photo_middle'>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac sapien viverra, faucibus justo ut, gravida ipsum. Aenean a imperdiet sapien. Vivamus ac nunc eu nunc lacinia gravida. Vestibulum consequat eget arcu at viverra.  </p>
					</div>
					<div class='photo_right'>
						<button class="arrow right" onclick="next()"></button>
					</div>
				</div>
			</div>
		</div>
		<div class='events'>
			<div class='events-left'>
				<h1>Events</h1>
				<div class='events-nav'>
					<ul>
  					<li><button id="weddingbtn" onClick="eventConference()">Weddings</button></li>
  					<li id='li-middle'><button id="confbtn" onClick="eventConference()">Conferences</button></li>
  					<li><button id="gatheringsbtn" onClick="eventConference()">Special Gatherings</button></li>
				</ul>
				</div>
				<p id="event-paragraph">Wedding text goes here</p>
			</div>
			<div class='events-right'>
				<img class='event-picture' id='event-picture' alt='event picture' src="${pageContext.request.contextPath}/img/wedding.jpeg">
			</div>
		</div>
		<script>
			document.getElementById('weddingbtn').onclick = function() {
				document.getElementById('event-paragraph').innerHTML = 'Wedding text goes here';
				document.getElementById('event-picture').src = "${pageContext.request.contextPath}/img/wedding.jpeg";
			}
			document.getElementById('confbtn').onclick = function() {
				document.getElementById('event-paragraph').innerHTML = 'Conference text goes here';
				document.getElementById('event-picture').src = "${pageContext.request.contextPath}/img/conference.jpeg";
			}
			document.getElementById('gatheringsbtn').onclick = function() {
				document.getElementById('event-paragraph').innerHTML = 'Special Gatherings text goes here';
				document.getElementById('event-picture').src = "${pageContext.request.contextPath}/img/special_gathering.jpeg";
			}
			
			var slider_img = document.querySelector('.slider-img');
			var images = ['a.jpeg', 'b.jpeg', 'c.jpeg', 'd.jpeg'];
			var i = 0;
			
			function prev(){
				if(i <= 0) i = images.length;
				i--;
				return setImg();
			}
			
			function next() {
				if(i >= images.length -1) i = -1;
				i++;
				return setImg();
			}
			
			function setImg(){
				document.getElementById('photo-background').style.backgroundImage = 'url("${pageContext.request.contextPath}/img/' + images[i] + '")'; 
			}
		</script>
	</div>
</body>
</html>