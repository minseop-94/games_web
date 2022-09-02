package dto;

public class MovieDTO {
	
	private String title;
	private String answer;
	private String path;
	
	
	public MovieDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MovieDTO(String title, String answer, String path) {
		super();
		this.title = title;
		this.answer = answer;
		this.path = path;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the answer
	 */
	public String getAnswer() {
		return answer;
	}
	/**
	 * @param answer the answer to set
	 */
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	/**
	 * @return the path
	 */
	public String getPath() {
		return path;
	}
	/**
	 * @param path the path to set
	 */
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "MovieDTO [title=" + title + ", answer=" + answer + ", path=" + path + "]";
	}
	
	
	
}
