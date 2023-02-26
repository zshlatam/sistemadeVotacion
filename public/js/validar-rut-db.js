function validarRut() {
    // Recupera el valor del campo de entrada de rut
    var rut = document.getElementById("rut").value;
    var resetrut = document.getElementById("rut");
  
    // Crea un objeto XMLHttpRequest para hacer una solicitud AJAX al servidor
    var xhttp = new XMLHttpRequest();
  
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        // Si el rut existe en la base de datos, muestra una alerta
        if (this.responseText == "existe") {
          alert("El RUT ya está registrado en la base de datos");
          resetrut.value = "";
        } else{
          
        }
      }
    };
  
    // Envía una solicitud POST al servidor para verificar si existe el rut
    xhttp.open("POST", "../controllers/verificar_rut.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("rut=" + rut);
  }
  