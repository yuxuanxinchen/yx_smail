package com.ksd.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.document.mongodb.mapping.Document;

@Document(collection="Course")
public class Course implements java.io.Serializable{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;

	@Id
	private String id;
	private String cashBackAmount;
	private String cashBackTotalAmount;
	private String discountPrice;
	private String normalPrice;
	private String orgPrice;
	private String origPrice;
	private String studyMoney;
	private String vipPrice;
	private String courseNo;
	private String name;
	private Integer watchDay;
	private Integer chapterCount;
	private Integer categoryNo;
	private String categoryName;
	private String state;
	private Boolean isFree;
	private String[] cover;
	private String isRoot;
	private String[] tag;
	private Date uploadTime;
	private Date updateTime;
	private Date issueTime;
	private Integer courseHour;
	private String handouts;
	private String buyCount;
	private Integer buyCountMonth;
	private Integer buyCountWeek;
	private Integer collectCount;
	private Integer clickCount;
	private Integer commentCount;
	private Integer voteCount;
	private Integer recommendCount;
	private Integer discountPriceCopy;
	private Boolean isPack;
	private Boolean migrate;
	private Integer courseType;
	private String[] liveClass;
	private Integer weight;
	private Boolean addedTitles;
	private Integer userId;
	private String principal;
	private Integer videoChapterVol;
	private Integer minutesVol;
	private String[] zyldList;
	private String subName;
	private Boolean isDuplicate;
	private Boolean microFree;
	private Integer protocolScore;
	private Integer pvCount;
	private Double totalAmount;
	private Integer curMonthClickCount;
	private Boolean freelnActivity;
	private String[] classTvpeList;
	private Integer docCount;
	private Date createDate;
	
	
	
