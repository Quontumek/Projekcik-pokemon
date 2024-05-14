

<?php
    $conn = mysqli_connect("localhost","root","","pokedatabase");

    
 



// Trzeba ogr To implement JWT authentication in PHP using the firebase/php-jwt library, follow these steps:

// Install Composer (if not already installed):
//     If you haven't installed Composer yet, you can do so by following the instructions on the Composer website: https://getcomposer.org/download/.



/*


    $your_secret_key = "36ygfdedfrtguyde656f7dg8qybtc56";

    use Firebase\JWT\JWT;

    $jwt_token = $_SERVER['HTTP_AUTHORIZATION'] ?? ''; // Get JWT token from request headers
    if (!$jwt_token) {
        // Token not provided, handle unauthorized access
        http_response_code(401);
        exit;
    }
    
    try {
        // Verify and decode the JWT token
        $decoded = JWT::decode($jwt_token, $your_secret_key, ['HS256']);
        
        // Access the user data from the decoded token
        $user_id = $decoded->user_id;
    } catch (Exception $e) {
        // Token validation failed, handle unauthorized access
        http_response_code(401);
        exit;
    }

*/

