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


==================================================================================================================


<?php
    $conn = mysqli_connect("localhost","root","","pokedatabase");

    // Check connection
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
    }

    // Escape user inputs for security
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    // Check if email already exists
    $query = "SELECT * FROM login WHERE EMAIL = '$email'";
    $result = mysqli_query($conn, $query);
    if (mysqli_num_rows($result) > 0) {
        // Email already exists, handle accordingly (e.g., show error message)
        echo "Error: Email already exists";
        exit();
    }

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert data into database
    $insert_query = "INSERT INTO login (NAME, PASSWORD, EMAIL) VALUES ('$name', '$hashed_password', '$email')";
    if (mysqli_query($conn, $insert_query)) {
        // Redirect to login page after successful registration
        header("Location: login.php");
    } else {
        echo "Error: " . $insert_query . "<br>" . mysqli_error($conn);
    }

    // Close connection
    mysqli_close($conn);
?>


*/