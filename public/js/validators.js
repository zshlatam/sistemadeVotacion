// Contenemos el evento submit
var formulario = document.getElementById("formulario");
formulario.addEventListener("submit", function (event) {

  // Obtenemos los valores de los campos del formulario
  var nombreapp = document.getElementById("nombreapp").value;
  var email = document.getElementById("email").value.trim();
  var alias = document.getElementById("alias").value;
  var rut = document.getElementById("rut").value;
  var region = document.getElementById("region").value;
  var comuna = document.getElementById("comuna").value;
  var candidato = document.getElementById("candidato").value;

  // Obtenemos los valores de las alertas
  var alerta_nombreapp = document.getElementById("alerta-nombreapp");
  var alerta_alias = document.getElementById("alerta-alias");
  var alerta_rut = document.getElementById("alerta-rut");
  var alerta_email = document.getElementById("alerta-email");
  var alerta_checkbox = document.getElementById("alerta-checkbox");
  var alerta_region = document.getElementById("alerta-region");
  var alerta_comuna = document.getElementById("alerta-comuna");
  var alerta_candidato = document.getElementById("alerta-candidato");


  // Validamos que los campos no estén vacíos
  if (nombreapp === "") {
    alerta_nombreapp.removeAttribute("hidden");
    //alert("Por favor, completa todos los campos");
    event.preventDefault();
  } else {
    alerta_nombreapp.setAttribute("hidden", "");
  }
  
  // Validamos el Alias
  const regexAlias = /^[a-zA-Z0-9]{5,}$/;
  if (!regexAlias.test(alias)) {
    //alert("El alias debe tener almenos 5 digitos, no se permiten caractéres especiales, solo letras o números");
    alerta_alias.removeAttribute("hidden");
    event.preventDefault();
  } else {
    alerta_alias.setAttribute("hidden", "");
  }
  
  // Validamos el RUT
  rut = rut.replace(/\./g, '');
  rut = rut.replace(/\-/g, '');
  var dv = rut.charAt(rut.length - 1);
  var cuerpo = rut.slice(0, -1);
  cuerpo = parseInt(cuerpo);
  var suma = 0;
  var multiplo = 2;
  while (cuerpo > 0) {
    var digito = cuerpo % 10;
    suma = suma + (multiplo * digito);
    multiplo = multiplo + 1;
    if (multiplo == 8) {
      multiplo = 2;
    }
    cuerpo = Math.floor(cuerpo / 10);
  }
  var dvEsperado = 11 - (suma % 11);
  dv = (dv == 'K') ? 10 : dv;
  dv = (dv == 0) ? 11 : dv;
  
  if (dv != dvEsperado) {
    //alert("Porfavor ingresa un RUT válido!!");    
    alerta_rut.textContent = "Ingrese el rut correcto";
    alerta_rut.removeAttribute("hidden");
    event.preventDefault();
  } else if (rut.trim() === "") {
    alerta_rut.textContent = "Por favor ingrese el rut";
    alerta_rut.removeAttribute("hidden");
    event.preventDefault();
  } else {
    alerta_rut.setAttribute("hidden", "");
  }
  
  //validamos email
  const regexEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  //console.log(regexEmail.test(email))
  if (!regexEmail.test(email)) {
    if (email.trim() === "") {
      alerta_email.textContent = "Por favor inserte un email";
      alerta_email.removeAttribute("hidden");
      event.preventDefault();
    } else {
      alerta_email.textContent = "Por favor inserte email válido ";
      alerta_email.removeAttribute("hidden");
      event.preventDefault();
    }
  }
  
  // Validamos que la region sea escogida y no tome el valor por defecto
  //console.log(region.value);
  if (region == "selecciona la región") {
    alerta_region.removeAttribute("hidden");
    event.preventDefault();
  } else {
    alerta_region.setAttribute("hidden", "");
  }
  
  // Validamos que seleccionen la comuna
  if (comuna == "selecciona la comuna") {
    alerta_comuna.removeAttribute("hidden");
    event.preventDefault();
  } else {
    alerta_comuna.setAttribute("hidden", "");
  }
  
  // Validamos el candidato
  if (candidato === "Elige tu candidato") {
    alerta_candidato.removeAttribute("hidden");
    event.preventDefault();
  } else {
    alerta_candidato.setAttribute("hidden", "");
  }
  
  // Validamos los checkbox
  const checkboxes = document.querySelectorAll('input[type="checkbox"]');
  const minMarcados = 2;
  let marcados = 0;
  
  checkboxes.forEach((checkbox) => {
    if (checkbox.checked) {
      marcados++;
    }
  });
  if (minMarcados > marcados) {
    //alert("Se deben marcar al menos 2 checkboxs");
    //alert(marcados>=minMarcados);
    alerta_checkbox.removeAttribute("hidden");
    event.preventDefault();
  } else {
    alerta_checkbox.setAttribute("hidden", "");
  }
  // Si llegamos hasta aquí, es porque la validación fue exitosa

  
});
