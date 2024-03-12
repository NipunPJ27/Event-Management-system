//Clients sign at this page

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
        margin: 0;
        padding: 0;
        background-color: whitesmoke;
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
      /*   
  .footer-right ul li {
    align-items: center;
  } */

      .footer-bottom p {
        margin: 10px 0;
      }

      .copyright {
        font-size: smaller;
      }

      /* ===========================
  loginSignup.html css
=========================== */

      .login {
        padding: 5%;
        background-color: white;
        display: flex;
        /* justify-content: center; */
      }

      .login_container {
        background-color: white;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 300px;
        margin: 0 auto;
      }

      label {
        margin-bottom: none;
      }

      .login_form label {
        text-align: left;
        display: block;
      }

      .login_form .remember-me {
        display: flex;
        align-items: center;
        margin: 0%;
      }

      .login_form input[type="email"],
      .login_form input[type="password"] {
        width: 100%;
        padding: 12px 20px;
        border: 1px solid #0ab22e;
      }

      .login_form p a {
        color: #0ab22e;
      }

      input[type="submit"] {
        margin-top: 5%;
        margin-bottom: 5%;
        background-color: #0ab22e;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
      }
      /* ================
signup.css
================ */

      .container_signup {
        display: flex;
        height: 70vh;
        overflow: hidden;
        align-items: center;
        justify-content: center;
      }

      .left-side,
      .right-side {
        flex: 1;
        height: 100%;
        padding: 20px;
      }

      .left-side {
        background-color: #f0f0f0;
      }

      .right-side {
        background-color: #ffffffdd;
      }

      .signup_sections {
        margin-top: 5%;
        width: 80%;
        max-width: 400px;
        margin: 0 auto;
      }

      .signup_sections form {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
      }

      .signup_sections h2 {
        text-align: center;
        font-size: xx-large;
      }

      .signup_sections p {
        text-align: center;
        font-size: larger;
      }

      .signup_sections a {
        text-decoration: none;
      }

      .signup_button {
        background-color: #0ab22e;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        display: block;
        margin: 0 auto;
        text-decoration: none;
      }

      /* 
====================
  businessSign.html
==================== */

      .signup_form_b {
        border: 1px solid #ccc;
        padding: 20px;
        border-radius: 5px;
        background-color: white;
        max-width: 800px;
        margin: 0 auto;
      }

      .signup_form_b h2 {
        text-align: center;
      }

      .signup_form_b form {
        text-align: left;
      }

      .signup_form_b label,
      .signup_form_b input,
      .signup_form_b select {
        display: block;
        margin-bottom: 10px;
        width: 100%;
      }

      .signup_form_b input[type="text"],
      .signup_form_b input[type="email"],
      .signup_form_b input[type="tel"],
      .signup_form_b select,
      .signup_form_b input[type="password"] {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%;
      }

      .signup_form_b input[type="submit"] {
        background-color: #0ab22e;
        color: #fff;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: block;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        width: 50%;
        align-items: center;
        margin: 0 auto;
      }

      /* 
========================
  createEvent.css
========================
 */

      .event_requenst {
        border: 1px solid #ccc;
        padding: 20px;
        border-radius: 5px;
        background-color: white;
        max-width: 800px;
        margin: 0 auto;
      }

      .event_requenst h2 {
        text-align: center;
      }

      .event_requenst form {
        text-align: left;
      }

      .event_requenst label,
      .event_requenst input,
      .event_requenst select {
        display: block;
        margin-bottom: 10px;
        width: 100%;
      }

      input[type="text"],
      input[type="date"],
      input[type="number"],
      input[type="tel"],
      input[type="email"],
      select {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%;
        margin-bottom: 10px;
      }

      input[type="radio"],
      input[type="checkbox"] {
        margin-right: 5px;
      }

      .event_requenst input[type="submit"] {
        background-color: #0ab22e;
        color: #fff;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: block;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        width: 50%;
        align-items: center;
        margin: 0 auto;
      }

      .event_requenst input[type="radio"],
      .event_requenst input[type="checkbox"] {
        margin-right: 5px;
        width: auto;
      }
    </style>
  </head>

  <body>
    <header class="main__head">
      <nav class="header">
        <div class="logo">
          <a href="/pages/index.html">
            <img
              src="/images/logo_ch.png"
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
        </ul>
      </nav>
    </header>

    <main>
      <div class="signup_form_b">
        <h2>Sign up</h2>
        <br />
        <form action="clientInsert" method="post">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" required />
          <br />

          <label for="email">Email</label>
          <input type="email" id="email" name="email" required />
          <br />
          
		  <label for="contact">Contact Number</label>
		  <input type="tel" id="contact" name="contactno" required pattern="[0-9]+" title="Please enter only numbers." />
		  <br />

          <label for="password">Password</label>
          <input type="password" id="password" name="password" required />
          <br />

          <input type="submit" value="Submit" />
        </form>
      </div>
    </main>

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
                  src="/images/facebook.png"
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
                  src="/images/instagram.png"
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
                  src="/images/twitter.png"
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
          <a href="index.jsp">
            <img
              src="/images/logo_ch.png"
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
