<#assign menu = data.get('menu.yml')>

<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light border-bottom shadow">
    <div class="container">
        <a class="navbar-brand" href="${content.rootpath}">
            <img alt="Profile photo" width="50" height="33" src="${content.rootpath}headerFooter/profile.png">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}publications/index.html">Publications</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarLearn" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Learn
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarLearn">
                        <li><a class="dropdown-item" href="${content.rootpath}learn/documentation.html">Documentation</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/video.html">Videos</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/slides.html">Slides</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/training.html">Training</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/useCases/index.html">Use cases</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}compatibility/index.html">Compatibility</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/testimonialsAndCaseStudies.html">Testimonials and case studies</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}talks/index.html">Talks</a></li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}blog/">Blog</a></li>
                <#--  <li class="nav-item"><a class="nav-link" href="${content.rootpath}community/getHelp.html">Get help</a></li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}code/sourceCode.html">Source</a></li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}community/team.html">Team</a></li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}product/services.html">Services</a></li>  -->
            </ul>
            <ul class="navbar-nav">
                <li class="p-2"><a aria-label="Star on GitHub" class="github-button" data-show-count="true" href="${menu.github}">Star</a></li>
                <li class="p-1"><a href="${menu.twitter}" target="_blank" title="Follow on Twitter"><img alt="T" src="${content.rootpath}headerFooter/twitterLogo.png"></a></li>
                <li class="p-1"><a href="${menu.linkedin}" target="_blank" title="Follow on LinkedIn"><img alt="L" src="${content.rootpath}headerFooter/linkedInLogo.png"></a></li>
                <li class="p-1"><a href="${menu.facebook}" target="_blank" title="Follow on Facebook"><img alt="F" src="${content.rootpath}headerFooter/facebookLogo.png"></a></li>
                <li class="p-1"><a href="${menu.youtube}" target="_blank" title="YouTube channel"><img alt="YT" src="${content.rootpath}headerFooter/youtubeLogo.png" style="height: 16px"></a></li>
            </ul>
        </div>
    </div>
</nav>
