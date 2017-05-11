package Service;

import java.util.List;

import domain.Goods;
import domain.Seller;

public interface SellerService {
	int addSeller(Seller seller);
	List<Seller> findSeller(Seller seller);
	int addGoods(Goods goods);
	List<Seller> findSellerByName(String sellerName);
	List<Goods> viewOnselling(String sellerName);
	List<Goods> viewUndercarriage(String sellerName);
	void updateSeller(Seller seller);
}
