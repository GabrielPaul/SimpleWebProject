package Dao;

import java.util.List;

import commonDao.BaseDao;
import domain.Category;
import domain.Goods;
import domain.Seller;

public interface GoodsDao extends BaseDao<Goods>{
	/*
	 * �����������е���Ʒ
	 */
	List<Goods> fingGoods(Seller seller,boolean state);

	/*
	 * �¼���Ʒ
	 */
	void underCarriageGoods(Goods goods);
	
	/*
	 * �ϼ���Ʒ
	 */
	void setOnsellingGoods(Goods goods);
	
	/*
	 * ���������Ѿ��¼ܵ���Ʒ
	 */
	List<Goods> findUndercarriageGoods(Seller seller);
	
	/*
	 * ���������ϼܵ���Ʒ
	 */
	List<Goods> getAllOnsellingGoods();
	
	/*
	 * ͨ��goodsID���Ҳ�����Goods
	 */
	List<Goods> getGoodsById(int id);

	List<Goods> fingByPic(String detailsGoodsPic);

	List<Goods> findByPage(int pageSize, int pageNow);

	long findTotalEntry(boolean state);

	List<Goods> findNewAdd(int resultNum);

	List<Goods> findByCategory(Category categoryEum);

	List<Goods> findByCategoryLike(String likeString, Category categoryEum);

	List<Goods> findByCategoryLike(String likeString);
}
