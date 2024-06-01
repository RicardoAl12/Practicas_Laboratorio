<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.productos.seguridad.*"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Productos</title>

<link rel="stylesheet" href="styles.css">
</head>

<body>

<%
Usuario user = new Usuario();
%>

				<!--Encabezado-->
  <header class="encabezado">
    <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/global/img/logo-tu-hogar.svg" alt="Logo" class="logo">
    <nav>
        <ul>
            <li><a href="index.jsp">PDL</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
            <li><a href="verProductos.jsp">Consulta </a></li>          
            <li><a href="categorias.jsp">Categorias</a></li>
            <li><a href="login.jsp">Iniciar Sesion</a></li>
        </ul>
    </nav>
</header>

	<main>
		<form class="form_inicio" action="respuesta_registrar.jsp"
			method="post">

			<h2>Nuevo Usuario</h2>
			<div class="username">
				<label> Id: </label> <input type="number"
					placeholder="Ingrese el id" name="id_us" value="<%= user.id_cliente() %>" readonly>
			</div>
			<div class="username">
				<label>Nombre: </label> <input type="text"
					placeholder="Ingrese el nombre" name="nombre_us" required>
			</div>
			<div class="username">
				<label> Direccion: </label> <input type="text"
					placeholder="Ingrese la direcci�n" name="direccion_us" required>
			</div>
			<div class="username">
				<label> Usario: </label> <input type="text"
					placeholder="Ingrese el usuario" name="usuario_us" required>
			</div>
			<div class="username">
				<label> Contrase�a: </label> <input type="password" 
					placeholder="Ingrese la contrase�a" name="clave_us" required>
			</div>
			<div>
				<input class="boton_enviar" type="submit" value="Enviar">
			</div>

		</form>
	</main>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	
	  <div class="footer-right">
    <p>&copy; 2024 Mi Sitio Web</p>
    <p>Contacto: <a href="mailto:info@example.com">info@example.com</a></p>
    <p>Siguenos en:</p>
    <div class="social-icons">
        <a href="https://www.facebook.com/misitio" target="_blank" class="social-link">
            <img src="https://img.freepik.com/psd-gratis/cuadrado-3d-logotipo-facebook_125540-1565.jpg?t=st=1717248206~exp=1717251806~hmac=f278d17d1e063b5e87dff810460c55098b3f129c9dbaa5868baa6b70f62b1062&w=1060" class="icon">
            <span>Facebook</span>
        </a>
        <a href="https://www.twitter.com/misitio" target="_blank" class="social-link">
            <img src="https://img.freepik.com/vector-gratis/nuevo-icono-twitter-logo-x-sobre-fondo-negro_1017-45427.jpg?t=st=1717248246~exp=1717251846~hmac=c79f47e4bc4e4836b9c8ef75d8fa72fe1ee0f2d561b5b5781172e4235d7b85a8&w=826" alt="Twitter Icon" class="icon">
            <span>Twitter</span>
        </a>
        <a href="https://www.instagram.com/misitio" target="_blank" class="social-link">
            <img src="https://img.freepik.com/vector-gratis/icono-redes-sociales-vector-instagram-7-junio-2021-bangkok-tailandia_53876-136728.jpg?t=st=1717248224~exp=1717251824~hmac=8f38eee9963dd29c83874851a97fee2aa04c6283c3bff876645432e6d9391b9f&w=826" alt="Instagram Icon" class="icon">
            <span>Instagram</span>
        </a>
    </div>
</div>

</body>
</html>
