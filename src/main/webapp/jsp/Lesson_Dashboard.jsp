<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../static/global.js"></script>
    <%@ include file="header.jsp" %>
    <%@ include file ="authRoutes.jsp" %>
    <script type="text/javascript">
        function reInitiateFreshPage(){
            sessionStorage.setItem("pageIdToShow",'');
        }
    </script>
    <style>
        /* Custom CSS styles */
        .lesson-item {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
        }
        .lesson-name {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .lesson-actions button {
            margin-right: 5px;
        }
    </style>
    <script>
    // Function to delete a lesson
    function deleteLesson(lessonId) {
        var courseId = 2; // Replace with the actual course ID
        var userId = 271; // Replace with the actual user ID

        // Log dotnet_endpoint variable
        console.log("API Endpoint:", dotnet_endpoint);

        // Construct URL with courseId and lessonId as query parameters
        const deleteLessonAPI = dotnet_endpoint+"api/CourseLesson/delete?userId=${userId}&lessonId=${lessonId}&courseId=${courseId}";

        // Make API call to delete lesson (DELETE request)
        fetch(deleteLessonAPI, {
            method: 'DELETE',
            headers: {
                "Content-Type": "application/json; charset=UTF-8",
            }
        }).then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        }).then(data => {
            // Handle response
            if (data.success) {
                // Inform the user that the lesson has been deleted successfully
                alert("Lesson deleted successfully.");

                // Remove the deleted lesson item from the UI
                const lessonItem = document.getElementById(`lesson-${lessonId}`);
                lessonItem.parentNode.removeChild(lessonItem);
            } else {
                throw new Error(data.message || 'Unknown error occurred');
            }
        }).catch(error => {
            console.error('Error deleting lesson:', error);
            alert("An error occurred while deleting lesson: " + error.message);
        });
    }

    // Function to save a lesson
    function saveLesson() {
        var lessonName = document.getElementById('lessonName').value;
        var createdBy = 23; // Replace "user_id" with actual user ID
        var createdAt = new Date().toISOString(); // Get current date and time in ISO format
        var modifiedBy = 23;
        var modifiedAt = new Date().toISOString(); // Get current date and time in ISO format
        var isLessonAvailable = true; // Assuming lesson is available by default
        var courseId = 2; // Replace with the actual course ID

        // Log dotnet_endpoint variable
        console.log("API Endpoint:", dotnet_endpoint);

        // Construct URL with courseId as a query parameter
        const saveLessonAPI = dotnet_endpoint + "api/courselesson/add?courseId=" + courseId;

        // Make API call to add lesson (POST request)
        fetch(saveLessonAPI, {
            method: 'POST',
            body: JSON.stringify({
                "lessonName": lessonName,
                "createdBy": createdBy,
                "createdAt": createdAt,
                "modifiedBy": modifiedBy,
                "modifiedAt": modifiedAt,
                "isLessonAvailable": isLessonAvailable,
                // courseId is included in the URL as a query parameter
            }),
            headers: {
                "Content-Type": "application/json; charset=UTF-8",
            }
        }).then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        }).then(data => {
            // Handle response
            if (data.success) {
                // Inform the user that the lesson has been added successfully
                alert("Lesson added successfully.");
                $('#createLessonModal').modal('hide'); // Close modal after saving

                // Update lesson list in the client-side
                const lessonsContainer = document.querySelector('.lesson-list');
                const lessonItem = document.createElement('div');
                lessonItem.classList.add('lesson-item');

                // Lesson name
                const lessonNameElement = document.createElement('div');
                lessonNameElement.classList.add('lesson-name');
                lessonNameElement.textContent = lessonName;

                // Lesson actions
                const lessonActions = document.createElement('div');
                lessonActions.classList.add('lesson-actions');

                // Publish/Unpublish button
                const publishButton = document.createElement('button');
                publishButton.classList.add('btn', 'btn-primary');
                publishButton.textContent = 'Publish';
                publishButton.dataset.published = 'true'; // Initial state

                publishButton.onclick = function() {
                    if (publishButton.dataset.published === 'true') {
                        publishButton.textContent = 'Unpublish';
                        publishButton.dataset.published = 'false';
                    } else {
                        publishButton.textContent = 'Publish';
                        publishButton.dataset.published = 'true';
                    }
                };

                // Delete button
                const deleteButton = document.createElement('button');
                deleteButton.classList.add('btn', 'btn-danger');
                deleteButton.textContent = 'Delete';

                // Add onclick event to trigger deleteLesson function with lessonId
                deleteButton.onclick = function() {
                    deleteLesson(data.lessonId); // Pass the lessonId parameter to deleteLesson function
                };
                const editButton = document.createElement('button');
                editButton.classList.add('btn', 'btn-info');
                editButton.textContent = 'Edit';

                // Append buttons to lesson actions
                lessonActions.appendChild(editButton)
                lessonActions.appendChild(publishButton);
                lessonActions.appendChild(deleteButton);

                // Append name and actions to lesson item
                lessonItem.appendChild(lessonNameElement);
                lessonItem.appendChild(lessonActions);

                // Append lesson item to container
                lessonsContainer.appendChild(lessonItem);
            } else {
                throw new Error(data.message || 'Unknown error occurred');
            }
        }).catch(error => {
            console.error('Error adding lesson:', error);
            alert("An error occurred while adding lesson: " + error.message);
        });
    }

    // Function to toggle lesson publish state
    function toggleLessonPublishState(button) {
        var lessonItem = button.closest('.lesson-item');
        var currentState = lessonItem.dataset.published === 'true';
        var newState = !currentState;
        lessonItem.dataset.published = newState;
        button.textContent = newState ? 'Unpublish' : 'Publish';
    }

    // Function to handle search
    function searchLessons() {
        var input = document.getElementById('lessonSearchInput').value.toLowerCase();
        var lessons = document.getElementsByClassName('lessonName');
        for (var i = 0; i < lessons.length; i++) {
            var lesson = lessons[i];
            if (lesson.innerText.toLowerCase().indexOf(input) > -1) {
                lesson.parentNode.style.display = "";
            } else {
                lesson.parentNode.style.display = "none";
            }
        }
    }
</script>

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <!-- Search bar -->
                <div class="input-group">
                    <input type="text" class="form-control" id="lessonSearchInput" placeholder="Search for lessons..." onkeyup="searchLessons()">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="searchLessons()">Search</button>
                    </span>
                </div>
            </div>
            <div class="col-sm-8 text-right">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#createLessonModal">
                    Launch Lesson Modal
                </button>
            </div>
        </div>
        
        <!-- Modal -->
        <div class="modal fade" id="createLessonModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Create Lesson</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="lessonName">Lesson Name</label>
                            <input type="text" class="form-control" id="lessonName">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="saveLesson()">Save Lesson</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Lesson list -->
        <div class="lesson-list">
            <!-- Lesson items will be dynamically added here -->
        </div>
    </div>
</body>
</html>
