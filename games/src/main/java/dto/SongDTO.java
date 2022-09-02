package dto;

public class SongDTO {
	private int id;
	private String mp3;
	private String title;
	private String singer;
	private int year;
	private String genre;
	
	public SongDTO() {
	}
	
	public SongDTO(int id, String mp3, String title, String singer, int year, String genre) {
		super();
		this.id = id;
		this.mp3 = mp3;
		this.title = title;
		this.singer = singer;
		this.year = year;
		this.genre = genre;
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
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getMp3() {
		return mp3;
	}

	public void setMp3(String mp3) {
		this.mp3 = mp3;
	}
	
	
}
