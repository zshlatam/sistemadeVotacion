function cargarComunas(region) {
  // Crear un objeto XMLHttpRequest para realizar la solicitud AJAX
  var xhttp = new XMLHttpRequest();

  // Configura la función de devolución de llamada que se ejecutará cuando se complete la solicitud
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      // Analizar la respuesta JSON y actualizar el combobox de comuna con las comunas correspondientes

      // var comunas = JSON.parse(this.responseText);
      // console.log(comunas);

      // var comboboxComuna = document.getElementById('comuna');
      // comboboxComuna.innerHTML = '';
      // for (var i = 0; i < comunas.length; i++) {
      //   var option = document.createElement('option');
      //   option.value = comunas[i].id;
      //   option.text = comunas[i].nombre;
      //   comboboxComuna.appendChild(option);

      var comunas = JSON.parse(this.responseText);
      var comboboxComuna = document.getElementById('comuna');
      comboboxComuna.innerHTML = '';

      comunas.forEach(function (comuna) {
        var option = document.createElement('option');
        option.value = comuna.id;
        option.text = comuna.nombre;
        comboboxComuna.appendChild(option);
      });
    }
  };
// xhttp.onreadystatechange = function() {
//   if (this.readyState == 4 && this.status == 200) {
//     // Analizar la respuesta JSON y actualizar el combobox de comuna con las comunas correspondientes
//     console.log(this.response);
//     var comunas = JSON.parse(this.responseText);
//     var comboboxComuna = document.getElementById('comuna');
//     comboboxComuna.innerHTML = '';
//     for (var i = 0; i < comunas.length; i++) {
//       var option = document.createElement('option');
//       option.value = comunas[i].id;
//       option.text = comunas[i].nombre;
//       comboboxComuna.appendChild(option);
//     }
//   }
// };

// Enviar la solicitud AJAX con la región seleccionada
xhttp.open('POST', '../controllers/ComunaController.php', true);
xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
xhttp.send('region=' + region);
}