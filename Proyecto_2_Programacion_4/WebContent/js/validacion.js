  /*  function guardar(){
            var confirmar = confirm("¿Seguro que los datos ingresados estan corrector?");
            if(confirmar === true)
                alert("Los datos se guardaron satisfactoriamente");
        }*/

	function validarNum(e){
		var tecla = (document.all) ? e.keyCode :e.which;
		if(tecla==8){
			return true;
		}
		var patron = /[0-9-.]/;
		var tecla_final= String.fromCharCode(tecla);
		return patron.test(tecla_final);
	}
        
    
        $(document).ready(function(){
			$('[data-toggle="popover"]').popover();   
			
             
             /* 
              var pimgJuego = $("#pimgJuego").val();
              var imgJuego1=$("#imgJuego1").val();
              var imgJuego2=$("#imgJuego2").val();
              var imgJuego3=$("#imgJuego3").val();
              var imgJuego3=$("#imgJuego3").val();
              var imgJuego4=$("#imgJuego4").val();
              var argumento_juego=$("#argumento_juego").val();
              var requirimientoM=$("#requirimientoM").val();
              var requirimientoR=$("#requirimientoR").val();*/
              var bool=0;
             
			$("#nombre_juego").blur(function(){
				 var nombre = $("#nombre_juego").val();
              if(nombre==""||nombre==null||nombre.lenght<0){
            	  $("#nombre_juego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
                  $("#alertnombre").attr("data-content","*Debe Ingreser el Nombre Juego");
                  console.log("TODAVIA NO usuario2323");
                  document.getElementById("nombre_juego").focus();
                  bool=bool+1;
              }else{
            	  $("#nombre_juego").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
            	  console.log("listo");
            	  $("#alertnombre").attr("data-content","");
            		bool=bool-1;
              	}	
			});
			
			$("#precio_juego").blur(function(){
				var precio = $("#precio_juego").val(); 
				if(precio==""||precio==null||precio.lenght<0){
				   	  $("#precio_juego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
	                  $("#alertprecio").attr("data-content","*Debe Ingreser el Precio del Juego");
	                  console.log("TODAVIA NO usuario2323");
	                  document.getElementById("precio_juego").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#precio_juego").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertprecio").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			$("#pimgJuego").blur(function(){
				var imgP = $("#pimgJuego").val(); 
				if(imgP==""||imgP==null||imgP.lenght<0){
				   	  $("#pimgJuego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
	                  $("#alertImgP").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO imagen");
	                  document.getElementById("pimgJuego").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#pimgJuego").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertImgP").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			
			
         });