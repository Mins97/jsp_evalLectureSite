package dao;

public class CommentObj {
	private String id, content, author;
	private Integer star;
	
	public CommentObj(String id, String content, Integer star, String author) {
		this.id = id;
		this.content = content;
		this.star = star;
		this.author = author;
	}
	
	public String getId() { return this.id; }
	public String getContent() { return this.content; }
	public Integer getStar() { return this.star; }
	public String getAuthor() { return this.author; }
}
