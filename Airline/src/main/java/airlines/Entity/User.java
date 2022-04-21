package airlines.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="user")
@Table(name="user")
public class User {
	
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int User_id;
	
	@Column(nullable=false, unique=true)
	private String Email;
	
	private String Name, Father_name, Address, Id_type, Password ;
	private String User_type="Customer";
	private long Mobile_no;
	private long Id_no;
	private String Id_img = null;
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getFather_name() {
		return Father_name;
	}
	public void setFather_name(String father_name) {
		Father_name = father_name;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getId_type() {
		return Id_type;
	}
	public void setId_type(String id_type) {
		Id_type = id_type;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getUser_type() {
		return User_type;
	}
	public void setUser_type(String user_type) {
		User_type = user_type;
	}
	public long getMobile_no() {
		return Mobile_no;
	}
	public void setMobile_no(long mobile_no) {
		Mobile_no = mobile_no;
	}
	public long getId_no() {
		return Id_no;
	}
	public void setId_no(long id_no) {
		Id_no = id_no;
	}
	public String getId_img() {
		return Id_img;
	}
	public void setId_img(String id_img) {
		Id_img = id_img;
	}
	
	
}
