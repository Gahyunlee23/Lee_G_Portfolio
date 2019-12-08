(() => {
    let button = document.querySelector("#button");
    let burgerCon = document.querySelector("#burgerCon");
    let aboutImg = document.querySelector('.about-img');


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
            <h2>Category: </h2>
            <h3>${project.Category}</h3><br>
            <h3>Description: </h3>
            <h3>${project.Description}</h3><br>
            <h4>Skills: </h4>
            <!-- loop thru social media stuff here -->
            ${renderProject(project.Tools)}<br>
            <p>What I learned...</p>
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

    function changeAboutImg() {
        aboutImg.src = "images/aboutCasualGa.png";
    }

    function returnImg() { 
        aboutImg.src = "images/aboutGahyun.jpg";
    }

    userButtons.forEach(button => button.addEventListener("click", getProjectInfo));

    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });

    button.addEventListener("click", hamburgerMenu, false);

    aboutImg.addEventListener("mouseover", changeAboutImg);
    aboutImg.addEventListener("mouseout", returnImg);
    
})();