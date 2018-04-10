package com.pyw.open;

/**
 * 
 *
 *orderID 和payResult是必须传的参数
 */
public class PayResult {

	private String productID;
	private String productName;
	private String orderID;
	private String extension;
	private boolean payResult;
	
	public boolean isPayResult() {
		return payResult;
	}
	public void setPayResult(boolean payResult) {
		this.payResult = payResult;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public String getExtension() {
		return extension;
	}
	public void setExtension(String extension) {
		this.extension = extension;
	}
	@Override
	public String toString() {
		return "PayResult [productID=" + productID + ", productName=" + productName + ", orderID=" + orderID
				+ ", extension=" + extension + ", payResult=" + payResult + "]";
	}
	
}
