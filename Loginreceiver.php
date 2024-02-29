<?php

    require_once 'Monolith.php';
    $monolith = new Monolith();
    // Client ID: 018df488-c521-7477-9a00-970921f3fd91
    // Client Secret: AWgckfo9QM3jIPzzpHnvPJyOc6bsQFyB

    $ENCRYPTED = $_GET["identity"];
    $decrypted = $monolith->decrypt($ENCRYPT, "AWgckfo9QM3jIPzzpHnvPJyOc6bsQFyB");

    echo $decrypted;