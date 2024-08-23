package org.jsp.app.entity;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.ArrayList;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;

@Component
@Entity
public class UserAccount {
	
	
	public UserAccount() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public UserAccount(String email, String password, int id, String username, LocalDate dob, String image,
			String video, List<PostClass> post) {
		super();
		this.email = email;
		this.password = password;
		this.id = id;
		this.username = username;
		this.dob = dob;
		this.image = image;
		this.video = video;
		this.post = post;
	}



	public UserAccount(int id,String email, String password, String username, LocalDate dob, String image,String video) {
		super();
		this.id=id;
		this.email = email;
		this.password = password;
		this.username = username;
		this.dob = dob;
		this.image = image;
		this.video = video;
	}
	
	public UserAccount(String email, String password, String username, LocalDate dob, String image,String video) {
		super();
		this.email = email;
		this.password = password;
		this.username = username;
		this.dob = dob;
		this.image = image;
		this.video = video;
	}
	
	private String email;
	private String password;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private LocalDate dob;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private String image;
	private String video;
	@OneToMany(targetEntity=PostClass.class,cascade=CascadeType.ALL)
	private List<PostClass> post=new ArrayList<>();
	
	
	public List<PostClass> getPost() {
		return post;
	}

	public void setPost(List<PostClass> post) {
		this.post = post;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}



	@Override
	public String toString() {
		return "UserAccount [email=" + email + ", password=" + password + ", id=" + id + ", username=" + username
				+ ", dob=" + dob + ", image=" + image + ", video=" + video + ", post=" + post + "]";
	}

	
	
}
