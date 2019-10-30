<!DOCTYPE html>
<html lang="en">
<head>
<title>AirLines</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page1">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.html" class="nav1">Home</a></li>
          <li><a href="https://www.google.com/maps/place/Jagannatha+Puram,+Velachery,+Chennai,+Tamil+Nadu+600042/data=!4m2!3m1!1s0x3a525d889e42f497:0xb5e0af124f94294b?sa=X&ved=2ahUKEwit4cfW44TlAhUT3o8KHcb9DNMQ8gEwAHoECAoQAQ" class="nav2">Sitemap</a></li>
          <li><a href="contacts.html" class="nav3">Contact</a></li>
        </ul>
      </nav>
    </div>
    
  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="for_banners">
      <article class="col1">
        <div class="tabs">
          <div class="content">
            <div class="tab-content" id="Flight">
              
            
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.DriverManager" %>
<% String from = request.getParameter("from");
String type = request.getParameter("type");
String to = request.getParameter("to");


                try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1523:project","hr","hr");
                PreparedStatement st = conn.prepareStatement("Select count(p_id) as count from reservation where p_id in(select p_id from ticket where type=? ) and t_id in(select t_id from ticket where f_id in ( select f_id from flight where splace=? and destination=?))");
                st.setString(2,from);
                st.setString(3,to);
                st.setString(1,type);
                
                ResultSet rs = st.executeQuery();
                rs.next();
                %>
               <br> <b><center>
				  <b><center>number of passengers as requested is:<%=rs.getString("count")%> 
                </center></b></div>
                <div class="tab-content" id="Rental">
                <form id="form_3" action="#" method="post">
                  <div>
                    <div class="radio">
                      <div class="wrapper">
                        <input type="radio" name="name2" checked>
                        <span class="left">Avis</span>
                        <input type="radio" name="name2">
                        <span class="left">Europcar</span> </div>
                    </div>
                    <div class="row"> <span class="left">Rental location</span>
                      <input type="text" class="input">
                    </div>
                    <div class="row"> <span class="left">Pick-up</span>
                      <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                      <input type="text" class="input2" value="12:00"  onblur="if(this.value=='') this.value='12:00'" onFocus="if(this.value =='12:00' ) this.value=''">
                    </div>
                    <div class="row"> <span class="left">Return</span>
                      <input type="text" class="input1" value="10.05.2011"  onblur="if(this.value=='') this.value='10.05.2011'" onFocus="if(this.value =='10.05.2011' ) this.value=''">
                      <input type="text" class="input2" value="12:00"  onblur="if(this.value=='') this.value='12:00'" onFocus="if(this.value =='12:00' ) this.value=''">
                    </div>
                    <div class="row_select"> <span class="left">Miles &amp; More</span>
                      <select>
                        <option>no membership</option>
                      </select>
                    </div>
                    <div class="row_select">
                      <div class="pad_left1"> Country of residence<br>
                        <div class="select1">
                          <select>
                            <option>&nbsp;</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="wrapper"> <span class="right relative"><a href="#" class="button1"><strong>Search</strong></a></span> </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </article>
        
      </div>
      <div class="wrapper pad1">
        <article class="col1">
          <div class="box1">
            <h2 class="top">Offers of the Week</h2>
            <div class="pad"> <strong>From Bangalore</strong><br>
              <ul class="pad_bot1 list1">
                <li> <span class="right color1">AIR_EMIRATES</span> Chennai </li>
              </ul>
              <strong>From Chennai </strong><br>
              <ul class="pad_bot1 list1">
                <li> <span class="right color1">SPICE_JET</span> Mumbai </li>
                <li> <span class="right color1">AIR_NITHYA</span> Kolkata </li>
              </ul>
            </div>
          </div>
        </article>
        <article class="col2">
          <h2> <B> CLICK HERE TO SIGN UP </B> <span></span></h2>
          <div class="wrapper">
            <article class="cols">
              <figure></figure>
              <p class="pad_bot1"><strong></strong></p>
              <form method = "post" action = "one.jsp">
                <center>
                NAME : <input type = "text" name = "n"><br><br>
                PHONE : <input type = "text" name = "pn"><br><br>
                EMAILID : <input type = "text" name = "em"><br><br>
                PASSPORT ID : <input type = "text" name = "pid"><br><br> 
                </center> 
              </form>
              <p> </p>
            </article>
          </div>
          <center> <a href="index.html" class="button1"><strong>Sign up</strong></a> </article> </center>
      </div>
    </section>
    <!--content end-->
    <!--footer -->
    <footer>
      <div class="wrapper">
        <ul id="icons">
          <li><a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon4.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon5.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon6.jpg" alt=""></a></li>
        </ul>
        <div class="links">Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
        </div>
      </div>
    </footer>
    <!--footer end-->
  </div>
  <% }catch(Exception e){
out.println(e);

} %>
  <script type="text/javascript">Cufon.now();</script>
  <script type="text/javascript">
  $(document).ready(function () {
      tabs.init();
  });
  jQuery(document).ready(function ($) {
      $('#form_1, #form_2, #form_3').jqTransform({
          imgPath: 'jqtransformplugin/img/'
      });
  });
  $(window).load(function () {
      $('#slider').nivoSlider({
          effect: 'fade', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
          slices: 15,
          animSpeed: 500,
          pauseTime: 6000,
          startSlide: 0, //Set starting Slide (0 index)
          directionNav: false, //Next & Prev
          directionNavHide: false, //Only show on hover
          controlNav: false, //1,2,3...
          controlNavThumbs: false, //Use thumbnails for Control Nav
          controlNavThumbsFromRel: false, //Use image rel for thumbs
          controlNavThumbsSearch: '.jpg', //Replace this with...
          controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
          keyboardNav: true, //Use left & right arrows
          pauseOnHover: true, //Stop animation while hovering
          manualAdvance: false, //Force manual transitions
          captionOpacity: 1, //Universal caption opacity
          beforeChange: function () {},
          afterChange: function () {},
          slideshowEnd: function () {} //Triggers after all slides have been shown
      });
  });
  </script>
  </body>
  </html>