package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;


import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {

        try {
//            stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
//            return createAdsFromResults(rs);

            String safeSearchQuery = "SELECT * FROM ads";
            PreparedStatement ps = connection.prepareStatement(safeSearchQuery);
            ResultSet rs = ps.executeQuery();

                return createAdsFromResults(rs);


        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
//            Statement stmt = connection.createStatement();
//            stmt.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
//            ResultSet rs = stmt.getGeneratedKeys();
//            rs.next();
//            return rs.getLong(1);

            PreparedStatement ps = connection.prepareStatement(createInsertQuery(ad), PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setLong(1, ad.getUserId());
            ps.setString(2, ad.getTitle());
            ps.setString(3, ad.getDescription());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();

            if(rs.next()) {
                return rs.getLong(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }

        return 0L;
    }

    private String createInsertQuery(Ad ad) {


//        return "INSERT INTO ads(user_id, title, description) VALUES "
//            + "(" + ad.getUserId() + ", "
//            + "'" + ad.getTitle() +"', "
//            + "'" + ad.getDescription() + "')";

        return "INSERT INTO ads(user_id, title, description) VALUES(?, ?, ?)";
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
