//Details display at here

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="Eventflow is an online platform designed to plan your events quickly and easily."
    />
    <meta name="robots" content="index, follow" />
    <title>Eventflow | The event planning platform</title>
    <link rel="icon" href="./images/logo_ch.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Caveat&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Caveat&family=Poppins:wght@300;400&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <style>
      /* Global styles */
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: "Caveat", cursive;
        font-family: "Poppins", sans-serif;
      }

      body {
        background-color: white;
        margin: 0;
        padding: 0;
      }

      .logo {
        margin-right: 2%;
        font-family: "Caveat", cursive;
        flex: 2 1 40rem;
        font-size: xxx-large;
        font-family: "Caveat", cursive;
        text-decoration: none;
        color: white;
      }

      .logo a {
        flex: 2 1 40rem;
        font-size: xxx-large;
        font-family: "Caveat", cursive;
        text-decoration: none;
        color: white;
      }

      .main__head {
        color: white;
        background-color: #0a332c;
        justify-content: space-between;
        padding: 15px;
        flex: 1 1 40rem;
        flex-wrap: wrap;
      }

      .header {
        width: 90%;
        margin: auto;
        display: flex;
        align-items: center;
      }

      nav {
        min-height: 20px;
        display: flex;
        width: 90%;
        margin: auto;
        align-items: center;
      }

      header nav ul {
        display: flex;
        list-style: none;
        flex: 1 1 40rem;
        justify-content: space-around;
        text-decoration: none;
        list-style: none;
        padding: 20px;
        flex-wrap: wrap;
      }

      .header ul li a {
        text-decoration: none;
        color: white;
      }

      @media screen and (max-width: 768px) {
        .hero_1_content {
          flex-direction: column;
        }

        .hero_1_img {
          order: 1;
        }

        .hero_1_txt2 {
          z-index: 1;
        }
      }

      .update_button {
        background-color: blue;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        font-weight: bold;
        text-align: center;
      }
      
      .delete_button {
        background-color: red;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        font-weight: bold;
        text-align: center;
      }

      section {
        width: 100%;
        margin: auto;
        padding: 20px;
        background: url(./images/clientpagebg.jpg);
        background-repeat: no-repeat;
        background-size: cover;
      }

      .table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        color: white;
        text-shadow: 0 0 5px black;
      }

      .footer {
        background-color: #0a332c;
        color: white;
        padding: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        bottom: 0;
        width: 100%;
      }

      .footer-left,
      .footer-right,
      .footer-bottom {
        flex: 1;
        text-align: left;
      }

      .footer-left ul,
      .footer-right ul {
        list-style: none;
        padding: 0;
      }

      .footer-left ul li,
      .footer-right ul li {
        margin: 5px 0;
      }

      .footer-left a,
      .footer-right a {
        color: white;
        text-decoration: none;
      }

      .footer-bottom p {
        margin: 10px 0;
      }

      .copyright {
        font-size: smaller;
      }
    </style>
  </head>

  <body>
    <header class="main__head">
      <nav class="header">
        <div class="logo">
          <a href="/pages/index.html">
            <img
              src="./images/logo_ch.png"
              alt="logo"
              width="50px"
              height="50px"
            />
          </a>
          <a href="/pages/index.html">Eventflow</a>
        </div>
        <ul>
          <li>
            <a href="/pages/gallery.html">Gallery</a>
          </li>
          <li>
            <a href="/pages/services.html">Services</a>
          </li>
          <li>
            <a href="/pages/dashboard.html">Account</a>
          </li>
        </ul>
      </nav>
    </header>

    <section class="hero">
      <h2 style="color: white; text-shadow: 0 0 5px black;">Manage Requests</h2>
      <br>
      <div class="request_details">

	<table>
	<c:forEach var="req" items="${events}" >
	
	<c:set var="event_id" value="${event_id}"/>
	<c:set var="eventPurpose" value="${purpose}"/>
	<c:set var="eventName" value="${event_name}"/>
	<c:set var="eventDate" value="${date}"/>
	<c:set var="budget" value="${budget}"/>
	<c:set var="attendance" value="${attendence}"/>
	<c:set var="contactNumber" value="${contactNo}"/>
	<c:set var="c_email" value="${email}"/>
	
	<tr>
		<th>Event ID</th>
		<th>Event purpose</th>
		<th>Event name</th>
		<th>Date</th>
		<th>Budjet</th>
		<th>Expected Attendance</th>
		<th>Contact Number</th>
		<th>Email</th>
		<th>Update</th>
		<th>Delete</th>
	</tr>
	
	<tr>
		<td>${req.event_id}</td>
		<td>${req.purpose}</td>
		<td>${req.event_name}</td>
		<td>${req.date}</td>
		<td>${req.budget}</td>
		<td>${req.attendence}</td>
		<td>${req.contactNo}</td>
		<td>${req.email}</td>
		<td>
		
		<c:url value="updateRequest.jsp" var="Requpdate">
		<c:param name="eid" value="${req.event_id}"/>
		<c:param name="purpose" value="${req.purpose}"/>
		<c:param name="ename" value="${req.event_name}"/>
		<c:param name="date" value="${req.date}"/>
		<c:param name="budjet" value="${req.budget}"/>
		<c:param name="attendance" value="${req.attendence}"/>
		<c:param name="contactNumber" value="${req.contactNo}"/>
		<c:param name="email" value="${req.email}"/>
		</c:url>
		
		<a href="${Requpdate }">
		<input type="button" name="update" class="update_button" value="Update request"> 
		</a>
		</td>
		<td>
		
		<c:url value="DeleteRequest.jsp" var="Reqdelete">
		<c:param name="eid" value="${req.event_id}"/>
		<c:param name="purpose" value="${req.purpose}"/>
		<c:param name="ename" value="${req.event_name}"/>
		<c:param name="date" value="${req.date}"/>
		<c:param name="budjet" value="${req.budget}"/>
		<c:param name="attendance" value="${req.attendence}"/>
		<c:param name="contactNumber" value="${req.contactNo}"/>
		<c:param name="email" value="${req.email}"/>
		</c:url>
		
		<a href="${Reqdelete }">
		<input type="button" name="delete" class="delete_button" value="Delete request"> 
		</a>
		</td>
	</tr>
	</c:forEach>
	</table>

	
