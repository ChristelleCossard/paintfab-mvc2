<?php
require_once('templates/header.php');

?>
 
<h1>Calcul de la consommation d'un produit.</h1>
<link rel="stylesheet" href="style.css">

        
        <form id="quiz-form">
            
       
                <div class="question">
                    <p>1. Quelle est la capitale de la France?</p>
                    <label><input type="radio" name="q1" value="Paris">Paris</label>
                    <label><input type="radio" name="q1" value="Londres">Londres</label>
                    <label><input type="radio" name="q1" value="Berlin">Berlin</label>
                </div>
                <div class="question">
                    <p>2. Quelle est la planette la plus proche de la terre?</p>
                    <label><input type="radio" name="q2" value="Mercure">Mercure</label>
                    <label><input type="radio" name="q2" value="Vénus">Vénus</label>
                    <label><input type="radio" name="q2" value="Mars">Mars</label>
                </div>
                <div class="question">
                <p>3. Quelle est la plus grande planête du système solaire?</p>
                <label><input type="radio" name="q3" value="Jupiter">Jupiter</label>
                <label><input type="radio" name="q3" value="Saturne">Saturne</label>
                <label><input type="radio" name="q3" value="Neptune">Neptune</label>
               
            </div>

            <button type="button" onclick="submitQuiz()">Sousmettre</button>
        
            <div id="result"> SCORE:</div>
        </form>
    
         
    
    <script src="script.js"></script>


<?php
require_once('templates/footer.php');
?>