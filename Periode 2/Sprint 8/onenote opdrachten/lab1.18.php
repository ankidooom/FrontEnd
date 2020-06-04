<?php 
    // superglobale scope
    $GLOBALS['url'] = "www.mijndomeinnaam.nl";
    // globale scope 
    global $email;
    $email = "webmaster@mijndomeinnaam.nl";
    // global constanten
    define ("BIJDRAGE",0.10);
    function doneren($bedrag)
    {
        // function scope
        $melding = "GIRO 555";
        echo"<br>" . $melding;
        echo"<br>URL: " . $GLOBALS["url"];
        echo"<br>Bedrag: " . $bedrag;
        global $email;
        echo "<br>E-mail:" . $email; 
        $bijdrage = $bedrag * BIJDRAGE;
        $donatie = $bedrag + BIJDRAGE;
        echo"<br>Inclusief bijdrage: " . $donatie;
        static $pot;
        $pot = $pot + $donatie;
        echo "<br><span style='background-color: yellow'>Totaal bedrag in pot " . $pot . "</span><br>";
        static $hoogste;
        if ($donatie > $hoogste){
            $hoogste = $donatie;
            echo "<br>Hoogste donatie tot nu toe is: " . $hoogste;
        }
        
    }
    doneren(100);
    doneren(1000);
    doneren(33333);
    doneren(5);
    doneren(55955s);
    doneren(35);


    

?>