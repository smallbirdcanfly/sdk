package com.pyw.open;

public interface IGameExitListener {
	
	public void onExit();
	
	public void onCancel();
	
	public void onExitError(int code, String message);

}
