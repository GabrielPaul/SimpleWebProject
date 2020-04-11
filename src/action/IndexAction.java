package action;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import Service.GoodsService;
import domain.Category;
import domain.Goods;

@SuppressWarnings("serial")
public class IndexAction extends ActionSupport{
	private GoodsService goodsService;
	private List<Goods> carouselGoods = new ArrayList<Goods>();
	private List<Goods> recommandlGoods = new ArrayList<Goods>();
	private List<Goods> newOnShelves = new ArrayList<Goods>();
	List<String> newOnShelvesPic=new ArrayList<>();
	List<String> carouelPic=new ArrayList<>();
	private String detailsGoodsPic;
	private Goods goods_detail;
	private List<Goods> allGoodsPagesOnSale = new ArrayList<Goods>();
	private String pageNow;
	private long totalEntry;	//total onSale goods
	List<String> recomGoodsPic=new ArrayList<>();
	private List<String> adsPic=new ArrayList<>();
	private List<Goods> adsOnShelves = new ArrayList<Goods>();
	private String category;
	private String likeString;

	public String getLikeString() {
		return likeString;
	}

	public void setLikeString(String likeString) {
		this.likeString = likeString;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public List<String> getAdsPic() {
		return adsPic;
	}

	public void setAdsPic(List<String> adsPic) {
		this.adsPic = adsPic;
	}

	public List<Goods> getAdsOnShelves() {
		return adsOnShelves;
	}

	public void setAdsOnShelves(List<Goods> adsOnShelves) {
		this.adsOnShelves = adsOnShelves;
	}

	public List<String> getRecomGoodsPic() {
		return recomGoodsPic;
	}

	public void setRecomGoodsPic(List<String> recomGoodsPic) {
		this.recomGoodsPic = recomGoodsPic;
	}

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

	public List<String> getCarouel() {
		return carouelPic;
	}

	public void setCarouel(List<String> carouel) {
		this.carouelPic = carouel;
	}
	
	public String refreshIndex(){
		List<String> temp=new ArrayList<>();
		carouselGoods=goodsService.getCarouselGoods();
		recommandlGoods=goodsService.getRecommandlGoods();
		newOnShelves=goodsService.getNewOnShelves();
		adsOnShelves=goodsService.getAdsOnShelves();
		
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
		
		for(int i=0;i<recommandlGoods.size();i++) {
			temp = ((Goods)recommandlGoods.get(i)).getPictures();
			for(int j=0;j<temp.size();j++) {
				String str = temp.get(j);
				String []strSplit =str.split("\\.");
				str=strSplit[0]+"_"+strSplit[1];
				recomGoodsPic.add(str);
			}
		}
		
		for(int i=0;i<newOnShelves.size();i++) {
			temp = ((Goods)newOnShelves.get(i)).getPictures();
			for(int j=0;j<temp.size();j++) {
				String str = temp.get(j);
				String []strSplit =str.split("\\.");
				str=strSplit[0]+"_"+strSplit[1];
				newOnShelvesPic.add(str);
			}
		}
		
		for(int i=0;i<adsOnShelves.size();i++) {
			temp = ((Goods)adsOnShelves.get(i)).getPictures();
			for(int j=0;j<temp.size();j++) {
				String str = temp.get(j);
				String []strSplit =str.split("\\.");
				str=strSplit[0]+"_"+strSplit[1];
				adsPic.add(str);
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
		category="全部商品";
		totalEntry=goodsService.getTotalEntry();
		if(totalEntry<=6) {
			allGoodsPagesOnSale = goodsService.getGoodsByPage((int) totalEntry,tempPage);
		}
		else {
			allGoodsPagesOnSale = goodsService.getGoodsByPage(6,tempPage);
		}
		return SUCCESS;
	}
	
	public String getCategoryProducts(){
		Category categoryEum = getCategory(category); 
		allGoodsPagesOnSale = goodsService.findGoodsByCategory(categoryEum);
		return SUCCESS;
	}
	
	public String quary_productsLike(){
		Category categoryEum = getCategory(category);
		//System.out.println(likeString.equals("")); 
		//System.out.println(category +" from category");
		if(likeString ==null || likeString.equals("")) {
			if(categoryEum ==null) {
				allGoodsPagesOnSale = goodsService.getGoodsByPage(6,1);
			}
			else {
				allGoodsPagesOnSale = goodsService.findGoodsByCategory(categoryEum);
			}
		}
		else {
			if(categoryEum ==null) {
				allGoodsPagesOnSale = goodsService.findGoodsByCategoryLike(likeString);
			}
			else {
				allGoodsPagesOnSale = goodsService.findGoodsByCategoryLike(likeString,categoryEum);
			}
		}
		return SUCCESS;
	}
	
	//格式化输出价格方法
	public String formatDouble(double s){
		DecimalFormat fmt = new DecimalFormat("\u00A4##0.00");
		return fmt.format(s);
	}
	
	//获取类别
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
