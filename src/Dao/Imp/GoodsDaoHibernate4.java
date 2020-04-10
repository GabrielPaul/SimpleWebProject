package Dao.Imp;

import java.util.List;

import commonDaoImpl.BaseDaoHibernate4;
import domain.Goods;
import domain.Seller;
import Dao.GoodsDao;
public class GoodsDaoHibernate4 extends BaseDaoHibernate4<Goods> implements GoodsDao{

	@Override
	public List<Goods> fingGoods(Seller seller,boolean state) {
		// TODO Auto-generated method stub
		return find("select p from Goods p where p.ownerSeller = ?0"
				+" and p.state = ?1",seller,state);
	}

	@Override
	public void underCarriageGoods(Goods goods) {
		// TODO Auto-generated method stub
		goods.setState(false);
	}

	@Override
	public List<Goods> findUndercarriageGoods(Seller seller) {
		// TODO Auto-generated method stub
		return find("select p from Goods p where p.ownerSeller = ?0"
				+" and p.state = ?1",seller,false);
	}

	@Override
	public void setOnsellingGoods(Goods goods) {
		// TODO Auto-generated method stub
		goods.setState(true);
	}

	@Override
	public List<Goods> getAllOnsellingGoods() {
		// TODO Auto-generated method stub
		return find("select p from Goods p where p.state = ?0",true);
	}

	@Override
	public List<Goods> getGoodsById(int id) {
		// TODO Auto-generated method stub
		return find("select p from Goods p where p.goodID = ?0",id);
	}

	@Override
	public List<Goods> fingByPic(String detailsGoodsPic) {
		// TODO Auto-generated method stub
		return find("select p from Goods p where'"+detailsGoodsPic+"' in elements(p.pictures)");
	}


}
