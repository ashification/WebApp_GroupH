function formValidation(){
    var uid = document.getElementById('userName');
    var uemail = document.getElementById('email');
    var uname = document.getElementById('name');
    var umobile = document.getElementById('mobile');
    var upromotion = document.getElementById('promotion');
    var usubject = document.getElementById('subject');
    var umessage = document.getElementById('message');
    var upreferredContact = document.getElementById('preferredContact');
    var ucritical = document.getElementById('critical');
    var upreviousContact = document.getElementById('previousContact');

if(userid_validation(uid,6,12)){
    if(ValidateEmail(uemail)){
        if(allFLetter(uname)){
            if(allNumber(umobile)){
                if(promotionSelect(upromotion)){
                    if(preferredContact(upreferredContact)){
                        if(critical(ucritical)){
                            if(previousContact(upreviousContact)){
                                alert("Account successfully created.")
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
        alert("User Id should not be empty / length be between "+max+" to "+min);
        return false;
    }
    return true;
}

//Function for validating email
function ValidateEmail(uemail){
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(uemail.value.match(mailformat)){
        return true;
    }
    else{
        alert("You have entered an invalid email address!");
        return false;
    }
}

// Function for validating first name
function allFLetter(uname){ 
    var letters = /^[A-Za-z]+$/;
    if(uname.value.match(letters)){
        return true;
    }
    else{
        alert('First name must have alphabet characters only');
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

// Function for validating upreferredContact
function preferredContactSelect(upreferredContact){
    if(upreferredContact.value == "Default"){
        alert('Select your option from the promotional list');
        return false;
    }
    else{
        return true;
    }
}

// Function for validating ucritical
function criticalSelect(ucritical){
    if(ucritical.value == "Default"){
        alert('Select your option from the promotional list');
        return false;
    }
    else{
        return true;
    }
}

// Function for validating upreviousContact
function previousContactSelect(upreviousContact){
    if(upreviousContact.value == "Default"){
        alert('Select your option from the promotional list');
        return false;
    }
    else{
        return true;
    }
}

// Function for validating upromotion
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
        var uname = document.getElementById('name');
        var umobile = document.getElementById('mobile');
        var upromotion = document.getElementById('promotion');
        var usubject = document.getElementById('subject');
        var umessage = document.getElementById('message');
        var upreferredContact = document.getElementById('preferredContact');
        var ucritical = document.getElementById('critical');
        var upreviousContact = document.getElementById('previousContact');
        
        var table = document.getElementById("myTableData"); 
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
       
        // inserting the rows in the html
        row.insertCell(0).innerHTML= '<input type="reset" class="reset" value = "Delete" onClick="deleteRow(this)">';
        row.insertCell(1).innerHTML= uid.value;
        row.insertCell(2).innerHTML= uname.value;
        row.insertCell(3).innerHTML= uemail.value;
        row.insertCell(4).innerHTML= umobile.value;
        row.insertCell(5).innerHTML= upreferredContact.value;
        row.insertCell(6).innerHTML= upreviousContact.value;
        row.insertCell(6).innerHTML= ucritical.value;
    }
}

/* Function to delete a row of responses */
function deleteRow(obj) {
    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTableData");
    table.deleteRow(index);
    
}
