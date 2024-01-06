package Daofiles;

import java.sql.*;
import Modelfiles.*;

public class UserDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User userLogin(String Useremail, String Userpswd) {
		User user = null;
        try {
            query = "select * from users_table where Useremail=? and Userpswd=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, Useremail);
            pst.setString(2, Userpswd);
            rs = pst.executeQuery();
            if(rs.next()){
            	user = new User();
            	user.setId(rs.getInt("id"));
            	user.setName(rs.getString("name"));
            	user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
}
