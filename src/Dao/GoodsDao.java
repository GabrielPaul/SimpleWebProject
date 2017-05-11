package Dao;

import java.util.List;

import commonDao.BaseDao;
import domain.Goods;
import domain.Seller;

public interface GoodsDao extends BaseDao<Goods>{
	/*
	 * ���������������ڳ��۵���Ʒ
	 */
	List<Goods> fingOnsellingGoods(Seller seller);

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
}
