package j221115;

public class ProductVO {
	
	private String pName;
	private String pPrice;
	private String pStock;
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpPrice() {
		return pPrice;
	}
	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}
	public String getpStock() {
		return pStock;
	}
	public void setpStock(String pStock) {
		this.pStock = pStock;
	}
	
	@Override
	public String toString() {
		return "ProductVO [pName=" + pName + ", pPrice=" + pPrice + ", pStock=" + pStock + "]";
	}
	
	public ProductVO(String pName, String pPrice, String pStock) {
		super();
		this.pName = pName;
		this.pPrice = pPrice;
		this.pStock = pStock;
	}
}
