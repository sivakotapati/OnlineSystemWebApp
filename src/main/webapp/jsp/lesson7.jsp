<html lang="en">

<head>
    <title>Lesson 7</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
	 
    <link rel="stylesheet" href="../styles/style.css">
    <script src="../js/lessonDataStructureJSON.js"></script>
    <script src="../js/script.js"></script>  
    
     
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        /* Applying colors and reducing margins for H1 and H2 */
   
       
   body {
            font-family: Arial, sans-serif;
            
            font-size: 14px;
            overflow-x:hidden;
        }
 
        .container {
           
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.6);
            max-width: 600px;
        }
 
        h2 {
            
            margin-bottom: 20px;
            text-align: center;
            
            color:#4992e0;
        }
 
        ul {
            margin-bottom: 30px;
        }
        
        section {
        margin-top:0!important;
        margin-left:0!important;
        min-height:100vh;
        }
 
        button.btn {
            width: 100px;
        }
         .row {
    border-radius: 10px; /* Rounded corners */
    
   
   .lesson-list {
    padding-left: 0; /* Remove default left padding */
}

.lesson-list .sub-points {
    padding-left: 20px; /* Add some padding to the sub-points for hierarchy */
}
   
   justify-content {
    text-align: justify;
    /* Ensuring that the last line is not justified but left-aligned */
 text-align-last: left;
 letter-spacing: 0.5px;  /* Adjust as needed */
    word-spacing: 1px;
}
}
}   
    </style>

</head>

 

