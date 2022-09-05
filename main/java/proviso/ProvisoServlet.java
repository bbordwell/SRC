package proviso;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DataManager;

/**
 * Servlet implementation class ProvisoServlet
 */
@WebServlet("/ProvisoServlet")
public class ProvisoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProvisoServlet() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
        System.out.println("*** initializing controller servlet.");
        super.init(config);

        //Set up the DB connection
        DataManager dataManager = new DataManager();
        //getInitParameter pulls information from web.xml
        dataManager.setDbURL(getServletContext().getInitParameter("dbURL"));
        dataManager.setDbUserName(getServletContext().getInitParameter("dbUser"));
        dataManager.setDbPassword(getServletContext().getInitParameter("dbPass"));
        dataManager.setConnection();
        
        //Add the instance of DataManager created abot to the context so it can be used in jsp pages.
        ServletContext context = config.getServletContext();
        context.setAttribute("dataManager", dataManager);
    }

    protected void doGet(HttpServletRequest request,
    	      HttpServletResponse response) throws ServletException, IOException {
    		//Forward the get to doPost. 
    	    doPost(request, response);
    	    }

    protected void doPost(HttpServletRequest request,
    	      HttpServletResponse response) throws ServletException, IOException {
    		//Build the correct url for the correct jsp and forward the response to that jsp
    	    String base = "/jsp/";
    	    String url = base + "index.jsp"; //If no action go to home page.
    	    String action = request.getParameter("action");
    	    if (action != null) {	//Otherwise go to the page specified by the action
    	        switch (action) {
    	        case "about":
    	          url = base + "about.jsp";
    	          break;
    	        case "locations":
    	    		url = base + "locations.jsp";
    	    		break;
    	        case "DataTest":
    	    		url = base + "DataTest.jsp";
    	    		break;
    	        case "LoginTest":
    	    		url = base + "LoginTest.jsp";
    	    		break;
    	        case "logout":
    	        	request.getSession().invalidate();
    	        	break;
    	        case "LandingPage":
    	    		url = base + "LandingPage.jsp";
    	    		break;
    	        case "DateSelection":
    	    		url = base + "DateSelection.jsp";
    	    		break;
    	        case "ReservationLookup":
    	    		url = base + "ReservationLookup.jsp";
    	    		break;
    	        case "Register":
    	    		url = base + "Register.jsp";
    	    		break;
    	        case "RewardsProgram":
    	    		url = base + "RewardsProgram.jsp";
    	    		break;
    	        case "registerAction":
    	    		url = base + "registerAction.jsp";
    	    		break;
    	        }
    	        
    	      }
    	    
    	    //Use the url we built above to forward to the correct page
    	    RequestDispatcher requestDispatcher =
    	      getServletContext().getRequestDispatcher(url);
    	    requestDispatcher.forward(request, response);
    	    }

}
