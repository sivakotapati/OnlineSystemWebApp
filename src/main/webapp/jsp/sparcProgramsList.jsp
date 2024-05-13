<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="javax.net.ssl.HttpsURLConnection"%>
<%@page import="java.net.URL"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/global.js"></script>

<style>
.table-styled {
border-collapse: collapse
}
</style>
<meta charset="UTF-8">
<title>Student Details</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<div id="student-progress-table" style="width:80%;margin:2% 10%;">
</div>
<%@ include file="footer.jsp"%>
</body>
</html>
<script type="text/javascript">
var student_name= sessionStorage.getItem("username");
var userRole = sessionStorage.getItem('userRole');
window.onload = function() {
    var token = sessionStorage.getItem("token");
    var username = sessionStorage.getItem("username");
    if (!token || !username) {
        window.location.href = "login.html";
    } else {
        getApiData();
    }
}
    
function getApiData()
{
    let studentid = sessionStorage.getItem("studentid");
    const teacher_url = dotnet_endpoint+"api/Teacher/"+studentid+"/sparc/";

    $.ajaxSetup({
       headers:{
          'Authorization': "Bearer "+ sessionStorage.getItem("token")
       }
    });
    $.get(teacher_url, function(data, status){
        buildLessonList(data);
    });
}   

function buildLessonList(response){
    let htmlTable = "<table class='table table-sm table-bordered table-hover'>";
    let headerRow = "<tr style='background-color:#275E9B;color:white'>";

    if(userRole == 'Teacher'){
        headerRow += "<th>" + "Student name" + "</th>";
    }
    headerRow += "<th>" + "Lesson Number" + "</th>";
    headerRow += "<th>" + "Learning Outcome Number" + "</th>";
    headerRow += "<th>" + "Sparc Programs" + "</th>";
    headerRow += "<th>" + "Activity time" + "</th>";
    if(userRole == 'Teacher'){
        headerRow += "<th>" + "Grade" + "</th>";
    }
    htmlTable+= headerRow;
    for(let i=0; i<response.content.length;i++){
        let row = '<tr>';
        if(userRole == 'Teacher'){
            row+= `<td> ${student_name} </td> `;   
        }
        
        row+=`<td> ${response.content[i]?.lessonId}</td>`
                + `<td> ${response.content[i]?.learningOutcome} </td>`
                + `<td> <a class='btn btn-primary' onclick='viewSparcProgram("${response.content[i]?.lessonId}", "${response.content[i]?.learningOutcome}")' > Click here to view Students Sparc programs </a>`
                + `<td> ${response.content[i]?.activityTime} </td>`;
        if(userRole=='Teacher'){
            row+=`<td> <font color="green"> ${response.content[i]?.grade}  </td>`;
        }   
        row+= `</tr>`;
        htmlTable+=row;
    }
    htmlTable += '</table>';
    $('#student-progress-table').html(htmlTable);
}

function viewSparcProgram(lessonid, learningoutcome){
    sessionStorage.setItem("lessonID", lessonid);
    sessionStorage.setItem("lessonOutcome", learningoutcome);
    window.location.href="sparc_teacher.jsp";
}
</script>
