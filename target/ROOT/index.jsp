<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Music Application</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    keyframes: {
                        rotatecustom: {
                            "0%": {
                                transform: "scale(0)"
                            },
                            "100%": {
                                transform: "scale(1)"
                            }
                        }
                    }

                }
            }
        }
    </script>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<main class="md:container w-fit mx-auto my-8 flex flex-col place-items-center">    
        <!-- Breadcrumb -->
        <c:import url="breadcrumb.html" />

<h1>CD list</h1>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <c:forEach var="product" items="${products}">
    <tr>
        <td><c:out value='${product.description}'/></td>
        <td class="right">${product.priceCurrencyFormat}</td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
    </c:forEach>
</table>
</main>  
</body>
</html>