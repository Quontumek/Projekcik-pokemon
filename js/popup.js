const elementToHover = document.getElementsByClassName('elementToHover');
const elementToPopup = document.getElementsByClassName('elementToPopup');
for (var i = 0; i < elementToHover.length; i++) {
    (function(i) {
        elementToHover[i].addEventListener('mouseenter', () => {
              elementToPopup[i].style.display = 'block';
        });

        elementToHover[i].addEventListener('mouseleave', () => {
                elementToPopup[i].style.display = 'none';
        });
    })(i);
}
