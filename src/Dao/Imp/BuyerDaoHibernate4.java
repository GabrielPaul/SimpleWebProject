package Dao.Imp;

import java.util.List;

import commonDaoImpl.BaseDaoHibernate4;
import domain.Buyer;
import Dao.BuyerDao;

public class BuyerDaoHibernate4 extends BaseDaoHibernate4<Buyer> implements BuyerDao{

	@Override
	public List<Buyer> findByNamePass(Buyer buyer) {
		// TODO Auto-generated method stub
		return find("select p from Buyer p where p.username = ?0"
				+ " and p.password = ?1",buyer.getUsername(),buyer.getPassword());
	}

	@Override
	public List<Buyer> findByName(String username) {
		// TODO Auto-generated method stub
		return find("select p from Buyer p where p.username=?0",username);
	}

}
