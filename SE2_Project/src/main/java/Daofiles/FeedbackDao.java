package Daofiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Modelfiles.Feedback;

public class FeedbackDao {
    private final Connection con;

    public FeedbackDao(Connection con) {
        this.con = con;
    }

    // Method to insert feedback into the database
    public boolean insertFeedback(Feedback feedback) {
        boolean result = false;
        try {
            String query = "INSERT INTO feedback_table (firstname, Useremail, feedback) VALUES (?, ?, ?)";
            try (PreparedStatement pstmt = con.prepareStatement(query)) {
                pstmt.setString(1, feedback.getFirstname());
                pstmt.setString(2, feedback.getUseremail());
                pstmt.setString(3, feedback.getFeedback());

                // Execute the query
                int rowsAffected = pstmt.executeUpdate();

                // If rowsAffected > 0, the insertion was successful
                result = rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}