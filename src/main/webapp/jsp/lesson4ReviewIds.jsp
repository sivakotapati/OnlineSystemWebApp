<html lang="en">

<head>
	<title>Lesson 4 - Quick Review</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Include Bootstrap CSS for the Carousel -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	<script src="../js/ldslessonDataStructureJSON.js"></script>
	<script src="../js/script.js"></script>
</head>

<body>
	<%@ include file="header.jsp"%>
	
	<!-- Input for PDF file -->
    <input type="hidden" id="pdfUrl" value="../pdfs/Lession4ReviewIds.pdf">
    
    <!-- Center the Carousel and Add Space Around It -->
    <div class="d-flex justify-content-center mt-5">
        <div id="imageCarousel" class="carousel slide" data-interval="false">
            <div class="carousel-inner" id="carouselInner">
                <!-- Images will be added here dynamically -->
            </div>
        </div>
    </div>

    <<!-- Next and Previous buttons -->
    <div class="d-flex justify-content-center mt-3">
        <button class="btn btn-primary" id="prevButton">Previous</button>
        <button class="btn btn-primary ml-2" id="nextButton">Next</button>
        <button class="btn btn-primary ml-2" id="finishButton">Finish</button> <!-- Finish button added -->
    </div>

    <!-- Include Bootstrap and jQuery JS libraries -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Include PDF.js library locally -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.min.js"></script>

    <style>
        #imageCarousel {
            border: 1px solid black;
            padding: 10px;
            max-width: 50%;
        }

        .carousel-item {
            transition: transform 0.5s ease-in-out;
        }

        .carousel-item img {
            display: block;
            margin: 0 auto;
        }
    </style>

    <input type="hidden" id="pdfUrl" value="../pdfs/Lesson0Ids.pdf">

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Get the PDF URL from the hidden input
            var pdfUrl = document.getElementById("pdfUrl").value;

            // Fetch the PDF from the server
            fetch(pdfUrl)
                .then(response => response.blob())
                .then(function (pdfBlob) {
                    var fileReader = new FileReader();

                    fileReader.onload = function (e) {
                        var pdfData = new Uint8Array(e.target.result);

                        pdfjsLib.getDocument(pdfData).promise
                            .then(function (pdf) {
                                var carouselInner = document.getElementById("carouselInner");

                                var numPages = pdf.numPages;
                                var currentPage = 1;

                                var pageOrder = Array.from({ length: numPages }, (_, i) => i + 1);

                                function renderPage(pageNum) {
                                    pdf.getPage(pageOrder[pageNum - 1]).then(function (pdfPage) {
                                        var viewport = pdfPage.getViewport({ scale: 1.5 });
                                        var canvas = document.createElement("canvas");
                                        var context = canvas.getContext("2d");
                                        canvas.height = viewport.height;
                                        canvas.width = viewport.width;

                                        var renderContext = {
                                            canvasContext: context,
                                            viewport: viewport,
                                        };

                                        // Render the PDF page to canvas
                                        pdfPage.render(renderContext).promise.then(function () {
                                            var img = document.createElement("img");
                                            img.src = canvas.toDataURL("image/png");
                                            img.className = "d-block w-100";

                                            var item = document.createElement("div");
                                            item.className = "carousel-item";
                                            if (pageNum === 1) {
                                                item.classList.add("active");
                                            }
                                            item.appendChild(img);

                                            carouselInner.appendChild(item);
                                        });
                                    });
                                }

                                function showPage(pageNum) {
                                    if (pageNum < 1 || pageNum > numPages) return;
                                    var items = carouselInner.querySelectorAll('.carousel-item');
                                    items[currentPage - 1].classList.remove("active");
                                    items[pageNum - 1].classList.add("active");
                                    currentPage = pageNum;
                                }

                                var pagesRendered = 0;

                                function renderAllPages() {
                                    renderPage(pageOrder[pagesRendered]);
                                    pagesRendered++;

                                    if (pagesRendered < numPages) {
                                        // Continue rendering pages with a delay (to ensure order)
                                        setTimeout(renderAllPages, 100);
                                    }
                                }

                                renderAllPages();

                                // Initialize the Bootstrap Carousel
                                var imageCarousel = document.getElementById("imageCarousel");
                                imageCarousel.addEventListener('slide.bs.carousel', function (e) {
                                    var pageToShow = e.to + 1;
                                    showPage(pageToShow);
                                });

                                var prevButton = document.getElementById("prevButton");
                                var nextButton = document.getElementById("nextButton");
                                var finishButton = document.getElementById("finishButton"); // Added

                                prevButton.addEventListener("click", function () {
                                    if (currentPage > 1) {
                                        showPage(currentPage - 1);
                                    }
                                });

                                nextButton.addEventListener("click", function () {
                                    if (currentPage < numPages) {
                                        showPage(currentPage + 1);
                                    }
                                });

                                // Finish button action
                                finishButton.addEventListener("click", function () {
                                    showPage(1); // Show the first page
                                });

                            })
                            .catch(function (error) {
                                console.error("Error loading PDF: " + error);
                            });
                    };

                    fileReader.readAsArrayBuffer(pdfBlob);
                })
                .catch(function (error) {
                    console.error("Error fetching PDF: " + error);
                });
        });
    </script>

    <!-- onlineSPARC -->
    <!-- skipped 23,24,25 pages -->
    <%@ include file="footer1.jsp"%>
</body>

</html>
