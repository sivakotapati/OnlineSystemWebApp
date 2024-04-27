<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, height=device-height">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Lesson Editor</title>
    <style>
        /* Custom styles */
        .header {
            display: flex;
            align-items: center;
            padding: 1.25rem!important;
        }
        .editor textarea {
            width: 30vw;
            height: 80vh; 
            resize: none;          
        }
        .sidebar {
            background-color: #f8f9fa;
            padding-top: 20px;
            border: 0.25px solid black;
            height: 90vh;
            border-radius: 20px;
        }
        .editor, .preview {
            background-color: #f8f9fa;
            border: 1px solid black;
            border-radius: 20px;
            padding: 20px;
        }
        .editor h2, .preview h2 {
            margin: 0;
        }
        #preview {
            height: 80vh;
            width: 30vw;
        }
        .status-message {
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
        }
        .success-message {
            background-color: #d4edda;
            border-color: #c3e6cb;
            color: #155724;
        }
        .error-message {
            background-color: #f8d7da;
            border-color: #f5c6cb;
            color: #721c24;
        }
        /* Selected slide style */
        .selected {
            border: 2px solid #007bff; /* Highlight with blue border */
            background-color: #e2e6ea; /* Light gray background */
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="header bg-primary text-white p-2">            
            <a href="#" onclick="history.back()"><img height="30" width="40" src="../images/back.png"></a>
            <a href="home.jsp"><img height="30" width="40" src="../images/home.png"></a>
            <span style="margin-left: 1rem;">Lesson Name</span>
        </div>
        <div class="row mt-2 ml-2">
            <div class="col-sm-3 sidebar">
                <div class="d-flex justify-content-between">
                    <button type="button" id="newSlide" class="btn btn-primary">New Slide</button>
                    <button type="button" id="deleteSlide" class="btn btn-danger">Delete Slide</button>
                </div>
                <br>
                <div id="slideList" class="d-flex flex-column">
                    <!-- Slide buttons will be added dynamically -->
                </div>
            </div>
            <div class="col-sm-4 editor">
                <div class="d-flex justify-content-center">
                    <h2>Editor</h2>
                    <div id="statusMessage" class="status-message" style="display: none;"></div>
                </div>
                <textarea id="editor" rows="10" cols="50"></textarea>
                <div class="d-flex justify-content-end">
                    <button type="button" id="compile" class="btn btn-secondary">Compile</button>
                </div>
            </div>
            <div class="col-sm-4 preview">
                <div class="d-flex justify-content-center">
                    <h2>Preview</h2>
                </div>
                <div id="preview"></div>
                <!-- Save Button -->
                <div class="d-flex justify-content-end mt-2">
                    <button type="button" id="save" class="btn btn-success">Save</button>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery and Font Awesome -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <!-- JavaScript Logic -->
    <script>
        var slideCount = 0; // Slide count for unique titles

        // Function to deselect all slides
        function deselectAllSlides() {
            var slideList = document.getElementById("slideList");
            var slideButtons = Array.from(slideList.children);
            slideButtons.forEach(button => {
                button.classList.remove("selected");
            });
        }

        // Function to create a new slide and append it to the sidebar
        function addNewSlide() {
            slideCount++; // Increment the slide count
            var slideList = document.getElementById("slideList");
            var newSlideButton = document.createElement("button");
            newSlideButton.className = "btn btn-primary mb-2";
            newSlideButton.textContent = "Slide " + slideCount;
            
            // Set up event listeners for selecting and deselecting slides
            newSlideButton.addEventListener("click", function() {
                deselectAllSlides(); // Deselect all existing slides
                this.classList.add("selected"); // Mark this slide as selected
            });

            slideList.appendChild(newSlideButton); // Append to sidebar
            
            // Optionally auto-select the newly created slide
            deselectAllSlides(); // Deselect all existing slides
            newSlideButton.classList.add("selected"); // Select the new slide
        }

        // Function to delete the selected slide
        function deleteSelectedSlide() {
            var slideList = document.getElementById("slideList");
            var selectedSlide = Array.from(slideList.children).find(button => button.classList.contains("selected"));
            
            if (!selectedSlide) { // If no slide is selected
                displayMessage("No slide selected.", "error");
                return;
            }

            slideList.removeChild(selectedSlide); // Delete the selected slide
            slideCount--; // Decrement the slide count
            displayMessage("Selected slide deleted.", "success");
        }

        // Add event listeners for "New Slide" and "Delete Slide"
        document.getElementById("newSlide").addEventListener("click", addNewSlide);
        document.getElementById("deleteSlide").addEventListener("click", deleteSelectedSlide);

        // Compile button logic
        document.getElementById("compile").addEventListener("click", function() {
            var editorContent = document.getElementById("editor").value;
            var previewContent = editorContent.replace(/\n/g, "<br>");
            document.getElementById("preview").innerHTML = previewContent;
            displayMessage("Compiled successfully!", "success");
        });

        // Function to display status messages
        function displayMessage(message, type) {
            var statusMessage = document.getElementById("statusMessage");
            statusMessage.innerHTML = message;
            statusMessage.className = "status-message " + type + "-message";
            statusMessage.style.display = "block";
            setTimeout(function() {
                statusMessage.innerHTML = "";
                statusMessage.style.display = "none";
            }, 3000);
        }
    </script>
</body>
</html>
