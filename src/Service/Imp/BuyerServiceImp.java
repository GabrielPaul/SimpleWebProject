package Service.Imp;
import java.util.List;

import domain.Buyer;
import Dao.BuyerDao;
import Service.BuyerService;

public class BuyerServiceImp implements BuyerService{
	private BuyerDao buyerDao;
	
	public BuyerDao getBuyerDao() {
		return buyerDao;
	}

	public void setBuyerDao(BuyerDao buyerDao) {
		this.buyerDao = buyerDao;
	}

	@Override
	public int addBuyer(Buyer buyer) {
		// TODO Auto-generated method stub
		return (int)buyerDao.save(buyer);
	}

	@Override
	public List<Buyer> findBuyer(Buyer buyer) {
		// TODO Auto-generated method stub
		return buyerDao.findByNamePass(buyer);
	}

	@Override
	public void updateBuyerService(Buyer buyer) {
		// TODO Auto-generated method stub
		System.out.println("buyer'name in service is:"+buyer.getUsername());
		Buyer buyer1 = buyerDao.findByName(buyer.getUsername()).get(0);
		buyer1.setPassword(buyer.getPassword());
	}
	
}
