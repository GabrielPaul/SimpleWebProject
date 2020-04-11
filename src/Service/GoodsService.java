package Service;

import java.io.File;
import java.util.List;

import domain.Category;
import domain.Goods;
import domain.Seller;

public interface GoodsService{
	int addGoods(Goods goods);

	void underCarriageGoods(int goodsId);
	
	void setOnsellingGoods(int goodsId);

	List<Goods> getOnsellingGoods();
	
	List<Goods> findGoodsById(int id);

	List<String> getPicName(List<File> images, List<String> imagesContextType,
			List<String> imagesFileName,Seller seller);

	List<Goods> getCarouselGoods();
	
	List<Goods> fingGoodsBySeller(Seller seller,boolean state);

	List<Goods> findGoodsByPic(String detailsGoodsPic);

	List<Goods> getGoodsByPage(int pageSize, int pageNow);

	long getTotalEntry();

	List<Goods> getRecommandlGoods();

	List<Goods> getNewOnShelves();

	List<Goods> getAdsOnShelves();

	List<Goods> findGoodsByCategory(Category categoryEum);

	List<Goods> findGoodsByCategoryLike(String likeString, Category categoryEum);

	List<Goods> findGoodsByCategoryLike(String likeString);
	
}
