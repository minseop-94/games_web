package dto;

public class PeopleDTO {
	private int id;
	private String img;
	private String title;
	private String theme;
	private String content;
	
	
	
	public PeopleDTO() {
	}

	public PeopleDTO(int id, String img, String title, String theme, String content) {
		super();
		this.id = id;
		this.img = img;
		this.title = title;
		this.theme = theme;
		this.content = content;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
