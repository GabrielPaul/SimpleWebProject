package action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import Service.GoodsService;

import com.opensymphony.xwork2.ActionSupport;

import domain.Category;
import domain.Goods;
import domain.Seller;

@SuppressWarnings("serial")
public class GoodsAction extends ActionSupport{
	private Goods goods;
	private Seller seller;
	private int goodsId;
	private GoodsService goodsService;
	private List<Goods> goodses;
	private List<File> images=new ArrayList<File>();
	private List<String> imagesContentType = new ArrayList<String>();
	private List<String> imagesFileName = new ArrayList<String>();
	private String category;
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public GoodsService getGoodsService() {
		return goodsService;
	}
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	public List<Goods> getGoodses() {
		return goodses;
	}
	public void setGoodses(List<Goods> goodses) {
		this.goodses = goodses;
	}
	public List<File> getImages() {
		return images;
	}
	public void setImages(List<File> images) {
		this.images = images;
	}
	public List<String> getImagesContentType() {
		return imagesContentType;
	}
	public void setImagesContentType(List<String> imagesContentType) {
		this.imagesContentType = imagesContentType;
	}
	public List<String> getImagesFileName() {
		return imagesFileName;
	}
	public void setImagesFileName(List<String> imagesFileName) {
		this.imagesFileName = imagesFileName;
	}
	/**
	 * ���goods�õ��ķ���
	 * @param
	 * @return String SUCCESS
	 */
	public String addGoods(){
		
		//debug code
		/*if(seller !=null)
		System.out.println(seller.getUsername());
		//System.out.println(goods.getGoodsName());
		ServletContext servletContext = this.getServletContext();
		String path = servletContext.getRealPath("/");
		
		*/
		
		List<String> changedPicPath = goodsService.getPicName(this.getImages(),
				this.getImagesContentType(),this.getImagesFileName(),seller);
		for(int i=0;i<changedPicPath.size();i++)	System.out.println(changedPicPath.get(i));
		goods.setPictures(changedPicPath);
		goods.setCategory(getCategory(category));
		System.out.println(goods.getGoodsName());
		goodsService.addGoods(goods);
		return SUCCESS;
	}
	public String underCarriage(){
		goodsService.underCarriageGoods(goodsId);
		return SUCCESS;
	}
	public String setOnselling(){
		goodsService.setOnsellingGoods(goodsId);
		return SUCCESS;
	}
	public String viewAllOnselling(){
		setGoodses(goodsService.getOnsellingGoods());
		return SUCCESS;
	}
	public String detailOfGoodsSeller(){
		goodses = goodsService.findGoodsById(goodsId);
		goods = goodses.get(0);
		setSeller(goods.getOwnerSeller());
		return SUCCESS;
	}
	
	static Category getCategory(String category) {
		Category ret = null;
		switch(category) {
			case "书籍": ret = Category.book;
				break;
			case "衣物": ret = Category.cloth;
				break;
			case "鞋子": ret = Category.shoose;
				break;
			case "裤子": ret = Category.pants;
				break;
			case "运动相关": ret = Category.sportThings;
				break;
			case "生活用品": ret = Category.routinThings;
				break;
			case "数码产品": ret = Category.digitalProduct;
				break;
			case "其他": ret = Category.other;
				break;
		}
		return ret;
	}
}

