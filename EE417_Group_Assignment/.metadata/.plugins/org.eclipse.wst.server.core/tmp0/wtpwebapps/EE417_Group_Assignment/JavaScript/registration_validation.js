//function obtains all the values from the submission box and passes them through a nested
//if loop which either returns a succesful submission or a failed submission
function formValidation(){
    var uid = document.getElementById('userName');
    var uemail = document.getElementById('email');
    var upass = document.getElementById('password');
    var upass2 = document.getElementById('password2');
    var ufname = document.getElementById('fname');
    var ulname = document.getElementById('lname');
    var udob = document.getElementById('dob');
    var umobile = document.getElementById('mobile');
    var ucountry = document.getElementById('country');
    var ugender = document.getElementById('gender');
    var upromotion = document.getElementById('promotion');
//nested if loop for all the validators
if(userid_validation(uid,6,12)){
    if(ValidateEmail(uemail)){
        if(passid_validation(upass,6,15)){
            if(matchPassword(upass,upass2)){
                if(allFLetter(ufname)){
                    if(allLLetter(ulname)){
                        if(allNumber(umobile)){
                            if(dob_validation(udob)){
                                if(countrySelect(ucountry)){
                                    if(genderSelect(ugender)){
                                        if(promotionSelect(upromotion)){
                                            alert("Account successfully created.")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } 
        }
    }
}
    return false;
}

// Function for validating username
function userid_validation(uid,max,min){
    var uid_len = uid.value.length;
    if (uid_len == 0 || uid_len >= min || uid_len < max){
        alert("User ID must be between "+max+" to "+min);
        return false;
    }
    return true;
}

//Function for validating email
function ValidateEmail(uemail){
    var mailformat = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    if(uemail.value.match(mailformat)){
        return true;
    }
    else{
        alert("Invalid Email Address");
        return false;
    }
}

// Function for validating password 
function passid_validation(upass,max,min){
    var passid_len = upass.value.length;
    if (passid_len == 0 ||passid_len >= min || passid_len < max){
        alert("Password must be between "+mx+" to "+min);
        return false;
    }
    return true;
}

// Function for confirming matching passwords
function matchPassword(upass, upass2) {  
    if(upass2.value.match(upass)) {   
        return true;   
    } 
    else {  
        alert("Password did not match"); 
        return false; 
    }  
}

// Function for validating first name
function allFLetter(ufname){ 
    var letters = /^[A-Za-z]+$/;
    if(ufname.value.match(letters)){
        return true;
    }
    else{
        alert('First name must have alphabet characters only');
        return false;
    }
}

// Function for validating last name
function allLLetter(ulname)
{ 
    var letters = /^[A-Za-z]+$/;
    if(ulname.value.match(letters)){
        return true;
    }
    else{
        alert('Last Name must have alphabet characters only');
        return false;
    }
}

// Function for validating mobile number
function allNumber(umobile){ 
    var numbers = /^[0-9]+$/;
    if(umobile.value.match(numbers)){
        return true;
    }
    else{
        alert('Mobile number must have a minimum of 7 numbers');
        return false;
    }
}

// Function for validating dob
function dob_validation(udob){ 
    if(!udob.value){
        alert('Please enter a date of birth.');
        return false;
    }
    else{
        return true;
    }
}

// Function for validating country
function countrySelect(ucountry){
    if(ucountry.value == "Default"){
        alert('Select your Country from the list');
        return false;
    }
    else{
        return true;
    }
}

// Function for validating Gender
function genderSelect(ugender){
    if(ugender.value == "Default"){
        alert('Select your Gender from the list');
        return false;
    }
    else{
        return true;
    }
}

// Function for validating promotion
function promotionSelect(upromotion){
    if(upromotion.value == "Default"){
        alert('Select your option from the promotional list');
        return false;
    }
    else{
        return true;
    }
}

/*---Toggeling the class to display contents---*/
function tableOfContents(){
    var tableid = document.getElementById("content");
    tableid.classList.toggle("active");
}

function addRow(){
    // performing validation check
    if(formValidation()){
        // storing the values in local variables
        var uid = document.getElementById('userName');
        var uemail = document.getElementById('email');
        var upass = document.getElementById('password');
        var upass2 = document.getElementById('password2');
        var ufname = document.getElementById('fname');
        var ulname = document.getElementById('lname');
        var udob = document.getElementById('dob');
        var umobile = document.getElementById('mobile');
        var ucountry = document.getElementById('country');
        var ugender = document.getElementById('gender');
        var upromotion = document.getElementById('promotion');
        
        var table = document.getElementById("myTableData"); 
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
       
        // inserting the rows in the html
        row.insertCell(0).innerHTML= '<input type="reset" class="reset" value = "Delete" onClick="deleteRow(this)">';
        row.insertCell(1).innerHTML= uid.value;
        row.insertCell(2).innerHTML= upass.value;
        row.insertCell(3).innerHTML= uemail.value;
        row.insertCell(4).innerHTML= umobile.value;
    }
}

/* Function to delete a row of responses */
function deleteRow(obj) {
    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTableData");
    table.deleteRow(index);
    
}
