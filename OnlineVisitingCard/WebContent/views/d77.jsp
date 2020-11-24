<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <!-- You don't have to include font-awesome. If you don't, the card will fall back gracefully to a Materialize Icon -->
    <link rel="stylesheet" type="text/css" href="d7.css" />
</head>
<body>
<c:forEach items="${list}" var="carddetails">
    <div class="businessCard materialize">
        <div class="background">
            <div class="diagonals"></div>
        </div>
        <div class="card-panel z-depth-4 hoverable">
            <div class="row valign-wrapper">
                <div class="col s8 leftSide">
                    <div class="row nameAndTitleSection">
                        <div class="fullName col s12">${carddetails.name}</div>
                        <div class="divider col s12" style="height: 2px;"></div>
                        <div class="jobTitle col s11 offset-s1">${carddetails.work}</div>
                    </div>
                    <div class="row">
                        <div class="col s11 offset-s1 linksAndDetailsSection">
                            <div class="emailAddress col s12 valign-wrapper">
                                <div class="iconWrapper z-depth-2 iconsSolidBackground">
                                    <div class="icon">
                                        <i class="material-icons left">email</i>
                                    </div>
                                </div>
                                <div class="textWrapper">
                                    <a href="mailto:email@example.com" target="_blank">${carddetails.email}</a>
                                </div>
                            </div>
                            <div class="rowJoinerWrapper"><div class="rowJoiner iconsSolidBackground"></div></div>
                            <div class="geography col s12 valign-wrapper">
                                <div class="iconWrapper z-depth-2 iconsSolidBackground">
                                    <div class="icon">
                                        <i class="material-icons left">map</i>
                                    </div>
                                </div>
                                <div class="textWrapper">
                                    <span>${carddetails.address}</span>
                                </div>
                            </div>
                            <div class="rowJoinerWrapper"><div class="rowJoiner iconsSolidBackground"></div></div>
                            <div class="linkedInURL col s12 valign-wrapper">
                                <div class="iconWrapper z-depth-2 iconsSolidBackground">
                                    <div class="icon">
                                        <i class="material-icons left">link</i><i class="fa fa-linkedin-square iconsSolidBackground" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="textWrapper">
                                    <a href="#" target="_blank">${carddetails.company}</a>
                                </div>
                            </div>
                            <div class="rowJoinerWrapper"><div class="rowJoiner iconsSolidBackground"></div></div>
                            <div class="codingProfileURL col s12 valign-wrapper">
                                <div class="iconWrapper z-depth-2 iconsSolidBackground">
                                    <div class="icon">
                                        <i class="material-icons left">code</i><i class="fa fa-github iconsSolidBackground" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="textWrapper">
                                    <a href="#" target="_blank">${carddetails.website}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col s4 rightSide">
                    <div class="valign-wrapper">
                        <div class="profilePictureWrapper col s12 z-depth-2">
                            <img class="profilePicture responsive-img" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAMAUExURQAAAP8AAP/qAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYV9agAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBwYWludC5uZXQgNC4xLjQTQGjEAAADqElEQVR42u3cMRLDIAwAwSij/z8Z+QduGMYCdvvYRFxUJurHzf5GIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAOwgV78gzNgGQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAAJiVCjzbMH8EgAAQAAJAAAgAASAABIAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAALgBNn9gOWOXoUNgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACEAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAB0kKd/wVj8/Gp+PhsAASAABIAAEAACQAAIAAEgAAEYgQAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAuAIefsARvNfyLABEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAPw/wPbKBkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAAQgAASAABAAAkAACAABIABukGEGNgACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAARAd6kQGwABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAKgvZx9QE1+PtyBDYAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAEYAQCQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAAbC//PoA5Q5sAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABCAAIxAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIgP3l7APi8gGGDYAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAGwXhjB3soGQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABCAABIAAEAACQAAIAAEgAG7wANIDDhaO2U6TAAAAAElFTkSuQmCC">
                        </div>
                    </div>
                    <div class="ageWrapper col s12 center">
                        <span>Age-${carddetails.age}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
       /** Moved to style.css */
    </style>
    </c:forEach>
</body>
</html>