function afmelden() {
    var antwoord = confirm('Wilt u zich afmelden?');
    if(antwoord == true) {
      alert('U wordt afgemeld!!!');
      window.close();
    }
  }

function tijd() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1;
    var yyyy = today.getFullYear();
    var uur = today.getHours();
    if (dd < 10) {
        dd = '0' + dd;
        Betaaldatum = '0' + Betaaldatum;
    } 
    if (mm < 10) {
        mm = '0' + mm;
    } 

    if (uur >= 0 && uur <=11)
    {
        document.write("<br>Goedemorgen!")
    }
    else if (uur >= 12 && uur <= 17)
    {
        document.write("<br>GoedeMiddag!")
    }
    else
    {
        document.write("<br>Goedeavond!")
    }

    var today = dd + '/' + mm + '/' + yyyy;
}


function dollarKoers() {
    return(1.36);
}
function euroKoers() {
    return(0.74);
}

function dollar_naar_euro(inputdollars) {
    return(inputdollars * euroKoers());
}
function wissel(bedrag,valuta) {
    if(valuta == 'euro') {
        return(bedrag * dollarKoers());
    } else if (valuta == 'dollar') {
        return (bedrag * euroKoers());
    }

}
