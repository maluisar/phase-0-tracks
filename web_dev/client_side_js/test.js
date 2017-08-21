console.log("This script is running!");

var photo = document.getElementsByTagName("img");
photo = photo[0];

var header = document.getElementsByTagName("header");
header = header[0];
header.style.backgroundImage = "url('background.jpg')";
header.style.padding = "20px";

var paragraph = document.createElement("p");
var para_text = document.createTextNode("The history of the Document Object Model is intertwined with the history of the browser wars of the late 1990s between Netscape Navigator and Microsoft Internet Explorer, as well as with that of JavaScript and JScript, the first scripting languages to be widely implemented in the layout engines of web browsers.");
paragraph.appendChild(para_text);
var paragraph_div = document.getElementsByClassName("paragraphs");
paragraph_div_note = paragraph_div[0];
paragraph_div_note.appendChild(paragraph);

for (i=0; i < paragraph_div.length; i++) {
paragraph_div[i].style.color = "blue"
}

function colorParagraphs(event) {
    event.target.style.border = "2px solid grey";
}
photo.addEventListener("click", colorParagraphs);

