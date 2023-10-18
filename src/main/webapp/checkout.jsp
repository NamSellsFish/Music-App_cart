<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Checkout</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
    <!-- Breadcrumb -->
    <c:import url="breadcrumb.html" />
</div>
    <h1>Checkout isn't finished yet</h1>
    <div class="flex justify-between">
    <form action="" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>
    <form action="" method="post">
        <input type="hidden" name="action" value="cart">
        <input type="submit" value="Back to Cart">
    </form>
    </div>
</body>
</html>