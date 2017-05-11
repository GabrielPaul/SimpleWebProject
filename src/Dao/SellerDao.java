package Dao;

import java.util.List;

import commonDao.BaseDao;
import domain.Seller;

public interface SellerDao extends BaseDao<Seller>{
	/*
	 * find seller by name and password
	 */
	List<Seller> findByNamePass(Seller seller);
	/*
	 * find seller by name
	 */
	List<Seller> findByName(String sellerName);
}
