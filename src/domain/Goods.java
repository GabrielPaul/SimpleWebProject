package domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
@Entity
@Table(name="Goods_info")
public class Goods {
	@Id
	@Column(name="goods_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int goodID;
	//枚举类别
	@Enumerated(EnumType.ORDINAL)
	private Category category;
	private String goodsName;
	@ManyToOne(targetEntity=Seller.class)
	@JoinColumn(name="seller_Id",referencedColumnName="seller_id",nullable=false)
	private Seller ownerSeller;
	private short degreeOld;
	private java.util.Date addTime = new java.util.Date();
	private int onSellTime;
	private double price;
	//图片地址集合属性
	@ElementCollection(targetClass=String.class)
	//映射保存集合属性的表
	@CollectionTable(name="goods_Picture" 
				,joinColumns=@JoinColumn(name="goods_id",nullable=true))
	//指定保存picture地址的列
	@Column(name="picture_address")
	//映射集合元素索引的列
	@OrderColumn(name="list_order")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<String> pictures=new ArrayList<>();
	private String description;
	// false for undercarriage
	// true for on selling
	private boolean state;
	@ManyToOne(targetEntity=Buyer.class)
	@JoinColumn(name="buyer_id",referencedColumnName="buyer_id",nullable=true)
	private Buyer buyer;
	
	public Goods() {

	}

	public int getGoodID() {
		return goodID;
	}

	public void setGoodID(int goodID) {
		this.goodID = goodID;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Seller getOwnerSeller() {
		return ownerSeller;
	}

	public void setOwnerSeller(Seller ownerSeller) {
		this.ownerSeller = ownerSeller;
	}

	public short getDegreeOld() {
		return degreeOld;
	}

	public void setDegreeOld(short degreeOld) {
		this.degreeOld = degreeOld;
	}

	public java.util.Date getAddTime() {
		return addTime;
	}

	public void setAddTime(java.util.Date addTime) {
		this.addTime = addTime;
	}

	public int getOnSellTime() {
		return onSellTime;
	}

	public void setOnSellTime(int onSellTime) {
		this.onSellTime = onSellTime;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List<String> getPictures() {
		return pictures;
	}

	public void setPictures(List<String> pictures) {
		this.pictures = pictures;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	public Buyer getBuyer() {
		return buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}
	
}
