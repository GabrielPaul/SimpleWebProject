package action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import Service.SellerService;

import com.opensymphony.xwork2.ActionSupport;

import domain.Goods;
import domain.Seller;

@SuppressWarnings("serial")
public class SellerAction extends ActionSupport{
	private Seller seller;
	private SellerService sellerService;
	private int sellerId;
	private List<Goods> goodses;
	//注入service的set方法
	//自动装配
	public void setSellerService(SellerService sellerService){
		this.sellerService=sellerService;
	}
	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public SellerService getSellerService() {
		return sellerService;
	}

	public List<Goods> getGoodses() {
		return goodses;
	}
	public void setGoodses(List<Goods> goodses) {
		this.goodses = goodses;
	}
	public String registerAsSeller(){
		int result = sellerService.addSeller(seller);
		if(result >0) {
			ServletActionContext.getRequest().getSession().setAttribute("userName", seller.getUsername());
			return SUCCESS;
		}
		return ERROR;
	}
	public String verifyLogin(){
		if(!(sellerService.findSeller(seller).isEmpty())){
			//在session中设置用户名
			ServletActionContext.getRequest().getSession().setAttribute("sellerName", seller.getUsername());
			//在session中设置seller phone
			long phone = sellerService.findSeller(seller).get(0).getPhoneNum();
			ServletActionContext.getRequest().getSession().setAttribute("sellerPhone", phone);
			System.out.println("seller's phone is :" + phone);
			return SUCCESS;
		}
		return ERROR;
	}
	public String viewOnselling(){
		String sellerName=(String) ServletActionContext.getRequest().getSession().getAttribute("sellerName");
		setGoodses(sellerService.viewOnselling(sellerName)); 
		return SUCCESS;
	}
	public String viewUnderCarriage(){
		String sellerName=(String) ServletActionContext.getRequest().getSession().getAttribute("sellerName");
		setGoodses(sellerService.viewUndercarriage(sellerName));
		return SUCCESS;
	}
	public String updateSeller(){
		System.out.println("In sellerAction seller's password is:" + seller.getPassword());
		System.out.println("In sellerAction seller's phone is :"+seller.getPhoneNum());
		sellerService.updateSeller(seller);
		//在session中设置seller phone
		long phone = sellerService.findSeller(seller).get(0).getPhoneNum();
		ServletActionContext.getRequest().getSession().setAttribute("sellerPhone", phone);
		return SUCCESS;
	}
}
