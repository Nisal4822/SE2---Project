package Modelfiles;

public class Feedback {
	
	private String firstname;
    private String Useremail;
    private String feedback;

    // Constructors, getters, and setters

    public Feedback() {
    }

    public Feedback(String firstname, String Useremail, String feedback) {
        this.firstname = firstname;
        this.Useremail = Useremail;
        this.feedback = feedback;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getUseremail() {
        return Useremail;
    }

    public void setUseremail(String Useremail) {
        this.Useremail = Useremail;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

}
