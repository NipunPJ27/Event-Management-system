//Homepage

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="icon" href="/images/logo_ch.png" />
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

      .hero {
        justify-content: center;
        align-items: center;
        color: white;
        display: flex;
        flex-direction: column;
        padding-top: 10%;
        padding-bottom: 10%;
        text-shadow: 0 0 5px black;
      }

      .hero_txt1 {
        font-size: xxx-large;
      }

      .hero_txt2 {
        font-size: x-large;
      }

      .hero_txt3 {
        margin-top: 5%;
        font-size: xxx-large;
      }

      .hero_txt4 {
        font-size: x-large;
      }

      .index_button {
        display: inline-block;
        padding: 10px 50px;
        background-color: #0ab22e;
        color: #fff;
        font-weight: bold;
        text-decoration: none;
        border: none;
        border-radius: 5px;
        box-shadow: 0 0 5px black;
      }

      .index_button:hover {
        background-color: rgb(11, 99, 10);
        box-shadow: 0 0 10px black;
      }

      section {
        width: 100%;
        margin: auto;
        padding: 20px;
        background: url(./images/musical_background.jpg);
        background-repeat: no-repeat;
        background-size: cover;
      }

      .hero_1 {
        width: 100%;
        margin: auto;
        background: url(./images/background_img2.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        flex-direction: row;
        flex-wrap: wrap;
        padding-top: 10%;
        padding-bottom: 10%;
        text-shadow: 0 0 5px black;
      }

      .hero_1_container {
        display: flex;
        align-items: center;
      }

      .hero_1_content {
        display: flex;
        align-items: center;
      }

      .hero_1_txt1 {
        color: white;
        margin-left: 20px;
      }

      #button_explore {
        margin-left: 35%;
        margin-top: 35px;
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
          <a href="index.jsp">Eventflow</a>
        </div>
        <ul>
          <li>
            <a href="gallery.jsp">Gallery</a>
          </li>
          <li>
            <a href="services.jsp">Services</a>
          </li>
          <li>
            <a href="login.jsp">Login or Sign up</a>
          </li>
        </ul>
      </nav>
    </header>

    <section class="hero">
      <h2 class="hero_txt1">Turning Your Dreams into Unforgettable Moments</h2>
      <p class="hero_txt2">
        Sri Lanka's largest event planning and services hub - sign up for make
        your dream event happen
      </p>
      <br />
      <a href="login.jsp" class="index_button">Login or Sign up</a>
      <h2 class="hero_txt3">Are you looking for work with us?</h2>
      <p class="hero_txt4">Join with us to make it easy with events</p>
      <br />
      <a href="businessSign.jsp" class="index_button">Join now</a>
    </section>

    <footer class="footer">
      <div class="footer-left">
        <ul class="page__links">
          <li><a href="/pages/abtus.html">About us</a></li>
          <li><a href="/pages/gallery.html">Gallery</a></li>
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
          <a href="index.jsp">Eventflow</a>
        </div>
        <p class="copyright">&copy; 2023 - All rights reserved</p>
      </div>
    </footer>
  </body>
</html>
    