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
				console.log("TODAVIA NO dsdfsfsdfimagen");
				var imgP = $("#pimgJuego").val(); 
				if(imgP==""||imgP==null||imgP.lenght<0){
				   	//  $("#pimgJuego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
				      //$("#pimgJuego").ccs({"border-color":"#C1E0FF","border-width":"1px","border-style":"solid"});
					//$("#pimgJuego").css("border","5px solid #f00"); 
					$("#pimgJuego").css({"background-color":"red","boder":"1px solid red"});
					$("#alertImgP").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO hay imagen");
	                  
	                  document.getElementById("pimgJuego").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#pimgJuego").css({"background-color":"green","boder":"1px solid red"});
	            	  //$("#pimgJuego").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertImgP").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			$("#imgJuego1").blur(function(){
				var img1 = $("#imgJuego1").val(); 
				console.log("TODAVIA NO imagen1");
				if(img1==""||img1==null||img1.lenght<0){
				   	//  $("#pimgJuego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
				      //$("#pimgJuego").ccs({"border-color":"#C1E0FF","border-width":"1px","border-style":"solid"});
					//$("#pimgJuego").css("border","5px solid #f00"); 
					$("#imgJuego1").css({"background-color":"red","boder":"1px solid red"});
					$("#alertImg1").attr("data-content","*Debe Ingreser una Imagen del Juego");
	                  console.log("TODAVIA NO imagen1");
	                  
	               //   document.getElementById("imgJuego1").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#imgJuego1").css({"background-color":"green","boder":"1px solid red"});
	            	 // $("#imgJuego1").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertImg1").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			$("#imgJuego2").blur(function(){
				var imgP = $("#imgJuego2").val(); 
				if(imgP==""||imgP==null||imgP.lenght<0){
				   	//  $("#pimgJuego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
				      //$("#pimgJuego").ccs({"border-color":"#C1E0FF","border-width":"1px","border-style":"solid"});
					//$("#pimgJuego").css("border","5px solid #f00"); 
					$("#imgJuego2").css({"background-color":"red","boder":"1px solid red"});
					$("#alertImg2").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO imagen2");
	                  
	               //   document.getElementById("imgJuego2").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#imgJuego2").css({"background-color":"green","boder":"1px solid red"});
	            	//  $("#imgJuego2").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertImg2").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			$("#imgJuego3").blur(function(){
				var imgP = $("#imgJuego3").val(); 
				if(imgP==""||imgP==null||imgP.lenght<0){
				   	//  $("#pimgJuego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
				      //$("#pimgJuego").ccs({"border-color":"#C1E0FF","border-width":"1px","border-style":"solid"});
					//$("#pimgJuego").css("border","5px solid #f00"); 
					$("#imgJuego3").css({"background-color":"red","boder":"1px solid red"});
					$("#alertImg3").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO imagen3");
	                  
	             //     document.getElementById("imgJuego3").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#imgJuego3").css({"background-color":"green","boder":"1px solid red"});
	            	//  $("#imgJuego3").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertImg3").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			$("#imgJuego4").blur(function(){
				
				var imgP = $("#imgJuego4").val(); 
				if(imgP==""||imgP==null||imgP.lenght<0){
				   	//  $("#pimgJuego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
				      //$("#pimgJuego").ccs({"border-color":"#C1E0FF","border-width":"1px","border-style":"solid"});
					//$("#pimgJuego").css("border","5px solid #f00"); 
					$("#imgJuego4").css({"background-color":"red","boder":"1px solid red"});
					$("#alertImg4").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                console.log("TODAVIA NO imagen4");
	                  
	             //     document.getElementById("imgJuego4").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#imgJuego4").css({"background-color":"green","boder":"1px solid red"});
	            	  //$("#imgJuego4").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertImg4").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			
			$("#argumento_juego").blur(function(){
				
				var argumento = $("#argumento_juego").val(); 
				if(argumento==""||argumento==null||argumento.lenght<0||/^\s+$/.test(argumento)){
					//alert("holaaaaaaaaaaa");
					$("#textArgumento").fadeIn();
				   	$("#argumento_juego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$("#alertArgumento").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO imagen5");
	                  $("#argumento_juego").css({"border-color":"red","boder":"1px solid red"});
	                  document.getElementById("argumento_juego").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#argumento_juego").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertArgumento").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			
			$("#etiquetas_juego").blur(function(){
				var etiquetas = $("#etiquetas_juego").val(); 
				if(etiquetas==""||etiquetas==null||etiquetas.lenght<0){
				   	$("#etiquetas_juego").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$("#alertEtiqueta").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO imagen6");
	                  
	                  document.getElementById("etiquetas_juego").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#etiquetas_juego").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertEtiqueta").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			
			$("#requirimientoM").blur(function(){
				var requiMin = $("#requirimientoM").val(); 
				if(requiMin==""||requiMin==null||requiMin.lenght<0){
				   	$("#requirimientoM").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$("#alertRMin").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO imagen7");
	                  
	                  document.getElementById("requirimientoM").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#requirimientoM").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertRMin").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			
			$("#requirimientoR").blur(function(){
				var requiMax = $("#requirimientoR").val(); 
				if(requiMax==""||requiMax==null||requiMax.lenght<0){
				   	$("#requirimientoR").closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$("#alertRMax").attr("data-content","*Debe Ingreser el Imagen primaria Juego");
	                  console.log("TODAVIA NO imagen8");
	                  
	                  document.getElementById("requirimientoR").focus();
	                  bool=bool+1;
	              }else{
	            	  $("#requirimientoR").closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
	            	  console.log("listo");
	            	  $("#alertRMax").attr("data-content","");
	            	  bool=bool-1;
	              }
			});
			
			
         });