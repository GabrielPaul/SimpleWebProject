package Dao;

import java.util.List;

import commonDao.BaseDao;
import domain.Goods;
import domain.Seller;

public interface GoodsDao extends BaseDao<Goods>{
	/*
	 * 返回卖家所有的物品
	 */
	List<Goods> fingGoods(Seller seller,boolean state);

	/*
	 * 下架物品
	 */
	void underCarriageGoods(Goods goods);
	
	/*
	 * 上架物品
	 */
	void setOnsellingGoods(Goods goods);
	
	/*
	 * 返回卖家已经下架的物品
	 */
	List<Goods> findUndercarriageGoods(Seller seller);
	
	/*
	 * 返回所有上架的物品
	 */
	List<Goods> getAllOnsellingGoods();
	
	/*
	 * 通过goodsID查找并返回Goods
	 */
	List<Goods> getGoodsById(int id);

	List<Goods> fingByPic(String detailsGoodsPic);
}
