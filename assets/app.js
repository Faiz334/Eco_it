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


function searchFormation() {
    const searchInput = document.getElementById('search-formation');
    const formationCards = document.querySelectorAll('.card1');
    const countElement = document.getElementById('formation-count');

    if (!searchInput || !formationCards.length) return;

    // Log pour debug
    console.log('Search initialized with:', {
        searchInput: searchInput,
        cardsCount: formationCards.length
    });

    searchInput.addEventListener('input', function() {
        const searchTerm = this.value.toLowerCase().trim();
        let visibleCount = 0;

        formationCards.forEach(card => {
            const title = card.querySelector('h3').textContent.toLowerCase();
            const description = card.querySelector('p')?.textContent.toLowerCase() || '';
            
            const isVisible = searchTerm === '' || 
                            title.includes(searchTerm) || 
                            description.includes(searchTerm);
            
            card.style.display = isVisible ? 'block' : 'none';
            if (isVisible) visibleCount++;
        });

        // Update formation count
        if (countElement) {
            countElement.textContent = `${visibleCount} formation${visibleCount > 1 ? 's' : ''}`;
        }
    });
}

// Initialize search when DOM is loaded
document.addEventListener('DOMContentLoaded', searchFormation);