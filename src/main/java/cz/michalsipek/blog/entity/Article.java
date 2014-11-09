package cz.michalsipek.blog.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Article entity
 * 
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */
@Entity
public class Article {

	/**
	 * Attributes
	 * */
	@Id
	@GeneratedValue
	private Integer id;
	
	@Size(min=3, max=250)
	private String title;
	
	@Size(min=3)
	private String content;
	
	@Size(min=3)
	private String perex;
	
	private Date publishDate;
	
	private int enable;
	
	@ManyToOne(cascade = CascadeType.REMOVE)
	@JoinColumn(name = "user_id")
	private User user;
	
	@NotEmpty
	@ManyToMany(cascade = CascadeType.REMOVE)
	@JoinTable(name = "article_category", 
    joinColumns={@JoinColumn(name="article_id")}, 
    inverseJoinColumns={@JoinColumn(name="category_id")})
	private List<Category> categories;
	
	/**
	 * Getters and setters
	 * */
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Category> getCategories() {
		return categories;
	}
	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	public String getPerex() {
		return perex;
	}
	public void setPerex(String perex) {
		this.perex = perex;
	}
	public int getEnable() {
		return enable;
	}
	public void setEnable(int enable) {
		this.enable = enable;
	}
}
