package action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import Service.GoodsService;

import com.opensymphony.xwork2.ActionSupport;

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
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
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
	 * 添加goods用到的方法
	 * @param
	 * @return String SUCCESS
	 */
	public String addGoods(){
		System.out.println(seller.getUsername());
		List<String> changedPicPath = goodsService.getPicName(this.getImages(),
				this.getImagesContentType(),this.getImagesFileName(),seller);
		for(int i=0;i<changedPicPath.size();i++)	System.out.println(changedPicPath.get(i));
		goods.setPictures(changedPicPath);
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
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
}

