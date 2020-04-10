package Dao.Imp;

import java.util.List;

import org.hibernate.Query;

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

	@SuppressWarnings("unchecked")
	@Override
	public List<Goods> findByPage(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		String hql = "select p from Goods p where p.state = "+true+" order by p.goodID";
		
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setFirstResult(pageNow*pageSize-pageSize);
		query.setMaxResults(pageSize);
		return (List<Goods>)query.list();
		//return (List<Goods>)getSessionFactory().getCurrentSession().createQuery(hql).list();
		//return find("select * from Goods p order by p.goodID limit "+(pageNow*pageSize-pageSize)+","+2);
	}

	@Override
	public long findTotalEntry(boolean state) {
		// TODO Auto-generated method stub
		List<?> l = find("select count(*) from Goods p where p.state = "+true);
		if (l != null && l.size() == 1 )
		{
			return (long)l.get(0);
		}
		return 0;
	}


}
