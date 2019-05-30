package MODEL;

import java.io.Serializable;

public class User implements Serializable {

    private String ID;
    private String email;
    private String name;
    private String password;
    private String phoneNumber;
    private String status;
    
    public User(String id, String email, String name, String password, String phoneNumber, String status) {
        this.ID = id;
        this.email = email;
        this.name = name;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.status = status;
    }

    public User() {
        this.ID = "";
        this.email = "";
        this.name = "";
        this.password = "";
        this.phoneNumber = "";
        this.status = "";
    }

    public String getID() {
        return ID;
    }
    
    public void setID(String id){
        this.ID = id;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

//    public void updateDetails(String email, String name, String password, String phoneNumber) {
//
//        this.email = email;
//        this.name = name;
//        this.password = password;
//        this.phoneNumber = phoneNumber;
//    }
//
//    public boolean matchEmail(String email) {
//        return this.email.equals(email);
//    }
//
//    public boolean matchPassword(String password) {
//        return this.password.equals(password.trim());
//    }

    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    
    public boolean isRegistered(){
        return "ACTIVE".equals(this.status);
    }
    
}
