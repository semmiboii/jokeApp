package com.joke.jokeapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.joke.jokeapp.DatabaseConnection;
import com.joke.jokeapp.JokeServlet;

public class InsertData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            Connection con = DatabaseConnection.initializeDatabase();
            PreparedStatement st = con.prepareStatement("Insert Into jokes values(,)");
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
