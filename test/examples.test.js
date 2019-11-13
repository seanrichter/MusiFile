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

//test that chaz ran in class to single down results
var artistMatches = results.artistmatches.artist;
//console.log(artistMatches);
var artistAbridged = artistMatches
  .map(function(item) {
    try {
      return {
        name: item.name,
        url: item.url,
        //image: item.image[0] 
        // eslint-disable-next-line indent
        image: item.image
      };
    } catch (err) {
      // don't do anything
    }
  }

  .filter(function(item) {
    return (item.name !== undefined && 
    item.image !==undefined &&
    item.url !== undefined)
  });

console.log(artistAbridged);
