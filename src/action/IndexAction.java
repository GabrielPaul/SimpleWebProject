package action;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import Service.GoodsService;
import domain.Goods;

@SuppressWarnings("serial")
public class IndexAction extends ActionSupport{
	private GoodsService goodsService;
	private List<Goods> carouselGoods = new ArrayList<Goods>();
	private List<Goods> recommandlGoods = new ArrayList<Goods>();
	private List<Goods> newOnShelves = new ArrayList<Goods>();
	List<String> newOnShelvesPic=new ArrayList<>();
	List<String> carouelPic=new ArrayList<>();
	List<String> recommandPic=new ArrayList<>();
	private String detailsGoodsPic;
	private Goods goods_detail;
	private List<Goods> allGoodsPagesOnSale = new ArrayList<Goods>();
	private String pageNow;
	private long totalEntry;	//total onSale goods

	public long getTotalEntry() {
		return totalEntry;
	}

	public void setTotalEntry(long totalEntry) {
		this.totalEntry = totalEntry;
	}

	public String getPageNow() {
		return pageNow;
	}

	public void setPageNow(String pageNow) {
		this.pageNow = pageNow;
	}

	public List<Goods> getAllGoodsPagesOnSale() {
		return allGoodsPagesOnSale;
	}

	public void setAllGoodsPagesOnSale(List<Goods> allGoodsPagesOnSale) {
		this.allGoodsPagesOnSale = allGoodsPagesOnSale;
	}
	
	public Goods getGoods_detail() {
		return goods_detail;
	}

	public void setGoods_detail(Goods goods_detail) {
		this.goods_detail = goods_detail;
	}

	public String getDetailsGoodsPic() {
		return detailsGoodsPic;
	}

	public void setDetailsGoodsPic(String detailsGoodsPic) {
		this.detailsGoodsPic = detailsGoodsPic;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public List<String> getNewOnShelvesPic() {
		return newOnShelvesPic;
	}

	public void setNewOnShelvesPic(List<String> newOnShelvesPic) {
		this.newOnShelvesPic = newOnShelvesPic;
	}

	public List<Goods> getRecommandlGoods() {
		return recommandlGoods;
	}

	public void setRecommandlGoods(List<Goods> recommandlGoods) {
		this.recommandlGoods = recommandlGoods;
	}

	public List<Goods> getNewOnShelves() {
		return newOnShelves;
	}

	public void setNewOnShelves(List<Goods> newOnShelves) {
		this.newOnShelves = newOnShelves;
	}
	public List<Goods> getGoods() {
		return carouselGoods;
	}

	public void setGoods(List<Goods> goods) {
		this.carouselGoods = goods;
	}

	public List<String> getPictures() {
		return recommandPic;
	}

	public void setPictures(List<String> pictures) {
		this.recommandPic = pictures;
	}

	public List<String> getCarouel() {
		return carouelPic;
	}

	public void setCarouel(List<String> carouel) {
		this.carouelPic = carouel;
	}
	
	public String refreshIndex(){
		List<String> temp=new ArrayList<>();
		carouselGoods=goodsService.getCarouselGoods();
		//recommandlGoods=goodsService.getRecommandlGoods();
		//newOnShelves=goodsService.getnewOnShelves();
		for(int i=0;i<carouselGoods.size();i++) {
			temp = ((Goods)carouselGoods.get(i)).getPictures();
			for(int j=0;j<temp.size();j++) {
				String str = temp.get(j);
				String []strSplit =str.split("\\.");
				str=strSplit[0]+"_"+strSplit[1];
				//System.out.println(str); 
				carouelPic.add(str);
			}
		}
		
		return SUCCESS;
	}

	public String showProductDetails(){
		String subStr1,subStr2;
		String saveOldStriPic;
		List<Goods> goodslist= new ArrayList<Goods>();
		
		saveOldStriPic=detailsGoodsPic;
		subStr1 = detailsGoodsPic.substring(0, detailsGoodsPic.length()-4);
		subStr2 = detailsGoodsPic.substring(detailsGoodsPic.length()-3, detailsGoodsPic.length());
		detailsGoodsPic = subStr1+"."+subStr2;
		//System.out.println(detailsGoodsPic +" from showProductDetails"); 
		goodslist = goodsService.findGoodsByPic(detailsGoodsPic);
		detailsGoodsPic=saveOldStriPic;
		goods_detail = goodslist.get(0);
		//debug System.out.println(goods_detail.getGoodsName() +" from showProductDetails");
		return SUCCESS;
	}
	
	public String getAllProducts(){
		int tempPage = Integer.parseInt(pageNow);
		totalEntry=goodsService.getTotalEntry();
		if(totalEntry<=6) {
			allGoodsPagesOnSale = goodsService.getGoodsByPage((int) totalEntry,tempPage);
		}
		else {
			allGoodsPagesOnSale = goodsService.getGoodsByPage(6,tempPage);
		}
		//debug System.out.println(allGoodsPagesOnSale.size() +" allGoodsPagesOnSale"); 
		for(int i=0;i<allGoodsPagesOnSale.size();i++) {
			for(int j=0;j<allGoodsPagesOnSale.get(i).getPictures().size();j++) {
				String temp = allGoodsPagesOnSale.get(i).getPictures().get(j);
				
			}
		}
		
		return SUCCESS;
	}
	
	//格式化输出价格方法
	public String formatDouble(double s){
		DecimalFormat fmt = new DecimalFormat("\u00A4##0.00");
		return fmt.format(s);
	}
}
