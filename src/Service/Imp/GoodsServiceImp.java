package Service.Imp;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import tools.CopyDirection;
import domain.Goods;
import domain.Seller;
import Dao.SellerDao;
import Service.GoodsService;
import Dao.GoodsDao;
public class GoodsServiceImp implements GoodsService{
	private GoodsDao goodsDao;
	private SellerDao sellerDao;
	//注入goodsDao所需的set方法
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
		//加载持久化实体，修改后不需要update
		Goods goods = goodsDao.get(Goods.class, goodsId);
		goodsDao.underCarriageGoods(goods);
	}

	@Override
	public void setOnsellingGoods(int goodsId) {
		//加载持久化实体，修改后不需要update
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
	 * @param iamges 图片文件集合
	 * @param imagesContextType 图片类型集合
	 * @param imagesFileName 图片名集合
	 * @return List picturePath
	 */
	@Override
	public List<String> getPicName(List<File> images,
			List<String> imagesContextType, List<String> imagesFileName,Seller seller) {
		//设置上传图片备份路径
		String backupPath = "C:\\Users\\Administrator\\Desktop\\new_file\\images";
		List<String> changedFileName = new ArrayList<String>();
		for(int i=0;i < images.size();i++){
			changedFileName.add(seller.getUsername()+"_" + new java.util.Date().getTime()+getExtention(imagesFileName.get(i)));
			String dstPath=ServletActionContext.getServletContext().getRealPath("/images");
			System.out.println(dstPath);
			File dstFile = new File(dstPath);
			if(!dstFile.exists()){
				dstFile.mkdirs();											//创建多级目录
				CopyDirection.picCopy(backupPath, dstFile.getAbsolutePath()); 				//从备份文件拷贝到部署路径
			}
			File dstFilePic = new File(dstPath,changedFileName.get(i));		//在部署路径创建pic文件对象
			if(!dstFilePic.exists()) {
				try {
					dstFilePic.createNewFile();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			CopyDirection.picCopy(images.get(i),dstFilePic);				//拷贝文件内容
			CopyDirection.picCopy(images.get(i),new File(backupPath,changedFileName.get(i)));	//备份文件
		}
		return changedFileName;
	}
	private static String getExtention(String fileName){
		int pos=fileName.indexOf(".");
		return fileName.substring(pos);
	}
}
