
package servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 882199
 */
public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<String> items = new ArrayList();
        session.setAttribute("itemArray", items);
        String action = request.getParameter("action");
        switch(action){
            case "logout":{
                session.invalidate();
                response.sendRedirect("/WEB-INF/register.jsp");
                break;
            }
            case "register":{
                String username = request.getParameter("username");
                session.setAttribute("username", username);
                getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
                break;
            }
            case "add":{
                String newItem = request.getParameter("newItem");
                items.add(newItem);
                session.setAttribute("itemArray", items);
                getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
                break;
            }
            case "delete":{
                break;
            }
        }
    }
}
