<?php
require_once('templates/header.php');
require_once('lib/user.php');

?>

<h1>Contactez-nous!</h1>



<body class="text-center">
<form method="POST" enctype="multipart/form-data" action="mail.php">
    
        <label>Tape ton message ici pour m'écrire</label>
        <textarea rows="10" cols="30" name="message"></textarea>
        <input type="submit">
    </form>


<?php
require_once('templates/footer.php');
?>