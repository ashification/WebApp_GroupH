// Getting the selected queries and storing them in variables
const icon = document.querySelector('.icon');
const nav = document.querySelector('.nav-links');

//event listener toggles with queries when the event occurs 
icon.addEventListener('click', ()=>{
    icon.classList.toggle('active')
    nav.classList.toggle('active')
})