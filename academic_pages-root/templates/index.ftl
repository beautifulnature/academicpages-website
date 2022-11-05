<#--  <#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout></@layout>

<#macro layout>
    <@parent.layout
            title="The fast, Open Source and easy-to-use solver"
            description="Solve any constraint optimization problem easily, including the Vehicle Routing Problem, Employee Rostering, Maintenance Scheduling and many others."
            uri=""
            googleWebmasterToolsVerification=true>
        <div class="row">
            <div class="col-md-7">
                <h1>Academic Pages with JBake and Antora (with inspiration from Optaplanner website)</h1>
                <p class="lead">academicpages is a ready-to-fork GitHub Pages template for academic personal websites</p>
                <p>This is the front page of a website that is powered by the academicpages template and hosted on GitHub pages. 
                GitHub pages is a free service in which websites are built and hosted from code and data stored in a GitHub repository, automatically updating when a new commit is made to the respository. 
                This template was forked from the Optaplanner Theme created by Optaplanner team, and then extended to support the kinds of content that academics have: publications, talks, teaching, a portfolio, blog posts, and a dynamically-generated CV. 
                You can fork this repository right now, modify the configuration and markdown files, add your own PDFs and other content, and have your own site for free, with no ads!</p>
                <div class="d-flex justify-content-center" style="width: auto;">
                    <@macros.videoCard youtubeId="bIvt9z-zVHo" long=false/>
                </div>
            </div>
            <div class="col-md-5">
                <@macros.tryItButton/>
                <@macros.getStartedButton/>
            </div>
        </div>

        <div class="mb-5">
            <h2 class="mb-2">A data-driven personal website</h2>
            <p>Like many other GitHub Pages templates, academicpages makes you separate the website’s content from its form. 
            The content & metadata of your website are in structured asciidoc files, while various other files constitute the theme, specifying how to transform that content & metadata into HTML pages. 
            You keep these various asciidoc (.adoc), YAML (.yml), HTML, and CSS files in a public GitHub repository. 
            Each time you commit and push an update to the repository, the GitHub pages service creates static HTML pages based on these files, which are hosted on GitHub’s servers free of charge.</p>
            <br/>
            <p>Many of the features of dynamic content management systems (like Wordpress) can be achieved in this fashion, using a fraction of the computational resources and with far less vulnerability to hacking and DDoSing. 
            You can also modify the theme to your heart’s content without touching the content of your site. 
            If you get to a point where you’ve broken something in HTML/CSS beyond repair, your asciidoc files describing your talks, publications, etc. are safe. 
            You can rollback the changes or even delete the repository and start over – just be sure to save the asciidoc files! 
            Finally, you can also write scripts that process the structured data on the site, such as https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.ipynb[this one] that analyzes metadata in pages about talks to display https://academicpages.github.io/talkmap.html[a map of every location you’ve given a talk].
            </p>
            <@macros.useCaseCards/>
        </div>

        <div class="row mb-4">
            <div class="col-md-6">
                <h2>Modern mathematical optimization</h2>
                <p>OptaPlanner is <strong>a lightweight, embeddable planning engine</strong>.
                    It enables everyday programmers to solve optimization problems efficiently.
                    Constraints apply on plain domain objects and can call existing code.
                    It is Object Oriented Programming (OOP) and Functional Programming (FP) friendly.
                    There’s no need to input constraints as mathematical equations.</p>
                <span>OptaPlanner supports</span>
                <ul>
                    <li><b>Continuous planning</b> to weekly publish the schedule, 3 weeks before execution</li>
                    <li><b>Non-disruptive replanning</b> for changes to an already published schedule</li>
                    <li><b>Real-time planning</b> to react on real-time disruptions in the plan within milliseconds</li>
                    <li><b>Overconstrained planning</b> when there are too few resources to cover all the work</li>
                    <li><b>Pinning</b> so the user is still in control over the schedule</li>
                </ul>
                <p>Under the hood, OptaPlanner combines sophisticated Artificial Intelligence optimization algorithms
                    (such as Tabu Search, Simulated Annealing, Late Acceptance and other metaheuristics)
                    with very efficient score calculation and other state-of-the-art constraint solving techniques
                    for NP-complete or NP-hard problems.</p>
            </div>
            <div class="col-md-6">
                <h2>Compatibility</h2>
                <span>OptaPlanner works directly from:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/java.html">Java<i class="fab fa-java ms-1"></i></a></li>
                    <li><a href="${content.rootpath}compatibility/kotlin.html">Kotlin</a></li>
                    <li><a href="${content.rootpath}compatibility/scala.html">Scala</a></li>
                    <li><a href="${content.rootpath}compatibility/python.html">Python<i class="fab fa-python ms-1"></i> (experimental)</a></li>
                </ul>
                <span>OptaPlanner integrates seamlessly with:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/quarkus.html">Quarkus</a></li>
                    <li><a href="${content.rootpath}compatibility/springBoot.html">Spring Boot</a></li>
                </ul>
                <span>OptaPlanner runs on:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/kubernetes-openshift.html">Kubernetes and OpenShift</a></li>
                    <li>All major clouds</li>
                </ul>
                <p>OptaPlanner is <a href="${content.rootpath}code/license.html">open source software</a>,
                    released under <a href="${content.rootpath}code/license.html">the Apache License</a>.</p>
            </div>
        </div>

        <div class="mb-4">
            <h2>Code example</h2>
            <div class="row">
                <div class="paragraph">
                    <p>To optimize a problem from Java™ code, add the <code>optaplanner-core</code> jar and call <code>Solver.solve()</code>:</p>
                </div>
                <div class="listingblock">
                    <div class="content">
                        <pre class="highlight"><code class="language-java" data-lang="java">SolverFactory&lt;MyRoster&gt; factory = SolverFactory.create(...);&#x000A;&#x000A;// My domain specific class as input&#x000A;MyRoster problem = ...;&#x000A;&#x000A;Solver&lt;MyRoster&gt; solver = factory.buildSolver();&#x000A;// My domain specific class as output&#x000A;MyRoster solution = solver.solve(problem);&#x000A;&#x000A;for (MyShift shift : solution.getShifts()) {&#x000A;    // Each shift is now assigned to an employee&#x000A;    assertNotNull(shift.getEmployee());&#x000A;}</code></pre>
                    </div>
                </div>
                <div class="paragraph">
                    <p><a href="https://github.com/kiegroup/optaplanner-quickstarts/tree/stable/hello-world#readme"><i class="fab fa-github me-1 text-black"></i>Try the hello world application.</a></p>
                </div>
            </div>
        </div>
        <div class="mb-4">
            <h2>About</h2>
            <div class="row">
                <div class="paragraph">
                    <p>Hi! I’m Stuart, an Assistant Professor at the University of California, San Diego in the Department of Communication and the Halıcıoğlu Data Science Institute. 
                    I’m an interpretive social scientist by training with a background in the humanities, but I have just enough expertise in computer science and data science to make trouble. 
                    My research, teaching, and broader service are all grounded in the idea that science and technology are inherently social activities, which are directed, operated, and maintained in certain ways (and not in other ways), by people in and outside of institutions.</p>
                </div>
            </div>
        </div>
        <div class="mb-4">
            <h2>My work and research</h2>
            <div class="row">
                <div class="paragraph">
                    <p>I use qualitative, quantitative, and computational methods to holistically investigate socio-technical systems of technology and knowledge production. 
                    I have a particular focus on decentralized communities and institutions, such as open source software, scientific research, peer production platforms (like Wikipedia), and social media sites. 
                    Most of my previous work has focused on Wikipedia, where I’ve studied the people and algorithms that produce and maintain an open encyclopedia. 
                    I’ve also studied scientific research networks and projects, including the Long-Term Ecological Research Network, the Open Science Grid, and the Moore-Sloan Data Science Environments. 
                    I study topics including newcomer socialization, cooperation and conflict, community governance, specialization and professionalization, information verification and quality control, hackathons and community workshops, the roles of support staff and technicians, bias and discrimination, and diversity and inclusion. 
                    I also often focus on how these issues all intersect with and are embedded in the design of software and automated systems.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <@macros.latestReleases/>
                <@macros.servicesOffer/>
                <@macros.latestEvents/>
            </div>
            <div class="col-md-4">
                <@macros.latestBlogPosts/>
            </div>
            <div class="col-md-4">
                <@macros.latestVideos/>
            </div>
        </div>
    </@parent.layout>
