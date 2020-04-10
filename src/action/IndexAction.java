package action;

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
				System.out.println(str); 
				carouelPic.add(str);
			}
		}
		
		
		//carouelPic.add("2_jpg");
		//carouelPic.add("gabriel_1494221729732_jpg");
		//carouelPic.add("gabriel_1586419634075_jpg");
		return SUCCESS;
	}

}
