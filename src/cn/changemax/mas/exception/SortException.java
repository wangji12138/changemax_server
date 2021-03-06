package cn.changemax.mas.exception;

/**
 * <p>
 * Title: WordException.java
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Company: www.changemax.com
 * </p>
 * 
 * @author WangJi
 * @date 2018年12月10日
 * @version 1.0
 */
public class SortException extends Exception {
	// 异常信息
	private String message;

	public SortException(String message) {
		super();
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
