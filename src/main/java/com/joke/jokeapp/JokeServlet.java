package com.joke.jokeapp;

import java.io.IOException;
import java.io.PrintWriter;

import com.google.gson.Gson;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import java.net.URL;
import java.io.BufferedReader;
import java.io.InputStreamReader;

@WebServlet("/JokeServlet")
public class JokeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String apiURL = "https://v2.jokeapi.dev/joke/Any?blacklistFlags=nsfw,sexist,explicit&type=single";

        URL url = new URL(apiURL);
        BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
        String line;
        StringBuilder buffer = new StringBuilder();
        while ((line = reader.readLine()) != null) {
            buffer.append(line);
        }
        reader.close();

        String jokeJSON = buffer.toString();
        JSONObject jokeObject = new JSONObject(jokeJSON);
        Object joke = jokeObject.getString("joke");

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request,response);
        request.getSession().setAttribute("joke",joke);
    }
}
