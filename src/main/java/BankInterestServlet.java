import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "BankInterestServlet", urlPatterns = "/calculate")
public class BankInterestServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        double amount = Double.parseDouble(request.getParameter("amount"));
        double rate = Double.parseDouble(request.getParameter("rate"));
        double term = Double.parseDouble(request.getParameter("term"));

        double money = amount * term * rate * 0.01;

        PrintWriter writer = response.getWriter();
        writer.print("<html>");
        writer.print("<h4> Loan amount: " + amount + " $ </h4>");
        writer.print("<h4> Loan term in months: " + term + " month(s)</h4>");
        writer.print("<h4> Interest rate per year: " + rate + " % </h4>");
        writer.print("<h4> Total interest paid: " + money + " $</h4> ");

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
