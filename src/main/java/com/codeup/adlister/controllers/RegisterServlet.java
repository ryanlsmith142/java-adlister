package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: show the registration form

        request.getRequestDispatcher("WEB-INF/users/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // TODO: ensure the submitted information is valid
        if(request.getParameter("username") != null && request.getParameter("email") != null && request.getParameter("password") != null) {
            // TODO: create a new user based off of the submitted information

            User user = new User (
                    request.getParameter("username"),
                    request.getParameter("email"),
                    request.getParameter("password")
            );

            DaoFactory.getUsersDao().insert(user);
            session.setAttribute("user", request.getParameter("username"));
            // TODO: if a user was successfully created, send them to their profile
            request.getRequestDispatcher("WEB-INF/profile.jsp").forward(request, response);

        } else {
            response.sendRedirect("/register");
        }

    }
}
