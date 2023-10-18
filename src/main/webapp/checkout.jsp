<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Checkout</title>
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
    <!-- Breadcrumb -->
    <c:import url="breadcrumb.html" />
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