</#macro>  -->
<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout></@layout>

<#macro layout>
    <@parent.layout
            title="The fast, Open Source and easy-to-use solver"
            description="Solve any constraint optimization problem easily, including the Vehicle Routing Problem, Employee Rostering, Maintenance Scheduling and many others."
            uri=""
            googleWebmasterToolsVerification=true>
        <div class="row">
            <div class="col-md-7">
                <h1>Academic Pages with JBake and Antora (with inspiration from Optaplanner website)</h1>
                <p class="lead">academicpages is a ready-to-fork GitHub Pages template for academic personal websites</p>
                <div class="d-flex justify-content-center" style="width: auto;">
                    <@macros.videoCard youtubeId="bIvt9z-zVHo" long=false/>
                </div>
                <p>This is the front page of a website that is powered by the academicpages template and hosted on GitHub pages. 
                GitHub pages is a free service in which websites are built and hosted from code and data stored in a GitHub repository, automatically updating when a new commit is made to the respository. 
                This template was forked from the Optaplanner Theme created by Optaplanner team, and then extended to support the kinds of content that academics have: publications, talks, teaching, a portfolio, blog posts, and a dynamically-generated CV. 
                You can fork this repository right now, modify the configuration and markdown files, add your own PDFs and other content, and have your own site for free, with no ads!</p>
            </div>
            <div class="col-md-5">
                <@macros.tryItButton/>
                <@macros.getStartedButton/>
            </div>
        </div>

        <div class="mb-5">
            <h2 class="mb-2">A data-driven personal website</h2>
            <p>Like many other GitHub Pages templates, academicpages makes you separate the website’s content from its form. 
            The content & metadata of your website are in structured asciidoc files, while various other files constitute the theme, specifying how to transform that content & metadata into HTML pages. 
            You keep these various asciidoc (.adoc), YAML (.yml), HTML, and CSS files in a public GitHub repository. 
            Each time you commit and push an update to the repository, the GitHub pages service creates static HTML pages based on these files, which are hosted on GitHub’s servers free of charge.</p>
            <br/>
            <p>Many of the features of dynamic content management systems (like Wordpress) can be achieved in this fashion, using a fraction of the computational resources and with far less vulnerability to hacking and DDoSing. 
            You can also modify the theme to your heart’s content without touching the content of your site. 
            If you get to a point where you’ve broken something in HTML/CSS beyond repair, your asciidoc files describing your talks, publications, etc. are safe. 
            You can rollback the changes or even delete the repository and start over – just be sure to save the asciidoc files! 
            Finally, you can also write scripts that process the structured data on the site, such as https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.ipynb[this one] that analyzes metadata in pages about talks to display https://academicpages.github.io/talkmap.html[a map of every location you’ve given a talk].
            </p>
            <@macros.useCaseCards/>
        </div>

        <#-- TODO OptaPlanner is easy-to-use, fast and versatile. -->
        <#--  <div class="row mb-4">
            <div class="col-md-6">
                <h2>Modern mathematical optimization</h2>
                <p>OptaPlanner is <strong>a lightweight, embeddable planning engine</strong>.
                    It enables everyday programmers to solve optimization problems efficiently.
                    Constraints apply on plain domain objects and can call existing code.
                    It is Object Oriented Programming (OOP) and Functional Programming (FP) friendly.
                    There’s no need to input constraints as mathematical equations.</p>
                <span>OptaPlanner supports</span>
                <ul>
                    <li><b>Continuous planning</b> to weekly publish the schedule, 3 weeks before execution</li>
                    <li><b>Non-disruptive replanning</b> for changes to an already published schedule</li>
                    <li><b>Real-time planning</b> to react on real-time disruptions in the plan within milliseconds</li>
                    <li><b>Overconstrained planning</b> when there are too few resources to cover all the work</li>
                    <li><b>Pinning</b> so the user is still in control over the schedule</li>
                </ul>
                <p>Under the hood, OptaPlanner combines sophisticated Artificial Intelligence optimization algorithms
                    (such as Tabu Search, Simulated Annealing, Late Acceptance and other metaheuristics)
                    with very efficient score calculation and other state-of-the-art constraint solving techniques
                    for NP-complete or NP-hard problems.</p>
            </div>
            <div class="col-md-6">
                <h2>Compatibility</h2>
                <span>OptaPlanner works directly from:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/java.html">Java<i class="fab fa-java ms-1"></i></a></li>
                    <li><a href="${content.rootpath}compatibility/kotlin.html">Kotlin</a></li>
                    <li><a href="${content.rootpath}compatibility/scala.html">Scala</a></li>
                    <li><a href="${content.rootpath}compatibility/python.html">Python<i class="fab fa-python ms-1"></i> (experimental)</a></li>
                </ul>
                <span>OptaPlanner integrates seamlessly with:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/quarkus.html">Quarkus</a></li>
                    <li><a href="${content.rootpath}compatibility/springBoot.html">Spring Boot</a></li>
                </ul>
                <span>OptaPlanner runs on:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/kubernetes-openshift.html">Kubernetes and OpenShift</a></li>
                    <li>All major clouds</li>
                </ul>
                <p>OptaPlanner is <a href="${content.rootpath}code/license.html">open source software</a>,
                    released under <a href="${content.rootpath}code/license.html">the Apache License</a>.</p>
            </div>
        </div>  -->

        <#--  <div class="mb-4">
            <h2>Code example</h2>
            <div class="row">
                <div class="paragraph">
                    <p>To optimize a problem from Java™ code, add the <code>optaplanner-core</code> jar and call <code>Solver.solve()</code>:</p>
                </div>
                <div class="listingblock">
                    <div class="content">
                        <pre class="highlight"><code class="language-java" data-lang="java">SolverFactory&lt;MyRoster&gt; factory = SolverFactory.create(...);&#x000A;&#x000A;// My domain specific class as input&#x000A;MyRoster problem = ...;&#x000A;&#x000A;Solver&lt;MyRoster&gt; solver = factory.buildSolver();&#x000A;// My domain specific class as output&#x000A;MyRoster solution = solver.solve(problem);&#x000A;&#x000A;for (MyShift shift : solution.getShifts()) {&#x000A;    // Each shift is now assigned to an employee&#x000A;    assertNotNull(shift.getEmployee());&#x000A;}</code></pre>
                    </div>
                </div>
                <div class="paragraph">
                    <p><a href="https://github.com/kiegroup/optaplanner-quickstarts/tree/stable/hello-world#readme"><i class="fab fa-github me-1 text-black"></i>Try the hello world application.</a></p>
                </div>
            </div>
        </div>  -->
        <div class="mb-4">
            <h2>About</h2>
            <div class="row">
                <div class="paragraph">
                    <p>Hi! I’m Stuart, an Assistant Professor at the University of California, San Diego in the Department of Communication and the Halıcıoğlu Data Science Institute. 
                    I’m an interpretive social scientist by training with a background in the humanities, but I have just enough expertise in computer science and data science to make trouble. 
                    My research, teaching, and broader service are all grounded in the idea that science and technology are inherently social activities, which are directed, operated, and maintained in certain ways (and not in other ways), by people in and outside of institutions.</p>
                </div>
            </div>
        </div>
        <div class="mb-4">
            <h2>My work and research</h2>
            <div class="row">
                <div class="paragraph">
                    <p>I use qualitative, quantitative, and computational methods to holistically investigate socio-technical systems of technology and knowledge production. 
                    I have a particular focus on decentralized communities and institutions, such as open source software, scientific research, peer production platforms (like Wikipedia), and social media sites. 
                    Most of my previous work has focused on Wikipedia, where I’ve studied the people and algorithms that produce and maintain an open encyclopedia. 
                    I’ve also studied scientific research networks and projects, including the Long-Term Ecological Research Network, the Open Science Grid, and the Moore-Sloan Data Science Environments. 
                    I study topics including newcomer socialization, cooperation and conflict, community governance, specialization and professionalization, information verification and quality control, hackathons and community workshops, the roles of support staff and technicians, bias and discrimination, and diversity and inclusion. 
                    I also often focus on how these issues all intersect with and are embedded in the design of software and automated systems.</p>
                </div>
            </div>
        </div>
        <div class="mb-4">
            <h2>My background and history</h2>
            <div class="row">
                <div class="paragraph">
                    <p>I received my Ph.D from the UC-Berkeley School of Information, my M.A. from the Communication, Culture, and Technology program at Georgetown University, and my B.A. in the Humanities program at the University of Texas at Austin. 
                    For just under five years after receiving my Ph.D, I was at the Berkeley Institute for Data Science as a staff ethnographer. 
                    At BIDS, I was first a postdoctoral scholar, then became a principal investigator and led several research and education efforts, including the institute’s Data Science Studies efforts and the Best Practices in Data Science series.</p>
                </div>
            </div>
        </div>
        <div class="mb-4">
            <h2>My intellectual communities</h2>
            <div class="row">
                <div class="paragraph">
                    <p>I’m a disciplinary nomad, integrating disciplines like computer science, information science, social psychology, and organization/management science with fields like philosophy, sociology, anthropology, and history of science and technology. 
                    In terms of academic specialties, I spend a lot of my time in the fields of Science and Technology Studies, Computer-Supported Cooperative Work, and new media / internet studies. 
                    Methodologically, while I am trained as a qualitative ethnographer, I also rely on other qualitative, quantitative, and computational methods. 
                    I often use more statistical forms of analysis to contextualize and further support more qualitative approaches, frequently collaborating with people from other disciplines. 
                    I frequently speak at conferences and events, and I also consult with various groups, organizations, and companies about a wide range of topics.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <#--  <@macros.latestReleases/>  -->
                <#--<@macros.servicesOffer/>-->
                <#--  <@macros.latestEvents/>  -->
                <@macros.latestPublications/>
            </div>
            <div class="col-md-4">
                <@macros.latestBlogPosts/>
            </div>
            <div class="col-md-4">
                <@macros.latestVideos/>
            </div>
        </div>
    </@parent.layout>
</#macro>
