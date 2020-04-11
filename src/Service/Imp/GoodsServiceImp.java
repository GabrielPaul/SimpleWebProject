package Service.Imp;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import tools.CopyDirection;
import domain.Category;
import domain.Goods;
import domain.Seller;
import Dao.SellerDao;
import Service.GoodsService;
import Dao.GoodsDao;
public class GoodsServiceImp implements GoodsService{
	private GoodsDao goodsDao;
	private SellerDao sellerDao;
	//ע��goodsDao�����set����
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	public void setSellerDao(SellerDao sellerDao) {
		this.sellerDao = sellerDao;
	}

	@Override
	public int addGoods(Goods goods) {
		String sellerName=(String) ServletActionContext.getRequest().getSession().getAttribute("sellerName");
		List<Seller> sellers=sellerDao.findByName(sellerName);
		goods.setAddTime(new java.util.Date());
		goods.setOwnerSeller(sellers.get(0));
		goods.setState(true);
		return (int)goodsDao.save(goods);
	}

	@Override
	public void underCarriageGoods(int goodsId) {
		//���س־û�ʵ�壬�޸ĺ���Ҫupdate
		Goods goods = goodsDao.get(Goods.class, goodsId);
		goodsDao.underCarriageGoods(goods);
	}

	@Override
	public void setOnsellingGoods(int goodsId) {
		//���س־û�ʵ�壬�޸ĺ���Ҫupdate
		Goods goods = goodsDao.get(Goods.class, goodsId);
		goodsDao.setOnsellingGoods(goods);
	}

	@Override
	public List<Goods> getOnsellingGoods() {
		// TODO Auto-generated method stub
		return goodsDao.getAllOnsellingGoods();
	}

	@Override
	public List<Goods> findGoodsById(int id) {
		// TODO Auto-generated method stub
		return goodsDao.getGoodsById(id);
	}

	/**
	 * @param iamges ͼƬ�ļ�����
	 * @param imagesContextType ͼƬ���ͼ���
	 * @param imagesFileName ͼƬ������
	 * @return List picturePath
	 */
	@Override
	public List<String> getPicName(List<File> images,
			List<String> imagesContextType, List<String> imagesFileName,Seller seller) {
		//�����ϴ�ͼƬ����·��
		String backupPath = "C:\\Users\\Administrator\\Desktop\\new_file\\images";
		List<String> changedFileName = new ArrayList<String>();
		for(int i=0;i < images.size();i++){
			changedFileName.add(seller.getUsername()+"_" + new java.util.Date().getTime()+getExtention(imagesFileName.get(i)));
			String dstPath=ServletActionContext.getServletContext().getRealPath("/WEB-INF/images");
			System.out.println(dstPath);
			File dstFile = new File(dstPath);
			if(!dstFile.exists()){
				dstFile.mkdirs();											//�����༶Ŀ¼
				CopyDirection.picCopy(backupPath, dstFile.getAbsolutePath()); 				//�ӱ����ļ�����������·��
			}
			File dstFilePic = new File(dstPath,changedFileName.get(i));		//�ڲ���·������pic�ļ�����
			if(!dstFilePic.exists()) {
				try {
					dstFilePic.createNewFile();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			CopyDirection.picCopy(images.get(i),dstFilePic);				//�����ļ�����
			CopyDirection.picCopy(images.get(i),new File(backupPath,changedFileName.get(i)));	//�����ļ�
		}
		return changedFileName;
	}
	private static String getExtention(String fileName){
		int pos=fileName.indexOf(".");
		return fileName.substring(pos);
	}

	@Override
	public List<Goods> getCarouselGoods() {
		// TODO Auto-generated method stub
		//return goodsDao.getAllOnsellingGoods();
		List<Goods> ret = new ArrayList<Goods>();
		List<Seller> sellers = new ArrayList<Seller>();
		sellers = sellerDao.findByName("gabriel");
		for(int i=0;i<sellers.size();i++) {
			List<Goods> tempGoods = new ArrayList<Goods>();
			tempGoods = goodsDao.fingGoods(sellers.get(i), true);
			for(int j=0;j<tempGoods.size();j++) {
				ret.add(tempGoods.get(j));
			}
		}
		return ret;
	}

	@Override
	public List<Goods> fingGoodsBySeller(Seller seller, boolean state) {
		// TODO Auto-generated method stub
		return goodsDao.fingGoods(seller, state);
	}

	@Override
	public List<Goods> findGoodsByPic(String detailsGoodsPic) {
		// TODO Auto-generated method stub
		return goodsDao.fingByPic(detailsGoodsPic);
	}

	@Override
	public List<Goods> getGoodsByPage(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		return goodsDao.findByPage(pageSize,pageNow);
	}

	@Override
	public long getTotalEntry() {
		// TODO Auto-generated method stub
		return goodsDao.findTotalEntry(true);
	}

	@Override
	public List<Goods> getRecommandlGoods() {
		List<Goods> ret = new ArrayList<Goods>();
		List<Seller> sellers = new ArrayList<Seller>();
		sellers = sellerDao.findByName("recommand");
		for(int i=0;i<sellers.size();i++) {
			List<Goods> tempGoods = new ArrayList<Goods>();
			tempGoods = goodsDao.fingGoods(sellers.get(i), true);
			for(int j=0;j<tempGoods.size();j++) {
				ret.add(tempGoods.get(j));
			}
		}
		return ret;
	}

	@Override
	public List<Goods> getNewOnShelves() {
		List<Goods> ret = new ArrayList<Goods>();
		List<Goods> tempGoods = new ArrayList<Goods>();
		tempGoods = goodsDao.findNewAdd(6);
		for(int j=0;j<tempGoods.size();j++) {
			ret.add(tempGoods.get(j));
		}
		return ret;
	}

	@Override
	public List<Goods> getAdsOnShelves() {
		List<Goods> ret = new ArrayList<Goods>();
		List<Seller> sellers = new ArrayList<Seller>();
		sellers = sellerDao.findByName("ads");
		for(int i=0;i<sellers.size();i++) {
			List<Goods> tempGoods = new ArrayList<Goods>();
			tempGoods = goodsDao.fingGoods(sellers.get(i), true);
			for(int j=0;j<tempGoods.size();j++) {
				ret.add(tempGoods.get(j));
			}
		}
		return ret;
	}

	@Override
	public List<Goods> findGoodsByCategory(Category categoryEum) {
		// TODO Auto-generated method stub
		return goodsDao.findByCategory(categoryEum);
	}

	@Override
	public List<Goods> findGoodsByCategoryLike(String likeString, Category categoryEum) {
		// TODO Auto-generated method stub
		return goodsDao.findByCategoryLike(likeString,categoryEum);
	}

	@Override
	public List<Goods> findGoodsByCategoryLike(String likeString) {
		// TODO Auto-generated method stub
		return goodsDao.findByCategoryLike(likeString);
	}
}
