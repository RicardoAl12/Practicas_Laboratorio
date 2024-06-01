<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.negocio.*"%>
<%@ page
	import="java.util.List, java.text.DecimalFormat, java.util.ArrayList, java.sql.SQLException"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Producto</title>

<link rel="stylesheet" href="styles.css">
</head>
<body>

<%
String usuario;
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null || (Integer) sesion.getAttribute("perfil") != 2) //Se verifica si existe la variable
{
	System.out.println("noUser");
%>
<jsp:forward page="login.jsp">
	<jsp:param name="error" value="Debe registrarse en el sistema." />
</jsp:forward>
<%
} else {
usuario = (String) sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
int perfil = (Integer) sesion.getAttribute("perfil");
%>
					<!--Encabezado-->
  <header class="encabezado">
    <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/global/img/logo-tu-hogar.svg" alt="Logo" class="logo">
    <nav>
        <ul>
            <li><a href="menu.jsp">Menu</a></li>        
            <li><a href="cerrarSesion.jsp">Cerrar Sesion</a></li>
        </ul>
    </nav>
</header>


	<form name="listadoProductos" action="carrito.jsp">
		<%
		Producto producto = new Producto();
		String tabla = producto.consultarProductos();
		out.print(tabla);
		%>
		<br>
		<div>
			<input class="boton" type="submit" name="button" id="button"
				value="Enviar" />
		</div>
	</form>
	<h2>Mi carrito</h2>
	<ul>
		<%
		DecimalFormat df = new DecimalFormat("#.00");
		List<String> listaElementos = (List<String>) session.getAttribute("carrito");
		List<Integer> listacomp = new ArrayList<>();
		List<Double> precio = new ArrayList<>();
		List<String> ids = new ArrayList<>();
		if (listaElementos == null) {
			listaElementos = new ArrayList<String>();
			session.setAttribute("carrito", listaElementos);
		}

		String[] elementos = request.getParameterValues("productos");
		int i = 0;
		if (elementos != null) {
			while (i < elementos.length) {
				listaElementos.add(elementos[i]);
				i++;
			}
		}
		for (String tmp : listaElementos) {
			out.println("<li>" + tmp + "</li>");
		}
		listacomp = producto.suma(listaElementos); //devuelve productos elegidos lista
		precio = producto.precio(listacomp);

		ids = producto.elegidos(listaElementos);
		%>
	</ul>
	<main>
		<table class="factura">
			<tr>
				<th>Id Producto</th>
				<th>Precio total</th>
			</tr>
			<%
			for (int j = 0; j < ids.size(); j++) {
			%>
			<tr>
				<td><%=ids.get(j)%></td>
				<td><%=df.format(precio.get(j))%></td>
			</tr>
			<%
			}
			%>
		</table>
	</main>
	<div>
			<label>Total de la compra: <%=df.format(producto.precioTotal(precio))%>
				$
			</label>
		</div>
		<br>
		<div class="contenedor">
			<form action="borrarCarrito.jsp" method="post">
				<input class="boton" type="submit" value="Borrar Carrito">
			</form>
		</div>
		<div class="contenedor">
			<form action="cerrarSesion.jsp" method="post">
				<input class="boton" type="submit" value="Cerrar Sesi�n">
			</form>
		</div>
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
<%
}
%>