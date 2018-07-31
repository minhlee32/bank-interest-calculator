<%--
  Created by IntelliJ IDEA.
  User: Minh Lee
  Date: 7/30/2018
  Time: 5:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
  form {
    font-family: Consolas, serif;
    border: cornflowerblue;
    color: darkslategray;
  }
  h2 {
    text-transform: uppercase;
    font-family: Consolas, serif;
    color: #000028;
  }

  input {
    padding: 10px 20px 10px;
  }

  button {
    padding: 10px 20px 10px;
  }


</style>
  <head>
    <title>Bank Interest Calculator</title>
  </head>
  <body>
  <h2>Bank Interest Calculator</h2>
  <form method="post" action="/calculate">
    <fieldset>
      <legend>Calculator</legend>
      <table>
        <tr>
          <td>Loan Amount</td>
          <td><input type="text" name="amount" placeholder="$ 1000"></td>
        </tr>
        <tr>
          <td>Loan term in months</td>
          <td><input type="text" name="term" placeholder="3"></td>
        </tr>
        <tr>
          <td>Interest rate per year</td>
          <td><input type="text" name="rate" placeholder="4.2%"></td>
        </tr>
        <tr>
          <td></td>
          <td><button type="submit">Calculate</button> </td>
        </tr>
      </table>

    </fieldset>

  </form>
  </body>
</html>
