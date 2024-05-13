<html lang="en">
  <head>
    <title>Modeling Methodology</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
      type="text/javascript"
    ></script>
    <link rel="stylesheet" href="../styles/lesson2.css" />

    <link rel="stylesheet" href="../styles/style.css" />
    <script src="../js/lessonDataStructureJSON.js"></script>
    <script src="../js/script.js"></script>
    <script type="text/javascript">
      function reInitiateFreshPage() {
        sessionStorage.setItem(
          "pageIdToShow",
          "version-1-course-x-lesson-2-page-1"
        );
      }
    </script>
    <style>
      /* Styles for lesson navigation */
      .lesson-nav {
        float: left;
        width: 20%; /* Adjust width as needed */
        padding: 20px;
      }

      .slide-btn {
        display: block;
        width: 100%;
        margin-bottom: 10px;
        padding: 10px;
        background-color: #337ab7; /* Bootstrap primary color */
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }

      .slide-btn:hover {
        background-color: #286090; /* Darker shade of primary color */
      }

      /* Styles for lesson slides */
      .lesson-slides {
        float: left;
        width: 80%; /* Adjust width as needed */
        padding: 20px;
        box-sizing: border-box;
      }

      .lesson-slides section {
        display: none;
      }

      /* Show the first slide initially */
      .lesson-slides section:first-child {
        display: block;
      }
    </style>
  </head>

  <body>
    <script type="text/javascript">
      $(document).ready(function () {
        // Add event listener for slide buttons
        $(".slide-btn").click(function () {
          var slideId = $(this).data("slide-id");
          $(".lesson-slides section").hide(); // Hide all slides
          $("#" + slideId).show(); // Show the clicked slide
        });
      });
      $(document).ready(function () {
        sessionStorage.removeItem(sessionKeyIsAssessmentPassed);
        sessionStorage.removeItem(sessionKeyIsSparcPassed);

        let pageIdToShow = sessionStorage.getItem(sessionKeyShowPageId);
        if (
          pageIdToShow == null ||
          pageIdToShow == "" ||
          pageIdToShow == undefined
        ) {
          let firstPageIdOfCurrentLesson =
            GetFirstPageIdOfCurrentLessonFromJSON(1);
          let currentSection = document.getElementById(
            firstPageIdOfCurrentLesson
          );
          currentSection.hidden = false;
        } else {
          let currentSection = document.getElementById(pageIdToShow);
          currentSection.hidden = false;
        }
      });
    </script>
    <%@ include file="authRoutes.jsp" %> <%@ include file = "header1.jsp" %>
    <div class="lesson-nav">
      <!-- Include navigation content -->
      <!-- You can implement navigation buttons here -->
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-1"
      >
        Slide 1
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-2"
      >
        Slide 2
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-3"
      >
        Slide 3
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-4"
      >
        Slide 4
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-5"
      >
        Slide 5
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-6"
      >
        Slide 6
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-7"
      >
        Slide 7
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-8"
      >
        Slide 8
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-9"
      >
        Slide 9
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-10"
      >
        Slide 10
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-11"
      >
        Slide 11
      </button>
      <button
        class="slide-btn"
        data-slide-id="version-1-course-x-lesson-1-page-12"
      >
        Slide 12
      </button>
      <!-- Include other slide buttons similarly -->
    </div>
    <div class="lesson-slides">
      <!-- Include lesson slides content -->
      <!-- This is where the lesson slides will be displayed -->
      <section id="version-1-course-x-lesson-1-page-1" class="container" hidden>
        <div class="row">
          <div class="col-md-8 content" style="margin-left: 20rem">
            <h1 style="text-align: center"><b>Modeling Methodology</b></h1>
            <h1 style="text-align: center">
              I: A central CS/AI task and model development
            </h1>
            <br />
            <div class="text-center">
              <p>Page 1 of 12</p>
            </div>
          </div>
        </div>
      </section>
      <section id="version-1-course-x-lesson-1-page-2" class="container" hidden>
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              Modeling Methodology
            </h1>
            <ul>
              <li><b>Outline</b></li>
              <ul>
                <li>
                  A central task in Computer Science and Artificial Intelligence
                  is to develop a computer model for answering questions.
                </li>
              </ul>
            </ul>
            <ul>
              <li><b>How to develop a model?</b></li>
              <li><b>How to design a model?</b></li>
              <li><b>How to test a model? </b></li>
              <li><b>How to debug a model?</b></li>
            </ul>

            <div class="text-center">
              <p>Page 2 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section id="version-1-course-x-lesson-1-page-3" class="container" hidden>
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              A Central Task
            </h1>
            <ul>
              <li>
                A central task in Computer Science and Artificial Intelligence
                is to develop a computer model for answering questions.
              </li>
              <li>
                We have developed computer models for a number of questions. Now
                it is time for us to introduce some vocabularies (concepts) and
                look at a methodology to complete the central task.
              </li>
            </ul>
            <div class="text-center">
              <p>Page 3 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section id="version-1-course-x-lesson-1-page-4" class="container" hidden>
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              How to develop a computer model for answering a question
            </h1>
            <ul>
              <li>Development of a computer model has components</li>
              <ul>
                <li>
                  Design a model: produce the computer model for the computer to
                  answer questions. Recall that to answer the question: Is John
                  the father of Peter, we design the following model:
                </li>
                <pre style="text-align: left">
