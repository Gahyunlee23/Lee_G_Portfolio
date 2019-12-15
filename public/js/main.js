(() => {
    let button = document.querySelector('#button');
    let burgerCon = document.querySelector('#burgerCon');

    let keyImg = document.querySelector('#keyImages'),
        keywords = document.querySelectorAll('.keyCon');

    function hamburgerMenu() {
        burgerCon.classList.toggle("slideToggle");
        button.classList.toggle("expaned");
    }

    let userButtons = document.querySelectorAll('.w-link'),
        lightBox = document.querySelector('.lightbox');

 
    function renderProject(work) {
        let tools = work.split(", ");
        return `<ul class="w-skills">
                    ${tools.map(item => `<li>${item}</li>`).join("")}
                </ul>` 
    }

    function parseProject(project) {
        let targetDiv = lightBox.querySelector('.lb-content');

        let projectDetails = `
            <img class="thumb-img" src="images/${project.Image}">
            <h3>Tools: </h3>
            ${renderProject(project.Tools)}<br>

            <h3>Category: </h3>
            <p>${project.Category}</p><br>
            <h3>Description: </h3>
            <p>${project.Description}</p><br>
            <h3>What I learned?</h3>
            <p>${project.Learned}</p>

        `;

        targetDiv.innerHTML = projectDetails;

        lightBox.classList.add('show-lb');
    }

    function getProjectInfo(event) {
        event.preventDefault();
        //debugger;

        let url = `/users/${this.getAttribute('href')}`;
            
 
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data)
              

                parseProject(data);
            })

            .catch(err => console.log(err));
    }


    function animateKeyImg() {
        let offset = 650,
            multiplier = this.dataset.offset

        console.log((offset+multiplier) + "px");

        keyImg.style.right = `${offset * multiplier + "px"}`;
    }

    keywords.forEach(keyword => keyword.addEventListener("click", animateKeyImg));

    userButtons.forEach(button => button.addEventListener("click", getProjectInfo));

    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });

    button.addEventListener("click", hamburgerMenu, false);

    aboutImg.addEventListener("mouseover", changeAboutImg);
    aboutImg.addEventListener("mouseout", returnImg);
    
})();