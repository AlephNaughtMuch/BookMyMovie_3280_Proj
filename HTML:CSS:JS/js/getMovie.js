function getMovie(movieID)
{
    var ajaxRequest = new XMLHttpRequest();

    var key = movieID;

    //prepare the request ss
    ajaxRequest.open("GET", "http://www.omdbapi.com/?apikey=1c427ac2&i="+key, true);

    //send request to api

    ajaxRequest.send();
    //assess whether the response is ready
    ajaxRequest.onreadystatechange = function () {
        document.getElementById("book").onclick = function () {
            location.href = "Seat.html";
        };

        if ((ajaxRequest.status == 200) && (ajaxRequest.readyState == 4)) {
            var arrJSON = new Array();

            arrJSON = JSON.parse(ajaxRequest.responseText);

            console.log(arrJSON);

            document.getElementById("poster").src = arrJSON["Poster"];
            document.getElementById("title").innerHTML = arrJSON["Title"];
            document.getElementById("language").innerHTML = "Language : " + arrJSON["Language"];
            document.getElementById("rated").innerHTML = "Rated   : " + arrJSON["Rated"];
            document.getElementById("genre").innerHTML = "Genre : " + arrJSON["Genre"];
            document.getElementById("summary").innerHTML = arrJSON["Plot"];
            document.getElementById("cast").innerHTML = arrJSON["Actors"];
            document.getElementById("crew").innerHTML = arrJSON["Writer"];


        }

    }

}