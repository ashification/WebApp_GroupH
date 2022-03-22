//Checks if the user passed all the validators and gives result
function formValidation(){
    var userid = document.getElementById('userid');
    var passid = document.getElementById('passid');
    if(userid_validation(userid)){
        if(passid_validation(passid)){
            alert("Log-in is successful!");
        }          
    }
    return false;
}

/* Function for validating username */
function userid_validation(userid){
    var uid_len = userid.value.length;
    if (uid_len == 0){
        alert("User Id should not be empty");
        return false;
    }
    return true;
}

/* Function for validating password */
function passid_validation(passid){
    var passid_len = passid.value.length;
    if (passid_len == 0){
        alert("Password should not be empty");
        return false;
    }
    return true;
}



