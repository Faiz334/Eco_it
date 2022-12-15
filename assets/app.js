/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
import './styles/app.scss';
import jquery from 'jquery';

require('@fortawesome/fontawesome-free/css/all.min.css');
require('@fortawesome/fontawesome-free/js/all.js');



 
global.$ = global.jQuery = $;


import { Tooltip, Toast, Popover } from 'bootstrap';

// start the Stimulus application
import './bootstrap';


window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});
/* --recherche bar

const searchBar = document.querySelector("#searchBar");

searchBar.addEventListener("keyup", (e) => {
    const searchedLetters = e.target.value;
    const cards = document.querySelectorAll("card1");
    filterElements(searchedLetters, cards);
});

function filterElements(Letters, elements){

    if(Letters.length >2){
        for (let i = 0; i < elements.length; i++){
            if(elements[i].textContent.toLowerCase().includes(letters)){
                elements[i].style.display = "block";
            } else {
                elements[i].style.display = "none";
            }
        }
    }
}*/