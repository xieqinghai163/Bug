<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script type="text/javascript" src="js/script.js">
        </script>
    </head>
    <body>
        <form id="create_user" action="create_new_user.php" method="post">
            <label> First name:</label>
            <input id ="first_name" name="first_name" value="" type="text"/>   
            <br/>
            <label> Last name:</label>
            <input id="last_name" name="last_name" value="" type="text"/>   
            <br/>
            <label> username:</label>
            <input id="username" name="username" value="" type="text"/> 
            <br/>
            <label> password:</label>
            <input id="password" name="password" value="" type="password"/> 
            <br/>
            <!--            <label> retype password:</label>
                        <input id="password" name="password" value="" type="password"/> 
                        <br/>-->
            <label> Email:</label>  
            <input id="email" name="email" value="" type="text"/>   
            <input id="action" name="action" value="create" type="hidden"/>   
            <br/>
            <br/>
            <input name="submit" value="Create User" type="submit"/>               

<!--<input type="button" onclick="submitForm()" value="submit"/>-->            
        </form>

    </body>
</html>
