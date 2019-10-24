import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {

    private static Connection connection;

    public MySQLAdsDao() {
        try {
            Config config = new Config();
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }
    // get a list of all the ads
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();

            String sql = "SELECT * FROM ads";
            ResultSet rs = stmt.executeQuery(sql);

            while(rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));

            }

        } catch(SQLException e) {
            e.printStackTrace();
        }
        return ads;
    }


      // insert a new ad and return the new ad's id
    @Override
    public long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            String sql = String.format("insert into ads (user_id, title, description) values(%s, '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());
            stmt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if(rs.next()) {
                return rs.getLong(1);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }
} //MySQLAdsDao()
