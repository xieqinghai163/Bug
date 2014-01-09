<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script type="text/javascript" src="js/script.js">
        </script>
    </head>
    <body>
        <form id="login_form" action="process_login.php" method="post">         
            <label> username:</label>
            <input id="username" name="username" value="" type="text"/> 
            <br/>
            <label> password:</label>
            <input id="password" name="password" value="" type="password"/> 
            <br/>
            <input  value="Login"  type="button" onclick="validateLoginForm()"/>               
        </form>
         
    </body>
</html>
