<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymleaf.org">
<c:set var="contextRoot" value="${pageContex.request.contextPath}" />
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dante's Note</title>
        <link href="/CSS/style.css"  rel="stylesheet">
        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <section class="showcase">
            <header>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#micon"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
					<a href=""><img class="logo"  src="/IMAGES/logo.PNG"></a>
                </div>
                <div class="collapse navbar-collapse" id="micon">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="">Home</a></li>
                    <li><a href="${contextRoot}/home">Dashboard</a></li>
                </ul>
                </div>
            </header>      
            <video src="/IMAGES/video.mp4" muted loop autoplay></video>
                    <div class="overlay"></div>
                    <div class="text">
                        <h2>HOW CAN</h2>
                        <h3>YOU TRACK YOUR EXPENSES</h3>
                        <p>Better Way to analyse each of your expenses by making note of it.</p>
                        <p>Take step to track your Money</p>
                        <a class="btn btn-first" href="">Login</a>
                        <a class="btn btn-second" href="${contextRoot}/register">Sign Up</a>
                    </div>
                    <ul class="social">
                        <li><a href="#"><img src="/IMAGES/insta.png" alt=""></a></li>
                        <li><a href="#"><img src="/IMAGES/twitter.png" alt=""></a></li>
                        <li><a href="#"><img src="/IMAGES/fb.png" alt=""></a></li>

                    </ul>
                    <div class="footer">
                        &copy;dantesnotes.com | Design By Sanket Turiley
                    </div>
    </section>
</body>
</html>