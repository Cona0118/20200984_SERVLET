package dto;
import java.io.Serializable; // 직렬화 클래스 연동

public class Product implements Serializable { // 인터페이스 선언

	private static final long serialVersionUID = -4274700572038677000L;

	private String productId;	//게임 아이디
	private String pname;		//게임 명
	private Integer unitPrice; //게임 가격
	private String description; //게임 설명
	private String manufacturer;//제작사
	private String category; 	//분류
	private long userInGame; //유저수
    
    private String filename; 	// 파일 이름 변수
    
    private int quantity;	//장바구니에 담은 개수


	public Product() {
		super();
	}

	public Product(String productId, String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	public String getProductId() {
		return productId;
	}

	public String getPname() {
		return pname;
	}

    public void setPname(String pname) {
		this.pname = pname;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}
    
    public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUserInGame() {
		return userInGame;
	}

	public void setUserInGame(long userInGame) {
		this.userInGame = userInGame;
	}
    
    public void setFilename(String filename) { // 파일 이름 설정
	this.filename = filename;
    }

    public String getFilename() { // 파일 이름 리턴
	return filename;
    }

    public int getQuantity() {
	return quantity;
    }

    public void setQuantity(int quantity) {
	this.quantity = quantity;
        }

}
