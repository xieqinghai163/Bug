
function  validateLoginForm() {
    var isFormValid = true;
    var strMessage = "";
    var username = document.getElementById("username").value;
    var pasword = document.getElementById("password").value;
    //--
    if (username == null || username == "") {
        strMessage += "You must fill in the username! \n";
        isFormValid = false;
    }
    if (pasword == null || pasword == "") {
        strMessage += "You must fill in the password! \n";
        isFormValid = false;
    }
    if (isFormValid) {
        //-- 
        document.getElementById("login_form").submit();
    } else {
        alert(strMessage);
    }
}

function submitForm() {
    var isFormValid = true;
    var strMessage = "";
    var f_name = document.getElementById("first_name").value;
    var l_name = document.getElementById("last_name").value;
    var phone = document.getElementById("phone").value;
    var email = document.getElementById("email").value;

    if (f_name == null || f_name == "") {
        strMessage += "You must fill in the first name! \n";
        isFormValid = false;
    }
    if (l_name == null || l_name == "") {
        strMessage += "You must fill in the last name!\n";
        isFormValid = false;
    }
    if (phone == null || phone == "") {
        strMessage += "You must fill in the phone!\n";
        isFormValid = false;
    }
    if (email == null || email == "") {
        strMessage += "You must fill in the email! \n";
        isFormValid = false;
    }

    if (isFormValid) {
        //-- 
        document.getElementById("cust_form").submit();
    } else {
        alert(strMessage);
    }
}
