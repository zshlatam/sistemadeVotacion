<?php include('layout/header.php'); ?>
<?php include_once('../controllers/CandidatoController.php'); ?>
<?php include_once('../controllers/RegionController.php'); ?>
<?php include_once('../controllers/ReferenciaController.php'); ?>
<br>
<form id="formulario" action="../controllers/CuestionarioController.php" method="post" class="row g-3 d-flex flex-column">
    <h2>FORMULARIO DE VOTACION</h2>
    <br>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2 m-0">
        <label for="nombreapp" class="form-label w-50">Nombre y apellido</label>
        <div class="form-control border-0 p-0">
            <input type="text" id="nombreapp" name="nombreapp" class="form-control">
            <p id="alerta-nombreapp" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden>Por favor ingresa el nombre</p>
        </div>
    </div>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2 m-0">
        <label for="alias" class="form-label w-50">Alias</label>
        <div class="form-control border-0 p-0">
            <input type="text" id="alias" name="alias" class="form-control">
            <p id="alerta-alias" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden>El Alias debe tener al menos 5 digitos, solo letras o números</p>
        </div>
    </div>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2 m-0">
        <label for="rut" class="form-label w-50">RUT</label>
        <div class="form-control border-0 p-0">
            <input type="text" id="rut" onblur="validarRut()" name="rut" class="form-control" placeholder="Formato: 24714856-6">
            <p id="alerta-rut" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden>Por favor inserte un rut valido</p>
        </div>
    </div>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2 m-0">
        <label for="email" class="form-label w-50">Email</label>
        <div class="form-control border-0 p-0">
            <input type="text" id="email" name="email" class="form-control">
            <p id="alerta-email" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden> Por favor inserte email válido </p>
        </div>
    </div>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2 m-0">
        <label for="region" class="form-label w-50">Región</label>
        <div class="form-control border-0 p-0">
            <select id="region" name="region" class="form-select" onchange="cargarComunas(this.value)">
                <option selected disabled>selecciona la región</option>
                <?php foreach ($regiones as $region) { ?>
                    <option id="<?php echo $region['id'] ?>" value="<?php echo $region['id'] ?>"><?php echo $region['nombre'] ?></option>
                <?php } ?>
            </select>
            <p id="alerta-region" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden> Por favor seleccione una región</p>
        </div>
    </div>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2">
        <label for="comuna" class="form-label w-50">Comuna</label>
        <div class="form-control border-0 p-0">
            <select id="comuna" name="comuna" class="form-select" required>
                <option>selecciona la comuna </option>
            </select>
            <p id="alerta-comuna" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden> Por favor seleccione una comuna</p>
        </div>
    </div>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2">
        <label for="candidato" class="form-label w-50">Candidato</label>
        <div class="form-control border-0 p-0">
            <select id="candidato" name="candidato" class="form-select" required>
                <option selected disabled>Elige tu candidato</option>
                <?php foreach ($candidatos as $i) { ?>
                    <option id="<?php echo $i['id'] ?>" value="<?php echo $i['id'] ?>"><?php echo $i['nombre'] ?></option>
                <?php } ?>
            </select>
            <p id="alerta-candidato" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden>Por favor seleccione un candidato</p>
        </div>
    </div>
    <div class="col-md-8 d-flex align-items-center gap-2 p-2">
        <label for="como_se_entero" class="form-label w-50">¿Cómo se enteró de nosotros?</label>
        <div class="form-control border-0 p-0">
            <div class="d-flex form-control border-0 gap-3">
                <?php foreach ($referencias as $r) {?>
                <div class="form-check">
                    <input type="checkbox" id="<?php echo $r['id'] ?>" name="<?php echo $r['nombre'] ?>" 
                        value="<?php echo $r['id'] ?>" class="form-check-input">
                    <label for="<?php echo $r['nombre'] ?>" class="form-check-label"><?php echo $r['nombre'] ?></label>
                </div>
                <?php } ?>
            </div>
            <div class="form-control border-0 p-0">
                <p id="alerta-checkbox" class="bg-warning mt-1 m-0 opacity-75" align="center" hidden>Debe seleccionar al menos 2 opciones</p>
            </div>
        </div>
    </div>
    <div class="d-grid gap-2 col-md-8 ">
        <button class="btn btn-success" type="submit">Votar</button>
    </div>
</form>


<?php include('layout/footer.php'); ?>