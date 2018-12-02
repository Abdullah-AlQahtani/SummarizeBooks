function responseToJSON(response){
    return response.json();
}

function getBook(bookName) {
    fetch(`https://www.googleapis.com/books/v1/volumes?q=${bookName}`,{
        method: "GET",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        }
    })
    .then(responseToJSON)
    .then(function(data) {
        const showBookDiv = document.querySelector("#show-book");
        // debugger
        for ( book of data.items) {
        const html = `<li>${book.volumeInfo.title}</li>`;
        showBookDiv.innerHTML += html;
        }  
    });
}

window.onload = function() {

const form = document.querySelector("form");
  form.addEventListener("submit", e => {
    e.preventDefault();
    const input = document.querySelector("#search-book");
    const bookName = input.value;
    getBook(bookName);
  });

};