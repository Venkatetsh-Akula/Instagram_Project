package org.jsp.app.entity;

import org.springframework.boot.autoconfigure.web.WebProperties.Resources.Chain.Strategy;
import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Component
@Entity
public class PostClass{
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private int idpo;
	private String url;
	public PostClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PostClass(int idpo, String url) {
		super();
		this.idpo = idpo;
		this.url = url;
	}
	
	public PostClass(String url) {
		super();
		this.url = url;
	}
	
	
	public int getId() {
		return idpo;
	}
	public void setId(int idpo) {
		this.idpo = idpo;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "PostClass [id=" + idpo + ", url=" + url + "]";
	}
	
	
}