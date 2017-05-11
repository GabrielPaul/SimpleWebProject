package domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Buyer_info")
public class Buyer {
	@Id
	@Column(name="buyer_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int buyerID;
	@Column(unique=true,nullable=false)
	private String username;
	private String password;
	@OneToMany(targetEntity=Goods.class,mappedBy="buyer")
	private Set<Goods> goods=new HashSet<>();
	public int getBuyerID() {
		return buyerID;
	}
	public void setBuyerID(int buyerID) {
		this.buyerID = buyerID;
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
	public Buyer() {

	}
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	
}
