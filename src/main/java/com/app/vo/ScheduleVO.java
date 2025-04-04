package com.app.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class ScheduleVO {
	private Long id;
	private String scheduleTitle;
	private String scheduleContent;
	private Date scheduleStartDate;
	private Date scheduleEndDate;
	private Timestamp scheduleCreateDate;
	private String scheduleColor;
	private String scheduleCategory;
	private Long calendarId;
	private Long scheduleGroupId;
	
	public ScheduleVO() {;}
	
	
	public ScheduleVO(Long id, String scheduleTitle, String scheduleContent, Date scheduleStartDate,
			Date scheduleEndDate, Timestamp scheduleCreateDate, String scheduleColor, String scheduleCategory,
			Long calendarId, Long scheduleGroupId) {
		this.id = id;
		this.scheduleTitle = scheduleTitle;
		this.scheduleContent = scheduleContent;
		this.scheduleStartDate = scheduleStartDate;
		this.scheduleEndDate = scheduleEndDate;
		this.scheduleCreateDate = scheduleCreateDate;
		this.scheduleColor = scheduleColor;
		this.scheduleCategory = scheduleCategory;
		this.calendarId = calendarId;
		this.scheduleGroupId = scheduleGroupId;
	}


	@Override
	public String toString() {
		return "ScheduleVO [id=" + id + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ScheduleVO other = (ScheduleVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getScheduleTitle() {
		return scheduleTitle;
	}

	public void setScheduleTitle(String scheduleTitle) {
		this.scheduleTitle = scheduleTitle;
	}

	public String getScheduleContent() {
		return scheduleContent;
	}

	public void setScheduleContent(String scheduleContent) {
		this.scheduleContent = scheduleContent;
	}

	public Date getScheduleStartDate() {
		return scheduleStartDate;
	}

	public void setScheduleStartDate(Date scheduleStartDate) {
		this.scheduleStartDate = scheduleStartDate;
	}

	public Date getScheduleEndDate() {
		return scheduleEndDate;
	}

	public void setScheduleEndDate(Date scheduleEndDate) {
		this.scheduleEndDate = scheduleEndDate;
	}

	public Timestamp getScheduleCreateDate() {
		return scheduleCreateDate;
	}

	public void setScheduleCreateDate(Timestamp scheduleCreateDate) {
		this.scheduleCreateDate = scheduleCreateDate;
	}

	public String getScheduleColor() {
		return scheduleColor;
	}

	public void setScheduleColor(String scheduleColor) {
		this.scheduleColor = scheduleColor;
	}

	public String getScheduleCategory() {
		return scheduleCategory;
	}

	public void setScheduleCategory(String scheduleCategory) {
		this.scheduleCategory = scheduleCategory;
	}

	public Long getCalendarId() {
		return calendarId;
	}

	public void setCalendarId(Long calenderId) {
		this.calendarId = calenderId;
	}

	public Long getScheduleGroupId() {
		return scheduleGroupId;
	}

	public void setScheduleGroupId(Long scheduleGroupId) {
		this.scheduleGroupId = scheduleGroupId;
	}
	
	
}
