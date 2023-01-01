<%@ page import="java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Joke App</title>
    <link href="css/styles.css" rel="stylesheet"/>
</head>
<body>
<div class="form__holder">
    <form action="JokeServlet" method="GET">
        <div class="form__insides__holder">
    <div class="heading">
        <h1>Joke App</h1>
    </div>
        <%String joke = (String) request.getSession().getAttribute("joke");%>
<%--        <div class="joke__options">--%>
<%--            <table>--%>
<%--                <tr>--%>
<%--                    <td><label>Select Joke Type:</label></td>--%>
<%--                    <td>--%>
<%--                        <input name="type" type="checkbox" value="single">--%>
<%--                        <label>single</label>--%>
<%--                        <input name="type" type="checkbox" value="twopart">--%>
<%--                        <label>twopart</label>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td><label>Select Category:</label></td>--%>
<%--                    <td>--%>
<%--                        <input id="cat-cbr1" type="radio" name="category" value="Any">--%>
<%--                        <label>Any</label>--%>
<%--                        <input id="cat-cbr2" type="radio" name="category" value="Custom">--%>
<%--                        <label>Custom</label>--%>
<%--                    <span>--%>
<%--                        <input type="checkbox" name="custom-category" value="Programming">--%>
<%--                         <label>Programming</label>--%>
<%--                        <input type="checkbox" name="custom-category" value="Misc">--%>
<%--                        <label>Misc</label>--%>
<%--                        <input type="checkbox" name="custom-category" value="Dark">--%>
<%--                        <label>Dark</label>--%>
<%--                        <input type="checkbox" name="custom-category" value="Pun">--%>
<%--                        <label>Pun</label>--%>
<%--                        <input type="checkbox" name="custom-category" value="Spooky">--%>
<%--                        <label>Spooky</label>--%>
<%--                        <input type="checkbox" name="custom-category" value="Christmas">--%>
<%--                        <label>Christmas</label>--%>
<%--                    </span>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td><label>Amount Of Jokes</label></td>--%>
<%--                    <td><input name="amount" type="number" max="10" min="1"></td>--%>
<%--                </tr>--%>
<%--            </table>--%>
<%--        </div>--%><%--Future Scope--%>
        <div class="joke__holder">
            <h3>${joke}</h3>
        </div>
        <button type="submit" name="action" value="joke" class="buttonSubmit" onClick="fetchJoke()">Get Joke</button>
        <button type="button" name="action" value="showHistory" class="buttonHistory" disabled>Show <br> History</button>
        </div>
    </form>
    <script src="scripts/script.js"></script>
</div>
</body>
</html>
