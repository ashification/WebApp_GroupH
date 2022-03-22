// Getting the selected queries and storing them in variables
const btn2 = document.querySelector('.btn2');
const dom2 = document.querySelector('.dom2');

//event listener toggles with queries when the event occurs 
icon.addEventListener('click', ()=>{
    dom2.classList.toggle('active')
})

//function to change classlist
function displayhtml(){
    var change = document.getElementById(dom2);
    change.classList.toggle(active)
}