package Service;

import java.util.List;

import domain.Buyer;

public interface BuyerService {
	int addBuyer(Buyer buyer);
	List<Buyer> findBuyer(Buyer buyer);
	void updateBuyerService(Buyer buyer);
}
