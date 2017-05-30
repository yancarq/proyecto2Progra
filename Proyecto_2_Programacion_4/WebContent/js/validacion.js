    /*  function guardar(){
            var confirmar = confirm("¿Seguro que los datos ingresados estan corrector?");
            if(confirmar === true)
                alert("Los datos se guardaron satisfactoriamente");
        }*/
        
    
        $(document).ready(function(){
			$('[data-toggle="popover"]').popover();   
			
              var nombre = $("#nombre_juego").val();
             /* var precio = $("#precio_juego").val(); 
              var pimgJuego = $("#pimgJuego").val();
              var imgJuego1=$("#imgJuego1").val();
              var imgJuego2=$("#imgJuego2").val();
              var imgJuego3=$("#imgJuego3").val();
              var imgJuego3=$("#imgJuego3").val();
              var imgJuego4=$("#imgJuego4").val();
              var argumento_juego=$("#argumento_juego").val();
              var requirimientoM=$("#requirimientoM").val();
              var requirimientoR=$("#requirimientoR").val();
              var bool=0;*/
             
			$("#nombre_juego").blur(function(){
              if(nombre==""){
             //   $("#nombre_juego").closest(".form-group").addClass("has-error");
            	  $("#nombre_juego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
                $("#alertnombre").attr("data-content","*Debe Ingreser el Nombre Juego");
                console.log("TODAVIA NO usuario2323");
             //   $("#nombre_juego").focus();
                //document.getElementById("nombre_juego").focus();
                //bool=bool+1;
              }else{
            	$("#nombre_juego").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
            	//$("#nombre_juego").closest(".form-group").removeClass("has-error");
            	console.log("listo");
                $("#alertnombre").attr("data-content","");
              //  bool=bool-1;
              }
			});
			
         });