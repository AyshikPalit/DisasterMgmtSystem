<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.108.0">
        <title>Donate Money</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">




        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <link href="css/header.css" rel="stylesheet">-->
        <!--        <link rel="stylesheet" href="css/all.min.css">
                <link rel="stylesheet" href="css/reset-min.css">
                <link rel="stylesheet" href="css/algolia-min.css">
                <link rel="stylesheet" href="css/header.css">
                <link rel="stylesheet" href="css/docs.min.css">
                <link rel="stylesheet" href="css/index.css">-->

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
        <meta name="theme-color" content="#712cf9">
        <style>
		form {
			max-width: 400px;
			margin: auto;
			padding: 20px;
			background-color: #f5f5f5;
			border: 1px solid #ddd;
			border-radius: 5px;
		}

		label {
			display: block;
			font-weight: bold;
			margin-bottom: 10px;
		}

		input, select {
			display: block;
			width: 95%;
			padding: 10px;
			margin-bottom: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
		}

		button {
			display: block;
			margin: 0 auto;
			padding: 10px 20px;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		button:hover {
			opacity: 0.8;
		}
	</style>





        <!-- Custom styles for this template -->
<!--        <link href="css/bootstrap.min.css" rel="stylesheet" >
        <link href="css/menu_css.css" rel="stylesheet" >
        <link href="css/product.css" rel="stylesheet" >-->
        <!--        <link href="css/signin.css" rel="stylesheet">-->

    </head>
    <body class="text-center">
        <div id="body">
            <%--<jsp:include page="menu.jsp"></jsp:include>--%>

                <main class="form-signin w-50 m-auto">

                    <form action="DonateMoney" method="post" id="myForm">


                        <h1 class="h3 mb-3 fw-normal">Form for  Monetary Donation</h1>
                        
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="user ID" name="userId" required>
                            <label for="floatingInput">User ID</label>
                        </div>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="first name" name="firstName" required>
                            <label for="floatingInput">First Name</label>
                        </div>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="last name" name="lastName" required>
                            <label for="floatingInput">Last Name</label>
                        </div>

                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="phone Number" name="phoneNumber" oninvalid="this.setCustomValidity('Enter valid 10 digit number')" pattern="[6789][0-9]{9}" required >
                            <label for="floatingInput">Phone Number</label>
                        </div>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="address" name="address" required >
                            <label for="floatingInput">Address</label>
                        </div>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="amount" name="amount" required>
                            <label for="floatingInput">Amount</label>
                        </div>
                        <div class="form-floating">
                        <c:set var="deptList" value="${DonateService.getInstance().getEventTopics()}"></c:set>
                            <select name="eventId" class="form-select" id="eventId" required>
                                <option value="">Select an event</option>
                            <c:forEach var="event" items="${eventList}">
                                <option value=${event.eventId}> ${event.eventTopic}  </option>
                            </c:forEach>
                        </select>
                        <label for="floatingInput">Event</label>
                    </div>

                    <button class="w-100 btn btn-lg btn-primary" type="button" id="submitBtn">Submit</button>

                </form>
            </main>

        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!--        <script>
            // Get the form and submit button elements
            var form = document.getElementById("myForm");
            var submitBtn = document.getElementById("submitBtn");
            var responseDiv = document.getElementById("responseDiv");

            // Add a click event listener to the submit button
            submitBtn.addEventListener("click", function (event) {
                document.getElementById("body").style.display = 'none';
                // Prevent the default form submission behavior
                event.preventDefault();

                // Create a new XMLHttpRequest object
                var xhr = new XMLHttpRequest();

                // Set the request method and URL
                xhr.open("POST", "AddEmployee", true);

                // Set the request headers (if needed)
//                xhr.setRequestHeader("Content-Type", "application/json");

                // Set the callback function to handle the response
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        // Do something with the response (if needed)
                        console.log(xhr.responseText);
                        responseDiv.innerHTML = xhr.responseText;
//                        document.body.innerHTML = xhr.responseText;
                    }
                };

                // Get the form data and send the request
                var formData = new FormData(form);
                xhr.send(formData);
            });
        </script>-->

        <div id="responseDiv" ></div>


    </body>
</html>
