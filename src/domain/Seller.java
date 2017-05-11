package domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Seller_info")
public class Seller {
	@Id@Column(name="seller_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int sellerID;
	@Column(unique=true,nullable=false)
	private String username;
	@Column(nullable=false,length=11)
	private String password;
	@Column(nullable=false,length=11)
	private long phoneNum;
	@OneToMany(targetEntity=Goods.class,mappedBy="ownerSeller")
	private Set<Goods> goods=new HashSet<>();
	public int getSellerID() {
		return sellerID;
	}
	public void setSellerID(int sellerID) {
		this.sellerID = sellerID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(long phoneNum) {
		this.phoneNum = phoneNum;
	}
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	public Seller() {

	}
	
}