	public Course(String id, String cashBackAmount,
			String cashBackTotalAmount, String discountPrice,
			String normalPrice, String orgPrice, String origPrice,
			String studyMoney, String vipPrice, String courseNo, String name,
			Integer watchDay, Integer chapterCount, Integer categoryNo,
			String categoryName, String state, Boolean isFree, String[] cover,
			String isRoot, String[] tag, Date uploadTime, Date updateTime,
			Date issueTime, Integer courseHour, String handouts,
			String buyCount, Integer buyCountMonth, Integer buyCountWeek,
			Integer collectCount, Integer clickCount, Integer commentCount,
			Integer voteCount, Integer recommendCount,
			Integer discountPriceCopy, Boolean isPack, Boolean migrate,
			Integer courseType, String[] liveClass, Integer weight,
			Boolean addedTitles, Integer userId, String principal,
			Integer videoChapterVol, Integer minutesVol, String[] zyldList,
			String subName, Boolean isDuplicate, Boolean microFree,
			Integer protocolScore, Integer pvCount, Double totalAmount,
			Integer curMonthClickCount, Boolean freelnActivity,
			String[] classTvpeList, Integer docCount, Date createDate) {
		super();
		this.id = id;
		this.cashBackAmount = cashBackAmount;
		this.cashBackTotalAmount = cashBackTotalAmount;
		this.discountPrice = discountPrice;
		this.normalPrice = normalPrice;
		this.orgPrice = orgPrice;
		this.origPrice = origPrice;
		this.studyMoney = studyMoney;
		this.vipPrice = vipPrice;
		this.courseNo = courseNo;
		this.name = name;
		this.watchDay = watchDay;
		this.chapterCount = chapterCount;
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.state = state;
		this.isFree = isFree;
		this.cover = cover;
		this.isRoot = isRoot;
		this.tag = tag;
		this.uploadTime = uploadTime;
		this.updateTime = updateTime;
		this.issueTime = issueTime;
		this.courseHour = courseHour;
		this.handouts = handouts;
		this.buyCount = buyCount;
		this.buyCountMonth = buyCountMonth;
		this.buyCountWeek = buyCountWeek;
		this.collectCount = collectCount;
		this.clickCount = clickCount;
		this.commentCount = commentCount;
		this.voteCount = voteCount;
		this.recommendCount = recommendCount;
		this.discountPriceCopy = discountPriceCopy;
		this.isPack = isPack;
		this.migrate = migrate;
		this.courseType = courseType;
		this.liveClass = liveClass;
		this.weight = weight;
		this.addedTitles = addedTitles;
		this.userId = userId;
		this.principal = principal;
		this.videoChapterVol = videoChapterVol;
		this.minutesVol = minutesVol;
		this.zyldList = zyldList;
		this.subName = subName;
		this.isDuplicate = isDuplicate;
		this.microFree = microFree;
		this.protocolScore = protocolScore;
		this.pvCount = pvCount;
		this.totalAmount = totalAmount;
		this.curMonthClickCount = curMonthClickCount;
		this.freelnActivity = freelnActivity;
		this.classTvpeList = classTvpeList;
		this.docCount = docCount;
		this.createDate = createDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCashBackAmount() {
		return cashBackAmount;
	}
	public void setCashBackAmount(String cashBackAmount) {
		this.cashBackAmount = cashBackAmount;
	}
	public String getCashBackTotalAmount() {
		return cashBackTotalAmount;
	}
	public void setCashBackTotalAmount(String cashBackTotalAmount) {
		this.cashBackTotalAmount = cashBackTotalAmount;
	}
	public String getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(String discountPrice) {
		this.discountPrice = discountPrice;
	}
	public String getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(String normalPrice) {
		this.normalPrice = normalPrice;
	}
	public String getOrgPrice() {
		return orgPrice;
	}
	public void setOrgPrice(String orgPrice) {
		this.orgPrice = orgPrice;
	}
	public String getOrigPrice() {
		return origPrice;
	}
	public void setOrigPrice(String origPrice) {
		this.origPrice = origPrice;
	}
	public String getStudyMoney() {
		return studyMoney;
	}
	public void setStudyMoney(String studyMoney) {
		this.studyMoney = studyMoney;
	}
	public String getVipPrice() {
		return vipPrice;
	}
	public void setVipPrice(String vipPrice) {
		this.vipPrice = vipPrice;
	}
	public String getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(String courseNo) {
		this.courseNo = courseNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getWatchDay() {
		return watchDay;
	}
	public void setWatchDay(Integer watchDay) {
		this.watchDay = watchDay;
	}
	public Integer getChapterCount() {
		return chapterCount;
	}
	public void setChapterCount(Integer chapterCount) {
		this.chapterCount = chapterCount;
	}
	public Integer getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(Integer categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Boolean getIsFree() {
		return isFree;
	}
	public void setIsFree(Boolean isFree) {
		this.isFree = isFree;
	}
	public String[] getCover() {
		return cover;
	}
	public void setCover(String[] cover) {
		this.cover = cover;
	}
	public String getIsRoot() {
		return isRoot;
	}
	public void setIsRoot(String isRoot) {
		this.isRoot = isRoot;
	}
	public String[] getTag() {
		return tag;
	}
	public void setTag(String[] tag) {
		this.tag = tag;
	}
	public Date getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Date getIssueTime() {
		return issueTime;
	}
	public void setIssueTime(Date issueTime) {
		this.issueTime = issueTime;
	}
	public Integer getCourseHour() {
		return courseHour;
	}
	public void setCourseHour(Integer courseHour) {
		this.courseHour = courseHour;
	}
	public String getHandouts() {
		return handouts;
	}
	public void setHandouts(String handouts) {
		this.handouts = handouts;
	}
	public String getBuyCount() {
		return buyCount;
	}
	public void setBuyCount(String buyCount) {
		this.buyCount = buyCount;
	}
	public Integer getBuyCountMonth() {
		return buyCountMonth;
	}
	public void setBuyCountMonth(Integer buyCountMonth) {
		this.buyCountMonth = buyCountMonth;
	}
	public Integer getBuyCountWeek() {
		return buyCountWeek;
	}
	public void setBuyCountWeek(Integer buyCountWeek) {
		this.buyCountWeek = buyCountWeek;
	}
	public Integer getCollectCount() {
		return collectCount;
	}
	public void setCollectCount(Integer collectCount) {
		this.collectCount = collectCount;
	}
	public Integer getClickCount() {
		return clickCount;
	}
	public void setClickCount(Integer clickCount) {
		this.clickCount = clickCount;
	}
	public Integer getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(Integer commentCount) {
		this.commentCount = commentCount;
	}
	public Integer getVoteCount() {
		return voteCount;
	}
	public void setVoteCount(Integer voteCount) {
		this.voteCount = voteCount;
	}
	public Integer getRecommendCount() {
		return recommendCount;
	}
	public void setRecommendCount(Integer recommendCount) {
		this.recommendCount = recommendCount;
	}
	public Integer getDiscountPriceCopy() {
		return discountPriceCopy;
	}
	public void setDiscountPriceCopy(Integer discountPriceCopy) {
		this.discountPriceCopy = discountPriceCopy;
	}
	public Boolean getIsPack() {
		return isPack;
	}
	public void setIsPack(Boolean isPack) {
		this.isPack = isPack;
	}
	public Boolean getMigrate() {
		return migrate;
	}
	public void setMigrate(Boolean migrate) {
		this.migrate = migrate;
	}
	public Integer getCourseType() {
		return courseType;
	}
	public void setCourseType(Integer courseType) {
		this.courseType = courseType;
	}
	public String[] getLiveClass() {
		return liveClass;
	}
	public void setLiveClass(String[] liveClass) {
		this.liveClass = liveClass;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public Boolean getAddedTitles() {
		return addedTitles;
	}
	public void setAddedTitles(Boolean addedTitles) {
		this.addedTitles = addedTitles;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public Integer getVideoChapterVol() {
		return videoChapterVol;
	}
	public void setVideoChapterVol(Integer videoChapterVol) {
		this.videoChapterVol = videoChapterVol;
	}
	public Integer getMinutesVol() {
		return minutesVol;
	}
	public void setMinutesVol(Integer minutesVol) {
		this.minutesVol = minutesVol;
	}
	public String[] getZyldList() {
		return zyldList;
	}
	public void setZyldList(String[] zyldList) {
		this.zyldList = zyldList;
	}
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public Boolean getIsDuplicate() {
		return isDuplicate;
	}
	public void setIsDuplicate(Boolean isDuplicate) {
		this.isDuplicate = isDuplicate;
	}
	public Boolean getMicroFree() {
		return microFree;
	}
	public void setMicroFree(Boolean microFree) {
		this.microFree = microFree;
	}
	public Integer getProtocolScore() {
		return protocolScore;
	}
	public void setProtocolScore(Integer protocolScore) {
		this.protocolScore = protocolScore;
	}
	public Integer getPvCount() {
		return pvCount;
	}
	public void setPvCount(Integer pvCount) {
		this.pvCount = pvCount;
	}
	public Double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(Double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Integer getCurMonthClickCount() {
		return curMonthClickCount;
	}
	public void setCurMonthClickCount(Integer curMonthClickCount) {
		this.curMonthClickCount = curMonthClickCount;
	}
	public Boolean getFreelnActivity() {
		return freelnActivity;
	}
	public void setFreelnActivity(Boolean freelnActivity) {
		this.freelnActivity = freelnActivity;
	}
	public String[] getClassTvpeList() {
		return classTvpeList;
	}
	public void setClassTvpeList(String[] classTvpeList) {
		this.classTvpeList = classTvpeList;
	}
	public Integer getDocCount() {
		return docCount;
	}
	public void setDocCount(Integer docCount) {
		this.docCount = docCount;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
