<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>InstaRide - Home</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <link rel="icon" type="image/png" href="favicon.png">
</head>
<body>
	<?php
	/*
	// Create connection
	$con=mysqli_connect("localhost","root","Csci_6441","insta_ride");

	// Check connection
	if (mysqli_connect_errno($con))
	  {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	  }
	  $result = mysqli_query($con,"SELECT * FROM cars");

	  while($row = mysqli_fetch_array($result))
	    {
	    echo $row['VIN'] . " " . $row['Make'] . " " . $row['Model'] . " " . 
				$row['Year'] . " " . $row['Color'] . " " . $row['Type']
				 . " " . $row['Max_Pass'] . " " . $row['Notes'];
	    echo "<br>";
	    }
	  mysqli_close($con);
	  */
	?>
    <div id="header">
        <img style="width:300px;" src="InstaRideLogo.png" />
        <img id="social" style="width:300px;" src="social.png" />
        <div id="tabs">
            <div id="labels">
                <a class="tab" href="homepage.html">HOME</a> &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                <a class="tab" href="locations.html">LOCATIONS</a> &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                <a class="tab" href="aboutus.html">ABOUT US</a> &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                <a class="tab" href="how_this_works.html">HOW THIS WORKS</a> &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                <a class="tab" href="contactus.html">CONTACT US</a>
            </div>
            <div id="body">
                <img style="width:500px; position:relative; top:50px; left:90px;" src="us_map.png" />
                <h1 style="position: relative; top: 45px; left: 60px; color: #1B404E;">What is InstaRide?</h1>
                <p style="position: relative; top: 45px; left: 50px; color: #1B404E; font-family: Verdana, Arial, sans-serif; font-size:10pt;">
                    InstaRide is a company that offers cars and bicycles rentals for shorter
                    periods<br>starting form an hour long and could be extended tell forever. For
                    detailed info,<br>please check the HOW THIS WORKS tab.
                </p>
            </div>
            <div id="wrapper1">
                <div id="inputs">
                    <h1>Sign In</h1>
                    <form name="input" action="#" method="post">
                        Username: <br><input style="margin-top:5px;" type="text" name="Username" value=""><br>
                        Password: <br><input style="margin-top:5px; margin-bottom:5px;" type="password" name="password" value=""><br>
                        <input style=" position: relative; top:6px; left:0px; margin-right:5px; width:12%;" type="checkbox" name="rememberme" value="rememberme">Remember Me
                        <p style="width:200px; font-size:8pt;">
                            <a class="login" href="reset.html">Forgot username or password?</a><br>
                            New User? <a class="login" href="signup.html">Register Now!</a>
                        </p>
                        <div id="s"><input style="background-color: #1B404E; font-family: Verdana, Arial, sans-serif; font-size: 12pt; height: 35px; color: white; " type="submit" value="Login"></div>
                    </form>
                </div>
            </div>
            <div id="wrapper2">
                <img style="width:250px;" src="offer.png" />
            </div>
        </div>
        <div id="copyright">
            <br><br>
            HOME &nbsp;&nbsp;|&nbsp;&nbsp;
            LOCATIONS &nbsp;&nbsp;|&nbsp;&nbsp;
            ABOUT US &nbsp;&nbsp;|&nbsp;&nbsp;
            HOW THIS WORKS &nbsp;&nbsp;|&nbsp;&nbsp;
            CONTACT US<br><br>
            <img style="width:250px;" src="social2.png"/><br><br>
            Copyright&copy2013 InstaRide Inc. All rights Reserved.
        </div>
    </div>
</body>
</html>