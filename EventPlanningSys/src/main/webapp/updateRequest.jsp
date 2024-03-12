//Event request update form here

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

      form {
    max-width: 400px;
    margin: 0 auto;
  }

  input[type="text"],
  input[type="email"],
  input[type="date"] {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
  }

  input[readonly] {
    background-color: #f2f2f2;
  }

  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
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

      .request_details {
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

        <%
        int e_id = Integer.parseInt(request.getParameter("eid"));
        String purpose = request.getParameter("purpose");
        String ename = request.getParameter("ename");
        String date = request.getParameter("ename");
        String budjet = request.getParameter("budjet");
        String attendance = request.getParameter("attendance");
        String contactNumber = request.getParameter("contactNumber");
        String email = request.getParameter("email");
      %>
  
    <form action="UpdateDataServlet" method="post">
      Event id :<input type="text" name="e_id" value="<%= e_id%>" readonly><br>
      Event purpose :<input type="text" name="purpose" value="<%= purpose%>" ><br>
      Email :<input type="email" name="email" value="<%= email%>" readonly><br>
      Event name :<input type="text" name="ename" value="<%= ename%>"><br>
      Budget :<input type="text" name="budjet" value="<%= budjet%>"><br>
      Expected Attendance :<input type="text" name="attendance" value="<%= attendance%>"><br>
      Contact Number :<input type="text" name="contactNumber" value="<%= contactNumber%>"><br>
      
      
      <input type="submit" name="submit" value="Update data"><br>
    </form>

</body>
        

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
