package com.baypassion.dto;

public class MailSender {

	private String senderMailId;
	private String receiverMailId;
	private String message;
	private String title;
	private String description;
	private Integer id;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSenderMailId() {
		return senderMailId;
	}

	public void setSenderMailId(String senderMailId) {
		this.senderMailId = senderMailId;
	}

	public String getReceiverMailId() {
		return receiverMailId;
	}

	public void setReceiverMailId(String receiverMailId) {
		this.receiverMailId = receiverMailId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
