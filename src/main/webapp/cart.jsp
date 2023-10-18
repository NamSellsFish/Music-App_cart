<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Cart</title>
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
<h1>Your cart</h1>

<table>
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
    <th></th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
  <tr>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type=text name="quantity" 
               value="<c:out value='${item.quantity}'/>" id="quantity">
        <input type="submit" value="Update">
      </form>
    </td>
    <td><c:out value='${item.product.description}'/></td>
    <td>${item.product.priceCurrencyFormat}</td>
    <td>${item.totalCurrencyFormat}</td>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type="hidden" name="quantity" 
               value="0">
        <input type="submit" value="Remove Item">
      </form>
    </td>
  </tr>
</c:forEach>
</table>

<p><b>To change the quantity</b>, enter the new quantity 
      and click on the Update button.</p>
<div class="flex justify-between">
<form action="" method="post">
  <input type="hidden" name="action" value="shop">
  <input type="submit" value="Continue Shopping">
</form>

<form action="" method="post">
  <input type="hidden" name="action" value="checkout">
  <input type="submit" value="Checkout">
</form>
</div>
</main>
</body>
</html>