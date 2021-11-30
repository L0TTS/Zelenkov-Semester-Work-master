package com.zelenkov.net.servlet.userServlet;

import com.zelenkov.net.dto.UserDto;
import com.zelenkov.net.service.UserService;
import com.zelenkov.net.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "checkLoginServlet", urlPatterns = "/checkLogin")
public class CheckLoginServlet extends HttpServlet {
    private final UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        List<UserDto> users = userService.getAll();
        String result = "free";

        for(UserDto user : users) {
            if(user.getLogin().equals(login)) {
                result = "taken";
                break;
            }
        }

        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(result);
    }
}
