package DB;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class database {
    private static final String URL = "jdbc:mysql://localhost:3306/heaven";
    private static final String USER = "root";
//    private static final String PASSWORD = "Chandupa@2022";
    private static final String PASSWORD = "Pasindu12#*";
    private static final Logger logger = Logger.getLogger(database.class.getName());

    private static Connection con;

    // Initialize connection when class is loaded
    static {
        try {
            setUpConnection();
        } catch (SQLException | ClassNotFoundException e) {
            logger.log(Level.SEVERE, "Initial connection failed", e);
        }
    }

    private static void setUpConnection() throws SQLException, ClassNotFoundException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            logger.info("Database connection established.");
        }
    }

    // Standard method name for getting connection
    public static Connection getConnection() throws SQLException {
        try {
            setUpConnection();
            return con;
        } catch (ClassNotFoundException e) {
            throw new SQLException("JDBC Driver not found", e);
        }
    }

    public static void iud(String sql) throws SQLException {
        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement()) {
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "IUD Error: " + e.getMessage(), e);
            throw new SQLException("IUD failed", e);
        }
    }

    public static ResultSet search(String sql) throws SQLException {
        Connection conn = getConnection();
        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        try {
            return stmt.executeQuery(sql);
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Search Error: " + e.getMessage(), e);
            try {
                stmt.close();
                conn.close();
            } catch (SQLException ex) {
                logger.log(Level.WARNING, "Failed to close resources", ex);
            }
            throw new SQLException("Search failed", e);
        }
    }

    // Helper method for prepared statements
    public static void update(String sql, Object... params) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            for (int i = 0; i < params.length; i++) {
                pstmt.setObject(i + 1, params[i]);
            }
            pstmt.executeUpdate();
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Update Error: " + e.getMessage(), e);
            throw new SQLException("Update failed", e);
        }
    }

    // Safe way to close resources
    public static void close(ResultSet rs, Statement stmt, Connection conn) {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null && !conn.isClosed()) conn.close();
        } catch (SQLException e) {
            logger.log(Level.WARNING, "Error closing resources", e);
        }
    }
}