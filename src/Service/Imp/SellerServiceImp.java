package Service.Imp;

import java.util.List;

import domain.Goods;
import domain.Seller;
import Service.SellerService;
import Dao.SellerDao;
import Dao.GoodsDao;

public class SellerServiceImp implements SellerService{
	private SellerDao sellerDao;
	private GoodsDao goodsDao;
	
	public void setSellerDao(SellerDao sellerDao) {
		this.sellerDao = sellerDao;
	}
	
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	public SellerDao getSellerDao() {
		return sellerDao;
	}

	public GoodsDao getGoodsDao() {
		return goodsDao;
	}

	@Override
	public int addSeller(Seller seller) {
		// TODO Auto-generated method stub
		return (int) sellerDao.save(seller);
	}

	@Override
	public List<Seller> findSeller(Seller seller) {
		// TODO Auto-generated method stub
		return sellerDao.findByNamePass(seller);
	}

	@Override
	public int addGoods(Goods goods) {
		// TODO Auto-generated method stub
		return (int) goodsDao.save(goods);
	}

	@Override
	public List<Seller> findSellerByName(String sellerName) {
		// TODO Auto-generated method stub
		return sellerDao.findByName(sellerName);
	}

	@Override
	public List<Goods> viewOnselling(String sellerName) {
		// TODO Auto-generated method stub
		Seller seller = sellerDao.findByName(sellerName).get(0);
		return goodsDao.fingGoods(seller,true);
	}

	@Override
	public List<Goods> viewUndercarriage(String sellerName) {
		// TODO Auto-generated method stub
		Seller seller = sellerDao.findByName(sellerName).get(0);
		return goodsDao.findUndercarriageGoods(seller);
	}

	@Override
	public void updateSeller(Seller seller) {
		// TODO Auto-generated method stub
		Seller seller1 = sellerDao.findByName(seller.getUsername()).get(0);
		//通过HQL查询得到的实体，处于持久化状态
		//无需通过saveOrUpdate保持
		seller1.setPassword(seller.getPassword());
		seller1.setPhoneNum(seller.getPhoneNum());
	}
}
