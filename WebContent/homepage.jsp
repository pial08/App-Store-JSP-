<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Online App Store For all!!!</title>
<link href="css2/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/fav-icon.png" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!----webfonts---->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!----//webfonts---->
<!-- Global CSS for the page and tiles -->
<link rel="stylesheet" href="css2/main.css">
<!-- //Global CSS for the page and tiles -->
<!---start-click-drop-down-menu----->
<script src="js/jquery.min.js"></script>
<!----start-dropdown--->
<script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});
		</script>
<!----//End-dropdown--->
<!---//End-click-drop-down-menu----->
</head>




<% 	
	String app_name=(String)session.getAttribute("name");
	String url="index.html";
%>


<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "must-revalidate");
	response.setDateHeader("Expires",0);
%>

<%
	if(session.getAttribute("name")== null || session.getAttribute("name").equals(""))
	{
		response.sendRedirect("index.html");
	}
%>


























<body>
	<!---start-wrap---->
	<!---start-header---->
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="index.html"><img src="images/mainLogo.JPG"
					title="Online App Store For all!!!" /></a>
			</div>
			<div class="nav-icon">
				<a href="#" class="right_bt" id="activator"><span> </span> </a>
			</div>
			<div class="box" id="box">
				<div class="box_content">
					<div class="box_content_center">
						<div class="form_content">
							<div class="menu_box_list">
								<ul>
									<li><a href="#"><span>Home</span></a></li>
									<li><a href="#"><span>About</span></a></li>
									<li><a href="contact.html"><span>Contact</span></a></li>
									<li><a href="#"><span>Your Queries</span></a></li>
									<div class="clear"></div>
								</ul>
							</div>
							<a class="boxclose" id="boxclose"> <span> </span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="top-searchbar">
				<form action="SearchServletPath;" method="post" class="col-md-10">
					<input type="text" name="search" value="Search any app !!!" /><input
						type="submit" value="" />
				</form>
			</div>
			<div class="userinfo">
				<div class="user">
					<ul>
						<% String app_name1 = (String)session.getAttribute("name"); %>
						<li><a href=#><img src="images/user-pic.png"
								title="username" /><span> <%=app_name1 %>
							</span></a></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!---//End-header---->





















	<!--start-content-->
	<div class="content">
		<div class="wrap">
			<div id="main" role="main">


				<p>
					<br>
				</p>
				<div class="row text-left category-color">
					<h2>Android Apps</h2>
				</div>


				<ul id="tiles">

					<!-- These are our grid blocks -->
					<li onclick="location.href='game1.apk'; "><img
						src="images/app6.jpg" width="290" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
							<!--<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span></span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div> -->
						</div></li>

					<li onclick="location.href='game2.apk';"><img
						src="images/app1.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
							<!-- <div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div> -->
						</div></li>

					<li onclick="location.href='game3.apk';"><img
						src="images/app2.jpg" width="282" height="200">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
							<!-- <div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div> -->
						</div></li>


					<p>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</p>
					<div class="row text-left category-color">
						<h2>Windows Apps</h2>
					</div>


					<li onclick="location.href='game4.apk';"><img
						src="images/app3.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>
					<li onclick="location.href='game5.apk';"><img
						src="images/app4.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>
					<li onclick="location.href='game6.apk';"><img
						src="images/app5.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>


					<p>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</p>
					<div class="row text-left category-color">
						<h2>iOS Apps</h2>
					</div>

					<li onclick="location.href='game7.apk';"><img
						src="images/app7.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>
					<li onclick="location.href='game8.apk';"><img
						src="images/app8.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>
					<li onclick="location.href='game9.apk';"><img
						src="images/app9.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>


					<p>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</p>
					<div class="row text-left category-color">
						<h2>Linux Apps</h2>
					</div>


					<li onclick="location.href='game10.apk';"><img
						src="images/app10.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>
					<li onclick="location.href='game11.apk';"><img
						src="images/app11.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>
					<li onclick="location.href='game12.apk';"><img
						src="images/app12.jpg" width="282" height="174">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span><a href="#"><label> </label>Movies</a></span>
								<p>Lorem Ipsum is simply dummy text of the printing &
									typesetting industry.</p>
							</div>
						</div></li>


				</ul>
			</div>
		</div>
	</div>
	<!---//End-content---->















	<!----wookmark-scripts---->
	<script src="js/jquery.imagesloaded.js"></script>
	<script src="js/jquery.wookmark.js"></script>
	<script type="text/javascript">
		    (function ($){
		      var $tiles = $('#tiles'),
		          $handler = $('li', $tiles),
		          $main = $('#main'),
		          $window = $(window),
		          $document = $(document),
		          options = {
		            autoResize: true, // This will auto-update the layout when the browser window is resized.
		            container: $main, // Optional, used for some extra CSS styling
		            offset: 50, // Optional, the distance between grid items
		            itemWidth:350 // Optional, the width of a grid item
		          };
		      /**
		       * Reinitializes the wookmark handler after all images have loaded
		       */
		      function applyLayout() {
		        $tiles.imagesLoaded(function() {
		          // Destroy the old handler
		          if ($handler.wookmarkInstance) {
		            $handler.wookmarkInstance.clear();
		          }
		
		          // Create a new layout handler.
		          $handler = $('li', $tiles);
		          $handler.wookmark(options);
		        });
		      }
		      /**
		       * When scrolled all the way to the bottom, add more tiles
		       */
		      /*function onScroll() {
		        // Check if we're within 100 pixels of the bottom edge of the broser window.
		        var winHeight = window.innerHeight ? window.innerHeight : $window.height(), // iphone fix
		            closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 100);
		
		        if (closeToBottom) {
		          // Get the first then items from the grid, clone them, and add them to the bottom of the grid
		          var $items = $('li', $tiles),
		              $firstTen = $items.slice(0, 10);
		          $tiles.append($firstTen.clone());
		
		          applyLayout();
		        }
		      };*/
		
		      // Call the layout function for the first time
		      applyLayout();
		
		      // Capture scroll event.
		      //$window.bind('scroll.wookmark', onScroll);
		    })(jQuery);
		  </script>
	<!----//wookmark-scripts---->
	<!----start-footer--->
	<div class="footer">
		<p>
			Design by <a href="http://w3layouts.com/">W3layouts</a>
		</p>
	</div>
	<!----//End-footer--->
	<!---//End-wrap---->
</body>
</html>

