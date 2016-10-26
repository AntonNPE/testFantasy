<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link rel="stylesheet" href="css/style.css">

</head>
<body>

  <form method="post" action="Servlet" class="login">
    <p>
      <label for="login">Login:</label>
      <input type="text" name="login" id="login" value="admin">
    </p>
    <p>
      <label for="password">Password:</label>
      <input type="password" name="password" id="password" value="">
    </p>
    <p class="login-submit">
      <button type="submit" class="login-button">Enter</button>
    </p>
    <input type="hidden" name="cmd" value="logCommand"/>
    </form>
<form method="post" action="Servlet" class="reg">
    <p class="reg"><a href="Registration.jsp">Registration</a></p>
      <input type="hidden" name="cmd" value="RegCommand"/>
  </form>
</body>
</html>
