// Basic Node application for requesting data from the lastFM website via axios
// Here we incorporate the "axios" npm package
var axios = require("axios");

// We then run the request with axios module on a URL with a JSON
axios
  .get(
    "http://ws.audioscrobbler.com/2.0/?method=artist.search&artist=" +
      myArtist +
      "&api_key=580beee892761fab1fcb540e44edf2ab&format=json"
  )
  .then(function(response) {
    // Then we print out the imdbRating
    console.log("The movie's rating is: " + response.data.imdbRating);
  });