</body>

      </div>
        

    <footer class="footer">
      <div class="footer-left">
        <ul class="page__links">
          <li><a href="/pages/abtus.html">About us</a></li>
          <li><a href="/pages/gallery.html">ele</a></li>
          <li><a href="#">Event guides</a></li>
          <li><a href="#">Latest news</a></li>
          <li><a href="#">Pricing & Terms</a></li>
        </ul>
      </div>
      <div class="footer-right">
        <ul class="social__links">
          <li>
            <a href="facebook.com">
              <span>
                <img
                  src="./images/facebook.png"
                  alt="facebook__logo"
                  width="35px"
                  height="35px"
                />
                facebook/Eventflow
              </span>
            </a>
          </li>
          <li>
            <a href="Instagram.com">
              <span>
                <img
                  src="./images/instagram.png"
                  alt="instagram__logo"
                  width="35px"
                  height="35px"
                />
                Instagram/Eventflow
              </span>
            </a>
          </li>
          <li>
            <a href="twitter.com">
              <span>
                <img
                  src="./images/twitter.png"
                  alt="twitter__logo"
                  width="35px"
                  height="35px"
                />
                Twitter/Eventflow
              </span>
            </a>
          </li>
        </ul>
      </div>
      <div class="footer-bottom">
        <div class="logo">
          <a href="/pages/index.html">
            <img
              src="./images/logo_ch.png"
              alt="logo"
              width="50px"
              height="50px"
            />
          </a>
          <a href="/pages/index.html">Eventflow</a>
        </div>
        <p class="copyright">&copy; 2023 - All rights reserved</p>
      </div>
    </footer>
  </body>
</html>
