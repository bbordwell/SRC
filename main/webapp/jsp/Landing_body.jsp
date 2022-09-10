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
				<p>We have a few Hotel Proviso buildings in downtown Omaha for an amazing view of downtowns attractions along with activities that are a short distance away such as the Durham Museum, The Heartland Park of America with a massive water fountain that bursts with different colors when the sun sets, a view of the Missouri River and Bob Kerrey Pedestrian Bridge, or the Henry Doorley Zoo with the largest indoor desert in a glass dome. We also have some of our hotels in the western
				part of Nebraska for amazing views of Chimney Rock in Bayard, sand dunes, or visiting Fort Robinson State Park and Toadstool Geologic Park.</p>
				<a href="/Proviso/ProvisoServlet?action=locations" id="see-locations-button">See Locations</a>
		</div>
		<div class="red-box"></div>
		<div class='photos' id='photo-background'>
			<div class='photos_box'>
				<div class='photos-box-top'>
					<h1>Photos</h1>
				</div>
				<div class='photos-box-bottom'>
					<div class='photo-nav'>
						<div class='photo_left'>
							<button class="arrow left" onclick="prev()"></button>
						</div>
						<div class='photo_middle'>
							<p>Here are some photos showcasing the beauty that Proviso Hotel has to offer.  </p>
						</div>
						<div class='photo_right'>
							<button class="arrow right" onclick="next()"></button>
						</div>
					</div>	
				</div>
			</div>
		</div>
		<div class='events'>
			<div class='events-left'>
				<div class='events-top'>
					<h1>Events</h1>
				</div>
				<div class='events-middle'>
					<div class='events-nav'>
						<ul>
		  					<li><button id="weddingbtn" onClick="eventConference()">Weddings</button></li>
		  					<li id='li-middle'><button id="confbtn" onClick="eventConference()">Conferences</button></li>
		  					<li><button id="gatheringsbtn" onClick="eventConference()">Special Gatherings</button></li>
						</ul>
					</div>
				</div>
				<div class='events-bottom'>
					<p id="event-paragraph">For a price, you and your loved one can have a wedding at any one of our Hotel Proviso locations of your choice.</p>
				</div>
			</div>
			<div class='events-right'>
				<img class='event-picture' id='event-picture' alt='event picture' src="${pageContext.request.contextPath}/img/wedding.jpeg">
			</div>
		</div>
		<script>
			document.getElementById('weddingbtn').onclick = function() {
				document.getElementById('event-paragraph').innerHTML = 'For a price, you and your loved one can have a wedding at any one of our Hotel Proviso locations of your choice.';
				document.getElementById('event-picture').src = "${pageContext.request.contextPath}/img/wedding.jpeg";
			}
			document.getElementById('confbtn').onclick = function() {
				document.getElementById('event-paragraph').innerHTML = 'All of our Proviso Hotels offer an outstanding environment for your companies next conference. We have everything up to date along with an amazing staff to make sure everything goes as planned. Whether this is a time of celebration or all business, we have you covered.';
				document.getElementById('event-picture').src = "${pageContext.request.contextPath}/img/conference.jpeg";
			}
			document.getElementById('gatheringsbtn').onclick = function() {
				document.getElementById('event-paragraph').innerHTML = 'We realize that not every event is going to be either a wedding or business related. If you have a group that is looking for a gathering space, whether that is family coming together from across the country or your small businesses next venue, we have multiple rooms among our hotel that can be set to meet your needs. Get in contact with your events cordinator and we can make sure everything is customized to your expecatations. ';
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