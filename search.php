

<?php

// Check if the form is submitted
if(isset($_POST['search'])) {
    // Get the name of the pokemon from the form
    $pokemonName = $_POST['Pokemon_name'];

    // Perform the search
    $result = searchPokemon($pokemonName);

    // Display the search result
    if($result) {
        echo "Pokemon found!";
    } else {
        echo "Pokemon not found!";
    }
}

// Function to search for a pokemon
function searchPokemon($pokemonName) {
    // Implement your search logic here
    // You can use a database or an API to search for the pokemon by its name
    // For example, you can use the PokeAPI (https://pokeapi.co/) to search for the pokemon

    // Placeholder code to simulate the search
    $pokemonList = ['Pikachu', 'Charizard', 'Bulbasaur', 'Squirtle'];
    if(in_array($pokemonName, $pokemonList)) {
        return true;
    } else {
        return false;
    }
}



