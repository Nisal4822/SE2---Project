package Modelfiles;

public class User {
	private int idUsers_table;
	private String firstname;
	private String Useremail;
	private String Userpswd;

	public User() {
	}

	public User(int idUsers_table, String firstname, String Useremail, String Userpswd) {
		this.idUsers_table = idUsers_table;
		this.firstname = firstname;
		this.Useremail = Useremail;
		this.Userpswd = Userpswd;
	}

	public int getId() {
		return idUsers_table;
	}

	public void setId(int idUsers_table) {
		this.idUsers_table = idUsers_table;
	}

	public String getName() {
		return firstname;
	}

	public void setName(String firstname) {
		this.firstname = firstname;
	}

	public String getEmail() {
		return Useremail;
	}

	public void setEmail(String Useremail) {
		this.Useremail = Useremail;
	}

	public String getPassword() {
		return Userpswd;
	}

	public void setPassword(String Userpswd) {
		this.Userpswd = Userpswd;
	}

	@Override
	public String toString() {
		return "User [id=" + idUsers_table + ", name=" + firstname + ", email=" + Useremail + ", password=" + Userpswd + "]";
	}
	
}
