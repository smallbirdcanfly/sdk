package com.pyw.open;

/***
 * 支付参数
 * 
 */
public class PayParams {

	private String productId;
	private String productName;
	private int price;
	private String chargeType;
	private String orderID;
	private String extension;
	// private int buyNum;
	// private int coinNum;
	// private String serverId;
	private String serverAreaName;
	private String roleName;

	public String getServerName() {
		return serverAreaName;
	}

	/**
	 * 区服名称
	 * 
	 * @param serverName
	 */
	public void setServerName(String serverName) {
		this.serverAreaName = serverName;
	}

	public String getRoleName() {
		return roleName;
	}

	/**
	 * 角色名称
	 * 
	 * @param roleName
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getChargeType() {
		return chargeType;
	}

	/**
	 * 充值类型，定额充1，任意充2
	 * 
	 */
	public void setChargeType(String chargeType) {
		this.chargeType = chargeType;
	}

	/**
	 * 商品ID
	 * 
	 * @return
	 */
	public String getProductId() {
		return productId;
	}

	/**
	 * 商品ID
	 * 
	 * @return
	 */
	public void setProductId(String productId) {
		this.productId = productId;
	}

	/**
	 * 商品名称
	 * 
	 * @return
	 */
	public String getProductName() {
		return productName;
	}

	/**
	 * 商品名称
	 * 
	 * @param productName
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}

	/**
	 * 商品价格
	 * 
	 * @param productName
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * 商品价格
	 * 
	 * @param productName
	 */
	public void setPrice(int price) {
		this.price = price;
	}

	/**
	 * 扩展字段
	 * 
	 * @param extension
	 */
	public String getExtension() {
		return extension;
	}

	/**
	 * 扩展字段
	 * 
	 * @param extension
	 */
	public void setExtension(String extension) {
		this.extension = extension;
	}

	/**
	 * //订单ID
	 * 
	 * @return
	 */
	public String getOrderID() {
		return orderID;
	}

	/**
	 * 订单ID
	 * 
	 * @param orderID
	 */
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
}
