
package za.ac.tut.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.StudentGradeGenerator;


public class GenerateGradeServlet extends HttpServlet {

   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String studNo = request.getParameter("studNo");
        Integer test1 = Integer.parseInt(request.getParameter("test1"));
        Integer test2 = Integer.parseInt(request.getParameter("test2"));
        Integer test3 = Integer.parseInt(request.getParameter("test3"));
        
        StudentGradeGenerator sgg = new StudentGradeGenerator(studNo, test1 ,test2, test3);
        int average = sgg.getAverage();
        String result = sgg.determineResults();
        request.setAttribute("average", average);
         request.setAttribute("result", result);
         request.setAttribute("studNo", studNo);
         request.setAttribute("test1", test1);
         request.setAttribute("test2", test2);
         request.setAttribute("test3", test3);
         
         RequestDispatcher disp = request.getRequestDispatcher("grades_outcome.jsp");
         disp.forward(request, response);
       
        }
    }

