package User.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Register_Dao {
	
	public int registerUsers(Register reg) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO project_schema.users_table" +
            "  (idUsers_table, Firstname, Lastname, Mobilenumber, Useremail, Paypalemail, Paypalpswd, Userpswd) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/project_schema", "root", "");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, 1);
            preparedStatement.setString(2, reg.getFirstname());
            preparedStatement.setString(3, reg.getLastname());
            preparedStatement.setString(4, reg.getMobilenumber());
            preparedStatement.setString(5, reg.getUseremail());
            preparedStatement.setString(6, reg.getPaypalemail());
            preparedStatement.setString(7, reg.getPaypalpswd());
            preparedStatement.setString(8, reg.getUserpswd());

            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
 
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
