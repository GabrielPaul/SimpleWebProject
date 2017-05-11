package Dao;

import java.util.List;

import commonDao.BaseDao;
import domain.Buyer;

public interface BuyerDao extends BaseDao<Buyer>{

	List<Buyer> findByNamePass(Buyer buyer);

	List<Buyer> findByName(String username);

}
