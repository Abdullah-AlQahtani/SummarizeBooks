function responseToJSON(response) {
  return response.json();
}

function getBook(bookName) {
  fetch(`https://www.googleapis.com/books/v1/volumes?q=${bookName}`, {
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
      for (book of data.items) {
        const html = `
        <div id="main">
          
        <a href="/books/${book.volumeInfo.title}">
        <div id="image">
          <div id="logo">
            <img src=${book.volumeInfo.imageLinks.thumbnail}/>
          </div>
        </div>

        <div id="BookName">
        <div> <h4>${book.volumeInfo.title}</h4></div>
        <h5>Author: ${book.volumeInfo.authors}</h5>
        <br>
            <strong> Description: </strong>
            <p> ${book.volumeInfo.description} </p>
        <h5>Publisher: ${book.volumeInfo.publisher}</h5>
        </a>
        </div>
      <br>

        `;
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