% This is a computer model for a family
% which can be used to answer questions
% about the family.

sorts
%people = {john, peter, sara, linda}.

predicates
% father(X, Y) means that person X is the father of Y.
father(#people, #people). % father is a relation on two people.

rules
father(john, peter).
                    </pre
                >
              </ul>
              <li>
                Note: the sorts/predicates might not be covered by some
                teachers?
              </li>
            </ul>
            <div class="text-center">
              <p>Page 4 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section id="version-1-course-x-lesson-1-page-5" class="container" hidden>
        <div class="row">
          <div class="col-md-12 content" style="margin-left: rem">
            <h1 class="text-primary" style="text-align: center">
              How to develop a model for answering a question
            </h1>
            <div class="row">
              <div class="col-md-6">
                <ul>
                  <li>
                    Development of a computer model has the following steps
                  </li>
                  <ul>
                    <li>
                      Design a model: produce the computer model for computer to
                      answer questions.
                    </li>
                    <li>
                      Test the model: "To err is human." Our model might not be
                      correct. So, we need to test it using a query.
                    </li>
                    <pre style="text-align: left; margin-top: 20px">
% Template for a SPARC file
% Description:

sorts
%people = {sarah, bob}.

predicates
father(#people, #people).

rules
father(bob, sarah)
                            </pre
                    >
                    <li>
                      Note: Insert an example (Use Ps simple error (say
                      misspelling of hydrogen in fact, but correct spelling in
                      query); questions, model, query and computer answer.)
                    </li>
                  </ul>
                </ul>
              </div>
              <div class="col-md-6">
                <!-- Image from the slide -->
                <img
                  src="../images/lesson1Image1.png"
                  alt="Slide Content"
                  style="max-width: 100%; height: auto; display: block"
                />
              </div>
            </div>
            <div class="text-center">
              <p>Page 5 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section id="version-1-course-x-lesson-1-page-6" class="container" hidden>
        <div class="row">
          <div class="col-md-12 content" style="margin-left: -2rem">
            <h1 class="text-primary" style="text-align: center">
              How to develop a model for answering a question
            </h1>
            <div class="row">
              <div class="col-md-6">
                <ul>
                  <li>
                    Development of a computer model has the following steps:
                  </li>
                  <ul>
                    <li>
                      Design a model: produce the computer model for the
                      computer to answer questions. (?? insert an example with
                      facts with some error??)
                    </li>
                    <li>
                      Test the model: "To err is human." Our model might not be
                      correct. So, we need to test it with a query.
                    </li>
                    <li>
                      Debug the model: if we found an error in our test, we need
                      to see which parts of the model cause the problem and
                      correct them.
                    </li>
                  </ul>
                </ul>
                <pre style="text-align: left; margin-top: 20px">
% Template for a SPARC file
% Author:
% Description:

sorts
#people = {sarah, bob}.

predicates
father(#people, #people).

rules
father(bob, sarah)
                    </pre
                >
              </div>
              <div class="col-md-6">
                <!-- Image for page 6 -->
                <img
                  src="../images/lesson1Image1.png"
                  alt="Development of a computer model steps"
                  style="max-width: 100%; height: auto; display: block"
                />
              </div>
            </div>
            <div class="text-center">
              <p>Page 6 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <!-- Online SPARC -->
      <!-- skipped 7,8,9 pages -->

      <section id="version-1-course-x-lesson-1-page-7" class="container" hidden>
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              Summary of Computer Model Development
            </h1>
            <ul>
              <li>
                In summary, below are the new vocabulary to describe the
                components needed to develop a model:
              </li>
              <li>
                Development of a computer model has the following steps:
                <ul>
                  <li>
                    Design a model: produce the computer model for the computer
                    to answer questions.
                  </li>
                  <li>
                    Test the model: "To err is human." Our model might not be
                    correct. So, we need to test it with a query.
                  </li>
                  <li>
                    Debug the model: if we found an error in our test, we need
                    to see which parts of the model cause the problem and
                    correct them.
                  </li>
                </ul>
              </li>
            </ul>
            <div class="text-center">
              <p>Page 7 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section id="version-1-course-x-lesson-1-page-8" class="container" hidden>
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              Why Computer Model Development
            </h1>
            <ul>
              <li>
                Development of a computer model has the following steps:
                <ul>
                  <li>
                    Design a model: produce the computer model for the computer
                    to answer questions.
                  </li>
                  <li>
                    Test the model: "To err is human." Our model might not be
                    correct. So, we need to test it with a query.
                  </li>
                  <li>
                    Debug the model: if we found an error in our test, we need
                    to see which parts of the model cause the problem and
                    correct them.
                  </li>
                </ul>
              </li>
              <li>
                Why these steps?
                <ul>
                  <li>
                    Why designing a model? To answer a question, in STEM
                    (Science, Technology, Engineering and Math) disciplines, we
                    need a model. Similarly, we need to design a model for a
                    computer to answer questions (in Science, Engineering ...)
                  </li>
                  <li>
                    Why test? to err is human so we should always go back and
                    check our work.
                  </li>
                  <li>
                    Why debug?
                    <ul>
                      <li>Correcting mistakes is how we learn.</li>
                      <li>
                        It allows for an accurate model that will answer the
                        questions posed.
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
            <div class="text-center">
              <p>Page 8 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section id="version-1-course-x-lesson-1-page-9" class="container" hidden>
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              How to develop a model for answering a question
            </h1>
            <ul>
              <li>
                Practice - 1
                <ul>
                  <li>
                    What is a central task of computer science/AI, what is our
                    main goal?
                  </li>
                  <li>What are the three steps to develop a model?</li>
                </ul>
              </li>
            </ul>
            <div class="text-center">
              <p>Page 9 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section
        id="version-1-course-x-lesson-1-page-10"
        class="container"
        hidden
      >
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              How to develop a model for answering a question
            </h1>
            <ul>
              <li>
                Practice - 2
                <ul>
                  <li>
                    Teacher: typing some facts/rules in the editing area, ask
                    students: Using the right vocabularies, where am I in the
                    process of developing a model?
                  </li>
                  <li>
                    Teacher: typing some queries in the query area, ask
                    students: Using the right vocabularies, where am I in the
                    process of developing a model?
                  </li>
                  <li>
                    Teacher: Looking at the output of her query teacher didn’t
                    find the expected answer, so she starts looking at her
                    program and correcting for spelling errors, or other
                    discrepancies. ask students: Using the right vocabularies,
                    where am I in the process of developing a model?
                  </li>
                </ul>
              </li>
            </ul>
            <div class="text-center">
              <p>Page 10 of 12</p>
            </div>
          </div>
        </div>
      </section>

      <section
        id="version-1-course-x-lesson-1-page-11"
        class="container"
        hidden
      >
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">
              How to develop a model for answering a question
            </h1>
            <ul>
              <li>
                Practice - 3
                <ul>
                  <li>
                    Distribute paper to each student
                    <ul>
                      <li>
                        Give the following scenarios, identify which component
                        of the model development process is the person working
                        on:
                        <ul>
                          <li>
                            One scenario: To answer any questions posed about
                            the family, Mary is thinking about family
                            relationships. She begins to list objects, relations
                            and specific facts that would be needed.
                          </li>
                          <li>
                            Another scenario: Mary is typing in the query box
                            and then looking at the answers the computer shows
                            on screen to compare with what she knows to be true.
                          </li>
                          <li>
                            Another scenario: Looking at the output of her
                            query, Mary doesn't find the expected answer so she
                            starts looking at her program and correcting for
                            spelling errors or other discrepancies.
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li>
                    Next, ask students go to online system to complete the MCQ/
                    google form/quiz.
                  </li>
                  <li>
                    Click and complete -
                    <a href="https://forms.gle/QQpTjaNQ8quuZ11g9">Link</a>
                  </li>
                </ul>
              </li>
            </ul>
            <div class="text-center">
              <p>Page 11 of 12</p>
            </div>
          </div>
        </div>
      </section>
      <section
        id="version-1-course-x-lesson-1-page-12"
        class="container"
        hidden
      >
        <div class="row">
          <div class="col-md-6 content" style="margin-left: 35rem">
            <h1 class="text-primary" style="text-align: center">Summary</h1>
            <ul>
              <li>
                Based on what we have learned so far, we have talked about a
                central task (for computer science and AI), model development
                and its components and steps:
                <ul>
                  <li>
                    A central task in Computer Science and Artificial
                    Intelligence is to develop a computer model for answering
                    questions.
                  </li>
                  <li>
                    Development of a computer model has the following
                    component/steps
                    <ul>
                      <li>
                        Design a model: produce the computer model for the
                        computer to answer questions.
                      </li>
                      <li>
                        Test the model: "To err is human." Our model might not
                        be correct. So, we need to test it with a query.
                      </li>
                      <li>
                        Debug the model: if we found an error in our test, we
                        need to see which parts of the model cause the problem
                        and correct them.
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
            <div class="text-center">
              <p>Page 12 of 12</p>
            </div>

            <a
              class="btn btn-primary pull-right"
              href="../jsp/lesson2.jsp"
              onclick="reInitiateFreshPage()"
              >Next Lesson</a
            >
          </div>
        </div>
      </section>

      <!-- Include other slides similarly -->
    </div>

    <!-- onlineSPARC -->
    <!-- skipped 23,24,25 pages -->
    <%@ include file = "footer1.jsp" %> <%@ include file = "footer1.jsp" %>
    <script src="../js/lesson2/validations.js" type="text/javascript"></script>
  </body>
</html>
