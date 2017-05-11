package action;

import org.apache.struts2.ServletActionContext;

import Service.BuyerService;

import com.opensymphony.xwork2.ActionSupport;

import domain.Buyer;

@SuppressWarnings("serial")
public class BuyerAction extends ActionSupport{
	private Buyer buyer;
	private BuyerService buyerService;
	private int buyerId;
	public Buyer getBuyer() {
		return buyer;
	}
	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}
	public BuyerService getBuyerService() {
		return buyerService;
	}
	public void setBuyerService(BuyerService buyerService) {
		this.buyerService = buyerService;
	}
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	public String addBuyer(){
		int result = buyerService.addBuyer(buyer);
		if(result > 0){
			ServletActionContext.getRequest().getSession().setAttribute("buyerName", buyer.getUsername());
			return SUCCESS;
		}
		return ERROR;
	}
	public String verifyLogin(){
		if(!(buyerService.findBuyer(buyer).isEmpty())){
			ServletActionContext.getRequest().getSession().setAttribute("buyerName", buyer.getUsername());
			return SUCCESS;
		}
		ServletActionContext.getRequest().getSession().setAttribute("message", "Login failed!");
		return ERROR;
	}
	public String updateBuyer(){
		System.out.println("buyer'name in action is:"+buyer.getUsername());
		buyerService.updateBuyerService(buyer);
		return SUCCESS;
	}
}
