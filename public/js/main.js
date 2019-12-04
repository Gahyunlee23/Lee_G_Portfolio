(() => {
    let button = document.querySelector("#button");
    let burgerCon = document.querySelector("#burgerCon");

    function hamburgerMenu() {
        burgerCon.classList.toggle("slideToggle");
        button.classList.toggle("expaned");
    }

    button.addEventListener("click", hamburgerMenu, false);
    
})();