<body>
    <script type="text/javascript"> 
        $( document ).ready(function() { 
            sessionStorage.removeItem(sessionKeyIsAssessmentPassed);
            sessionStorage.removeItem(sessionKeyIsSparcPassed);
            

        let pageIdToShow= sessionStorage.getItem(sessionKeyShowPageId);
  		if(pageIdToShow== null || pageIdToShow == '' || pageIdToShow == undefined){
              let firstPageIdOfCurrentLesson = GetFirstPageIdOfCurrentLessonFromJSON(7);
  			 let currentSection = document.getElementById(firstPageIdOfCurrentLesson);
  			 currentSection.hidden = false;
  		}
  		else{
  			 let currentSection = document.getElementById(pageIdToShow);
  			 currentSection.hidden = false;
  		}           
    });    
    </script>
	<%@ include file = "header1.jsp" %>
  <!--  <section id="version-1-course-x-lesson-7-page-1" class="container" hidden>
        <div class="row">
            <div class="col-md-8 content" style="margin-left:20rem">
            <h1 style="text-align:center">  Lesson 7: </h1> 
            <h1 style="text-align:center">  Model Proton Numbers </h1> <br>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 0, 'version-1-course-x-lesson-7-page-1', false, -1)"> Next </a>
            </div>
        </div>
    </section> -->
    <section id="version-1-course-x-lesson-7-page-1" hidden>
        <div class="row">
            <div class="container" >
            <h2 style="text-align:center">  Lesson7:  </h2> <br>
            <h2 style="text-align:center">  Model Proton Numbers </h2>
            <button class="btn btn-primary btn-lg mx-auto pull-right" onclick="gotoNext(7, 0, 'version-1-course-x-lesson-7-page-1', false, -1)" style="display:flex; margin-top:50px;"> <p style="width:100%; text-align:center;margin:0">Next </p> </button>
            </div>
        </div>
    </section>
    
    <section id="version-1-course-x-lesson-7-page-2"  hidden>
        <div class="row">
        <div class="container" >
            
                <h1 class="text-primary" style="text-align:center"> Lesson Summary </h1>
                
                	<li class="main-point"> <b>Outline:</b></li> 
                	<ul class="sub-points"> 
                    <li>On proton numbers</li>                    
					<li>Model proton numbers</li>
                </ul>
                <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 0, 'version-1-course-x-lesson-7-page-2', false, -1)">Previous</button>
        			<button class="btn btn-primary" onclick="gotoNext(7, 0, 'version-1-course-x-lesson-7-page-2', false, -1)">Next</button>
    			</div>
                <!-- <a class="btn btn-primary pull-left"
                    onclick="gotoPrevious(7, 0, 'version-1-course-x-lesson-7-page-2', false, -1)"> Previous
                </a>
                <a class="btn btn-primary pull-right"
                    onclick="gotoNext(7, 0, 'version-1-course-x-lesson-7-page-2', false, -1)"> Next 
                </a> -->
            </div>
        </div>
    </section>
    
    <section id="version-1-course-x-lesson-7-page-3"  hidden>
        <div class="row">
         <div class="container" >
            
               <h3 class="text-primary"><b>Computer Model for Chemical symbols</b></h3>
               
               <ul class="lesson-list">
               		<li> <b>What is the protron number of hydrogen? </b></li>
               		
               		<div id="hydrogenprotronnumber" class="form-group">
					  <input id="knowledge" type="text" class="form-control" required>
					</div>
					<div id="correctAnswerComment"></div>
					<div id="displayOnlyCorrect" hidden>
	               		<li> <b>What is the atomic number of H? </b></li>
	               		<div id="hydrogenatomicnumber" class="form-group">
						  <input id="fBox" type="text" class="form-control" required>
						</div>
						<div id="cAnswer"></div>
						<li> <b>What is the proton number of hydrogen? </b></li>
	               		
	               		<div id="hydrogenprotronnumber" class="form-group">
						  <input id="cBox" type="text" class="form-control" required>
						</div>
						<div id="fAnswer"></div>
					</div>
               </ul>
                
                <br>
                 <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 0, 'version-1-course-x-lesson-7-page-3', false, -1)">Previous</button>
        			<button class="btn btn-primary" id="nextButton" style="background-color:#1b84f5;" onclick="gotoNext(7, 0, 'version-1-course-x-lesson-7-page-3', false, -1)" >Next</button>
    			</div>
               <!--  <a class="btn btn-primary pull-left"
                    onclick="gotoPrevious(7, 0, 'version-1-course-x-lesson-7-page-3', false, -1)"> Previous
                </a>
                <a class="btn btn-primary pull-right"
                    onclick="gotoNext(7, 0, 'version-1-course-x-lesson-7-page-3', false, -1)"> Next
                </a> -->
            </div>
        </div>
    </section>
    

    
    <!-- Lesson 7 assement 0 - program 0 -->
	<section id="version-1-course-x-lesson-7-page-4"  hidden>
        <div class="row">
        <div class="container" >
           
                <h3><b>Activity : Extend and test as you like </b></h3>
                <ul>
                		<li>Assume we use atomicNumber(X, Y) and protonsOf(X, Y) to denote the symbol for element X is Y. Build a model for the relationship between proton and atomic number of hydrogen</li>
                		<ul>
                			<li>Remember to write the comment first</li>
                			<li>Then write the fact about this knowledge. </li>
                		</ul>
                	</ul>
                <form action="">
                    <label for="ques1">What a query about the relation between atomic and protron number of hydrogen?</label><br/>
                    <textarea id="program0" name="program0" rows="4" cols="50" class="knowledge-check-input"></textarea>
                    <br><br>
                    <br>
                    <a class="btn btn-primary pull-left"
                    onclick="gotoPrevious(7, 0, 'version-1-course-x-lesson-7-page-4', false, -1)"> Previous </a>
                    <div class="text-center">
                        <a class="btn btn-primary" style="margin-left: -15rem;" onclick="submitAssessment('version-1-course-x-lesson-7-page-4', 'program0')"> Submit </a>
                    </div>
                    <a class="btn btn-primary pull-right"  style="margin: -35px; margin-right: 76px; background-color: lightcoral;"
	                    onclick="gotoNext(7, 0, 'version-1-course-x-lesson-7-page-4', false, -1)">Skip Pre-Assessment</a>
                </form>
            </div>
        </div>
    </section>
	<!-- onlineSPARC -->
	<!-- skipped 5,6 pages -->
	
	<!-- learning outcome 1 -->
    <section id="version-1-course-x-lesson-7-page-7"  hidden>
        <div class="row" >
            <div class="container" >
            <div class="justify-content">
            <h2 style="text-align:center"> Learning outcome 1</h2>
            
           <ul class="lesson-list">
          
               		<li class="main-point"> <b>Question </b></li>
               		<ul class="sub-points">
               		 <ul style="padding:0;">
               			<li> <b> How to write the query using variables? </b></li>
               			<ul class="sub-points">
               				<li>Here we will learn how to write the query and rules and regulations for it by considering an example of a query as protonsOf(h, M).</li>

               				<li>Here in protonsOf(h, M) query h denotes the element first letter and M denotes the variable it varies from element to element (Ex: H as Hydrogen )</li>
               				</ul>
               				<ul class="sub-points">
               			<li >Generally, we can use any name for a variable if its first letter is capital.(Ex: protonsOf(h, What) or protonsOf(h, TheProtonNumber) ).</li>
               				<li > <b>Note:</b> No spaces are allowed in the middle of variables for example in the name TheProtonNumber if you observe there is no space.</li>
               			</ul>
               		</ul> 
               </ul> 
               </ul>
               </div>              		
           <!--  <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 1, 'version-1-course-x-lesson-7-page-7', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 1, 'version-1-course-x-lesson-7-page-7', false, -1)"> Next </a> -->
               <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 1, 'version-1-course-x-lesson-7-page-7', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 1, 'version-1-course-x-lesson-7-page-7', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
	<section id="version-1-course-x-lesson-7-page-8" 
		hidden>
		<div class="row">
			<div class="container" >
				<h2>Learning outcome 1 : Relations</h2>
				<ul class="lesson-list" style="padding:0;">
				<li class="main-point"> <b>What is the relation between E & N in the relation
						protonsOf(E, N)? </b></li>
						
				<ul class="sub-points">	
								
					<li>Here in the relation protonsOf(E, N) E indicates the first
						letter where as N indicates the proton number of element</li>
				
				
				<li>For your computer model to answer this relation, how would
						you expand your model</li>	
				</ul>
				
				<ul class="sub-points">					
				<li> <b>Type the knowledge as fact </b></li>
				
				<div id="knowledgeAssignment" class="form-group">
					<input id="hBox" type="text" class="form-control" required>
				</div>
				<div id="eAnswer"></div>
				<li> <b>Type the fact/rule to represent that knowledge </b></li>
				<div id="ruleAssignment" class="form-group">
					<input id="pBox" type="text" class="form-control" required>
				</div>
				<div id="pAnswer"></div>
				</ul>
				</ul>
				</ul>
				</ul>
				</ul>
				</ul>
				<!-- <a class="btn btn-primary pull-left"
					onclick="gotoPrevious(7, 1, 'version-1-course-x-lesson-7-page-8', false, -1)">
					Previous </a> <a class="btn btn-primary pull-right"
					onclick="gotoNext(7, 1, 'version-1-course-x-lesson-7-page-8', false, -1)">
					Next </a> -->
					 <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 1, 'version-1-course-x-lesson-7-page-8', false, -1)">Previous</button>
        			<button class="btn btn-primary"  id="yBoxNextButton" style="background-color:#1b84f5;" onclick="gotoNext(7, 1, 'version-1-course-x-lesson-7-page-8', false, -1)" disabled>Next</button>
    			</div>
			</div>
		</div>
	</section>
	<!-- Lesson 7 assement 1 - program 1 -->
	<section id="version-1-course-x-lesson-7-page-9"  hidden>
        <div class="row">
        <div class="container" >
           
                <h3><b>Activity : Extend and test as you like</b></h3>
                <ul>
                		<li>Expand model: Add to the model the knowledge needed to answer your question (on atomic number of hydrogen).</li>
                		<ul>
                			<li>Remember to write the comment first</li>
                			<li>Then write the fact about this knowledge. </li>
                		</ul>
                	</ul>
                <form action="">
                    <label for="ques1">Write the query about the protons of hydrogen?</label><br/>
                    <textarea id="program1" name="program1" rows="4" cols="50" class="knowledge-check-input"></textarea>
                    <br><br>
                    <br>
                    <a class="btn btn-primary pull-left"
                    onclick="gotoPrevious(7, 1, 'version-1-course-x-lesson-7-page-9', false, -1)"> Previous </a>
                    <div class="text-center">
                        <a class="btn btn-primary" style="margin-left: -15rem;" onclick="submitAssessment('version-1-course-x-lesson-7-page-9', 'program1')"> Submit </a>
                    </div>
                </form>
            </div>
        </div>
    </section>
	<!-- onlineSPARC -->
	<!-- skipped 10,11 pages -->
	
	<!-- learning outcome 2 -->
    <section id="version-1-course-x-lesson-7-page-12"  hidden>
        <div class="row">
        <div class="container" >
           
            <h2>Learning outcome 2</h2>
            <ul style="padding:0;">
            <ul class="lesson-list">
               		<li class="main-point"> <b>Question </b></li>
               		<ul class="sub-points">
               			<li>Your current model will not work well on the new questions How to extend your model? </li>
               			
               				<li>Figure out the proton number yourself for each element and write facts about the proton number. (we ignore this approach here.) </li>
               			               			
               			
               				<li>The approach above is rather tedious. Assume we have all facts about the atomic number of the elements in a file. How to leverage those facts to obtain the proton number of the elements? (recall how we use the father relation to define the dad relation.) </li>
               			
               		</ul>                		
                </ul>  
                <br><br>   
            <!-- <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-12', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-12', false, -1)"> Next </a> -->
                 <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-12', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-12', false, -1)">Next</button>
    			</div>
                
            </div>
        </div>  
    </section>
    <section id="version-1-course-x-lesson-7-page-13"  hidden>
        <div class="row">
        <div class="container" >
           
            <h2>Learning outcome 2</h2>
        				<ul>
               			<li>Figure out knowledge to obtain proton number from atomic number (in English)  </li>
               				<li>(1st version) The proton number of an element is the atomic number of the element. </li>
               			    <li>(2nd version - make the number explicit by introducing a name) The proton number of an element is N if the atomic number of the element is N. </li>
               				<li>(3rd version - introduce variables for an element) The proton number of an element E  is N if the atomic number of the element E is N. </li>
               				<li>(4th version - add quantifier [the variables refer to any value]) For every E and N, the proton number of an element E  is N if the atomic number of E is N. </li>
               			</ul>       
               			</ul>        		  
                <br><br>   
           <!--  <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-13', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-13', false, -1)"> Next </a> -->
                 <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-13', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-13', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
    <section id="version-1-course-x-lesson-7-page-14"  hidden>
        <div class="row">
        <div class="container" >
            
            <h2>Learning outcome 2</h2>
             <img src="../images/lesson7/picture 1.png" alt="Image" width="500" height="250">
                <br><br>   
           <!--  <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-14', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-14', false, -1)"> Next </a> -->
              <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-14', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-14', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
    <section id="version-1-course-x-lesson-7-page-15"  hidden>
        <div class="row">
        <div class="container" >
            
            <h2>Learning outcome 2</h2>
            <img src="../images/lesson7/picture 2.png" alt="Image" width="500" height="250">
                <br><br>   
          <!--   <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-15', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-15', false, -1)"> Next </a> -->
              <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-15', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-15', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
    <section id="version-1-course-x-lesson-7-page-16" hidden>
        <div class="row">
            <div class="container" >
            <h2>Learning outcome 2</h2>
        
				
				
            <ul class="lesson-list" style="padding:0;">
				<li class="main-point"> <b>Type the knowledge as comments </b></li>
						
               </ul>
               	
               		
 <div id="protonAssignment" class="form-group">
					  <input id="wBox" type="text" class="form-control" required>
					</div>
					<div id="yAnswer"></div>
					<ul class="lesson-list" style="padding:0;">
				<li class="main-point"> <b>Type the fact/rule to represent that knowledge</b></li>
						
               </ul>
               	
               		
               		
               		<div id="ruledAssigment" class="form-group">
					  <input id="yBox" type="text" class="form-control" required></div>
					<div id="zAnswer"></div>
               </ul>         		
                </ul>  
                <br><br>   
           <!--  <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-16', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-16', false, -1)"> Next </a> -->
                <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-16', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 2, 'version-1-course-x-lesson-7-page-16', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
     <!-- Lesson 7 assement 2 - program 2 -->
	<section id="version-1-course-x-lesson-7-page-17"  hidden>
        <div class="row">
        <div class="container" >
           
                <h3><b>Activity : Extend and test as you like</b></h3>
                <ul>
                		<li>Expand model: Add to the model the knowledge needed to answer your question</li>
                		<ul>
                			<li>Remember to write the comment first</li>
                			<li>Then write the fact about this knowledge. </li>
                		</ul>
                	</ul>
                <form action="">
                    <label for="ques1">write the relation between protron and atomic number of hydorgen?</label><br/>
                    <textarea id="program2" name="program2" rows="4" cols="50" class="knowledge-check-input"></textarea>
                    <br><br>
                    <br>
                    <a class="btn btn-primary pull-left"
                    onclick="gotoPrevious(7, 2, 'version-1-course-x-lesson-7-page-17', false, -1)"> Previous </a>
                    <div class="text-center">
                        <a class="btn btn-primary" style="margin-left: -15rem;" onclick="submitAssessment('version-1-course-x-lesson-7-page-17', 'program2')"> Submit </a>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- onlineSPARC -->
	<!-- skipped 18,19 pages -->
    
    <!-- learning outcome 3 -->
    <section id="version-1-course-x-lesson-7-page-20"  hidden>
        <div class="row">
        <div class="container" >
         
            <h2>Learning outcome 3</h2>
            
              <ul class="lesson-list" style="padding:0;">
				<li class="main-point"> From proton to atomic number </li>
				<li class="main-point">Now we develop another computer model
				<ul class="sub-points">
				
				<li>Assume we know the proton number of every element. </li>
                 <li>The model should tell us the atomic number of each element. </li>
                 <li>What knowledge do we use to get the atomic number of an element? </li>
				</ul>
				</li>
						
               </ul>
           
               			
               			
                <br><br>   
           <!--  <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-20', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-20', false, -1)"> Next </a> -->
              <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-20', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-20', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
    <section id="version-1-course-x-lesson-7-page-21" hidden>
        <div class="row">
        <div class="container" >
           
            <h2>Learning outcome 3</h2>
        				<ul>
               			<li>Figure out knowledge to obtain atomic number from proton number  </li>
               				<li>(1st version) The atomic number of an element is the proton number of the element.  </li>
               			    <li>(2nd version - make the number explicit by introducing a name) The atomic number of an element is N if the proton number of the element is N.</li>
               				<li>(3rd version - introduce variables for an element) The atomic number of an element E  is N if the protron number of the element E is N. </li>
               				<li>(4th version - add quantifier [the variables refer to any value]) For every E and N, the atomic number of an the element E  is N if the protron number of E is N. </li>
               			</ul>               		  
                <br><br>   
           <!--  <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-21', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-21', false, -1)"> Next </a> -->
               <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-21', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-21', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
    <section id="version-1-course-x-lesson-7-page-22"  hidden>
        <div class="row">
        <div class="container" >
           
            <h2>Learning outcome 3</h2>
             <img src="../images/lesson7/picture 3.png" alt="Image" width="500" height="250">
                <br><br>   
            <!-- <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-22', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-22', false, -1)"> Next </a> -->
            <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-22', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-22', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
    <section id="version-1-course-x-lesson-7-page-23"  hidden>
        <div class="row">
           <div class="container" >
            <h2>Learning outcome 3</h2>
            <ul class="lesson-list" style="padding:0;">
				<li class="main-point"> <b>Type the knowledge as comments </b></li>
						
               </ul>
               	
           
               		
               		<div id="AtomicAsssigment" class="form-group">
					  <input id="gBox" type="text" class="form-control" required>
					</div>
					<div id="nAnswer"></div>
					<ul class="lesson-list" style="padding:0;">
				<li class="main-point"> <b>Type the fact/rule to represent that knowledge </b></li>
						
               </ul>
               	
               		
               		<div id="rulerAssignment" class="form-group">
					  <input id="iBox" type="text" class="form-control" required></div>
					<div id="uAnswer"></div>          		
                </ul>  
                <br><br>   
            <!-- <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-23', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-23', false, -1)"> Next </a> -->
              <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-23', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 3, 'version-1-course-x-lesson-7-page-23', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
    
	<!-- learning outcome 3 program 3--->
	<section id="version-1-course-x-lesson-7-page-24"  hidden>
	    <div class="row">
	        <div class="container" >
	            <form action="">
	              <h3><b>Activity : Extend and Test Model as You Like</b></h3>
	                <ul>
	                		<li id="chosenElement">Activity : Extend and test as you like</li>
	                		<ul>
	                			<li>Remember to write the comment first</li>
	                			<li>Then write the fact about this knowledge. </li>
	                		</ul>
	                	</ul>
	                <label for="ques1">write the query to describe the relation between atomic and proton number of element H?.</label><br/>
	                <textarea id="program3" name="program3" rows="4" cols="50" class="knowledge-check-input"></textarea>
	                <br><br>
	                <br>
	                <a class="btn btn-primary pull-left"
	                onclick="gotoPrevious(7, 3, 'version-1-course-x-lesson-7-page-24', false, -1)"> Previous </a>
	                <div class="text-center">
	                    <a class="btn btn-primary" style="margin-left: -15rem;" onclick="submitAssessment('version-1-course-x-lesson-7-page-24', 'program3')"> Submit </a>
	                </div>
	            </form>
	        </div>
	    </div>
	
	</section>
	<!-- onlineSPARC -->
	<!-- skipped 25,26 pages -->
	<!-- #learning outcome 4 -->
	 <section id="version-1-course-x-lesson-7-page-27"  hidden>
        <div class="row">
           <div class="container" >
            <h2>Learning outcome 4</h2>
            <ul class="lesson-list" style="padding:0;">
				<li class="main-point"> <b>Can you ask a question similar to our earlier ones?</b></li>
						
               </ul>
            
            		 
            		<div id="elementSymbol" class="form-group">
				  		<input id="elementBox" type="text" class="form-control" required>
					</div>     
					    		
            		<div>
            			<img  id = "randomImageDisplay" class = "element" src="../images/lesson5/elements/17.png" alt="Image" width="105" height="120">
            		</div>
            </ul>
            
            <div>
            	<p>Would you like to try it out for another element 
            		<a href="#" onclick="changeImageRandomly(); return false;"><b><i>click here</i></b></a>
            	</p>
            </div>
                <br><br>   
           <!--  <a class="btn btn-primary pull-left"
                onclick="gotoPrevious(7, 4, 'version-1-course-x-lesson-7-page-27', false, -1)"> Previous </a>
            <a class="btn btn-primary pull-right"
                onclick="gotoNext(7, 4, 'version-1-course-x-lesson-7-page-27', false, -1)"> Next </a> -->
              <div class="d-flex justify-content-between">
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoPrevious(7, 4, 'version-1-course-x-lesson-7-page-27', false, -1)">Previous</button>
        			<button class="btn btn-primary" style="background-color:#1b84f5;" onclick="gotoNext(7, 4, 'version-1-course-x-lesson-7-page-27', false, -1)">Next</button>
    			</div>
            </div>
        </div>  
    </section>
   <!-- <section id="version-1-course-x-lesson-7-page-28"  hidden>
        <div class="row">
           <div class="container" >
            <h2>Learning outcome 4</h2>
            <h3><b>Activity : Extend and Test Model as You Like</b></h3>
                <ul>
                		<li id="chosenElement">Extend model: add the knowledge about symbol to the model</li>
                		<ul>
                			<li>Remember to write the comment first</li>
                			<li>Then write the fact about this knowledge. </li>
                		</ul>
                	</ul>
                <label for="ques1">Test your model: ask a query about Element.</label><br/> 
                <textarea id="program4" name="program4" rows="4" cols="50" class="knowledge-check-input"></textarea>
                <br><br>   
            	<a class="btn btn-primary pull-left"
	                onclick="gotoPrevious(7, 4, 'version-1-course-x-lesson-7-page-28', false, -1)"> Previous </a>
	            <div class="text-center">
	                    <a class="btn btn-primary" style="margin-left: -15rem;" onclick="submitAssessment('version-1-course-x-lesson-7-page-28', 'program4')"> Submit </a>
	            </div>
            </div>
        </div>  
 </section>  -->

<!-- onlineSPARC -->
<!-- skipped 23,24,25 pages -->
<%@ include file = "footer1.jsp" %>
<script src="../js/lesson7/validations.js" type="text/javascript">  </script>
   </body>

</html>
