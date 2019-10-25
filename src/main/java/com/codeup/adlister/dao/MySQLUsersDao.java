package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.sql.*;

import com.mysql.cj.jdbc.Driver;

public class MySQLUsersDao implements Users {

    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch(SQLException e) {
            throw new RuntimeException("Error connected to the users table", e);
        }
    }

    public User findByUsername(String username) {
        User registeredUser = null;
        String query = "SELECT * FROM users WHERE username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                registeredUser = new User(
                        rs.getLong("id"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("password")
                );
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return registeredUser;

    }

    public Long insert(User user) {
        try {
            PreparedStatement ps = connection.prepareStatement(createInsertQuery(user), PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();

            if(rs.next()) {
                return rs.getLong(1);
            }

        } catch(SQLException e) {
            throw new RuntimeException("Error registering user", e);
        }

        return 0L;
    }


    private String createInsertQuery(User user) {

        return "INSERT INTO users(username, email, password) VALUES(?, ?, ?)";
    }
}
