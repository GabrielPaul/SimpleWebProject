package Dao.Imp;

import java.util.List;

import commonDaoImpl.BaseDaoHibernate4;
import domain.Seller;
import Dao.SellerDao;
public class SellerDaoHibernate4 extends BaseDaoHibernate4<Seller> implements SellerDao{

	@Override
	public List<Seller> findByNamePass(Seller seller) {
		return find("select p from Seller p where p.username = ?0"
				+ " and p.password = ?1",seller.getUsername(),seller.getPassword()
				);
	}

	@Override
	public List<Seller> findByName(String sellerName) {
		return find("select p from Seller p where p.username = ?0"
				,sellerName);
	}

}
