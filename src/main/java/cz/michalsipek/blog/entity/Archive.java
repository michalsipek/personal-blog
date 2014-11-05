package cz.michalsipek.blog.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Size;


@Entity
public class Archive {
	
	/**
	 * Attributes
	 * */
	@Id
	@GeneratedValue
	private int id;
	
	@Size(min=3, max=50)
	private String title;
	
	@Size(min=3, max=50)
	private String location;

	public Archive() {
	}

	public Archive(int id, String title, String location) {
		this.id = id;
		this.title = title;
		this.location = location;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	

}
