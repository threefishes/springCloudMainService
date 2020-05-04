package cn.threefishes.cloudrepository.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Goods {
    private Integer goodsId;

    private BigDecimal appPrice0;

    private BigDecimal appPrice1;

    private BigDecimal appPrice2;

    private Integer appUsable;

    private Integer colorId;

    private Integer commonId;

    private String goodsFullSpecs;

    private BigDecimal goodsPrice0;

    private BigDecimal goodsPrice1;

    private BigDecimal goodsPrice2;

    private String goodsSerial;

    private String goodsSpecs;

    private Integer goodsStorage;

    private BigDecimal groupPrice;

    private String imageName;

    private Integer isGift;

    private Integer isGroup;

    private Integer limitAmount;

    private Date promotionEndTime;

    private Integer promotionId;

    private Date promotionStartTime;

    private Integer promotionState;

    private String promotionTitle;

    private Integer promotionType;

    private String specValueIds;

    private BigDecimal webPrice0;

    private BigDecimal webPrice1;

    private BigDecimal webPrice2;

    private Integer webUsable;

    private BigDecimal wechatPrice0;

    private BigDecimal wechatPrice1;

    private BigDecimal wechatPrice2;

    private Integer wechatUsable;

    private BigDecimal onlinePayPrice;

    private String videoName;

    private String videoCosFilesId;

    private Integer dwSpecsid;

    private Integer dwId;

    private BigDecimal gaveXf;

    private BigDecimal ygPrice;

    private BigDecimal staffPrice;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public BigDecimal getAppPrice0() {
        return appPrice0;
    }

    public void setAppPrice0(BigDecimal appPrice0) {
        this.appPrice0 = appPrice0;
    }

    public BigDecimal getAppPrice1() {
        return appPrice1;
    }

    public void setAppPrice1(BigDecimal appPrice1) {
        this.appPrice1 = appPrice1;
    }

    public BigDecimal getAppPrice2() {
        return appPrice2;
    }

    public void setAppPrice2(BigDecimal appPrice2) {
        this.appPrice2 = appPrice2;
    }

    public Integer getAppUsable() {
        return appUsable;
    }

    public void setAppUsable(Integer appUsable) {
        this.appUsable = appUsable;
    }

    public Integer getColorId() {
        return colorId;
    }

    public void setColorId(Integer colorId) {
        this.colorId = colorId;
    }

    public Integer getCommonId() {
        return commonId;
    }

    public void setCommonId(Integer commonId) {
        this.commonId = commonId;
    }

    public String getGoodsFullSpecs() {
        return goodsFullSpecs;
    }

    public void setGoodsFullSpecs(String goodsFullSpecs) {
        this.goodsFullSpecs = goodsFullSpecs == null ? null : goodsFullSpecs.trim();
    }

    public BigDecimal getGoodsPrice0() {
        return goodsPrice0;
    }

    public void setGoodsPrice0(BigDecimal goodsPrice0) {
        this.goodsPrice0 = goodsPrice0;
    }

    public BigDecimal getGoodsPrice1() {
        return goodsPrice1;
    }

    public void setGoodsPrice1(BigDecimal goodsPrice1) {
        this.goodsPrice1 = goodsPrice1;
    }

    public BigDecimal getGoodsPrice2() {
        return goodsPrice2;
    }

    public void setGoodsPrice2(BigDecimal goodsPrice2) {
        this.goodsPrice2 = goodsPrice2;
    }

    public String getGoodsSerial() {
        return goodsSerial;
    }

    public void setGoodsSerial(String goodsSerial) {
        this.goodsSerial = goodsSerial == null ? null : goodsSerial.trim();
    }

    public String getGoodsSpecs() {
        return goodsSpecs;
    }

    public void setGoodsSpecs(String goodsSpecs) {
        this.goodsSpecs = goodsSpecs == null ? null : goodsSpecs.trim();
    }

    public Integer getGoodsStorage() {
        return goodsStorage;
    }

    public void setGoodsStorage(Integer goodsStorage) {
        this.goodsStorage = goodsStorage;
    }

    public BigDecimal getGroupPrice() {
        return groupPrice;
    }

    public void setGroupPrice(BigDecimal groupPrice) {
        this.groupPrice = groupPrice;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName == null ? null : imageName.trim();
    }

    public Integer getIsGift() {
        return isGift;
    }

    public void setIsGift(Integer isGift) {
        this.isGift = isGift;
    }

    public Integer getIsGroup() {
        return isGroup;
    }

    public void setIsGroup(Integer isGroup) {
        this.isGroup = isGroup;
    }

    public Integer getLimitAmount() {
        return limitAmount;
    }

    public void setLimitAmount(Integer limitAmount) {
        this.limitAmount = limitAmount;
    }

    public Date getPromotionEndTime() {
        return promotionEndTime;
    }

    public void setPromotionEndTime(Date promotionEndTime) {
        this.promotionEndTime = promotionEndTime;
    }

    public Integer getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(Integer promotionId) {
        this.promotionId = promotionId;
    }

    public Date getPromotionStartTime() {
        return promotionStartTime;
    }

    public void setPromotionStartTime(Date promotionStartTime) {
        this.promotionStartTime = promotionStartTime;
    }

    public Integer getPromotionState() {
        return promotionState;
    }

    public void setPromotionState(Integer promotionState) {
        this.promotionState = promotionState;
    }

    public String getPromotionTitle() {
        return promotionTitle;
    }

    public void setPromotionTitle(String promotionTitle) {
        this.promotionTitle = promotionTitle == null ? null : promotionTitle.trim();
    }

    public Integer getPromotionType() {
        return promotionType;
    }

    public void setPromotionType(Integer promotionType) {
        this.promotionType = promotionType;
    }

    public String getSpecValueIds() {
        return specValueIds;
    }

    public void setSpecValueIds(String specValueIds) {
        this.specValueIds = specValueIds == null ? null : specValueIds.trim();
    }

    public BigDecimal getWebPrice0() {
        return webPrice0;
    }

    public void setWebPrice0(BigDecimal webPrice0) {
        this.webPrice0 = webPrice0;
    }

    public BigDecimal getWebPrice1() {
        return webPrice1;
    }

    public void setWebPrice1(BigDecimal webPrice1) {
        this.webPrice1 = webPrice1;
    }

    public BigDecimal getWebPrice2() {
        return webPrice2;
    }

    public void setWebPrice2(BigDecimal webPrice2) {
        this.webPrice2 = webPrice2;
    }

    public Integer getWebUsable() {
        return webUsable;
    }

    public void setWebUsable(Integer webUsable) {
        this.webUsable = webUsable;
    }

    public BigDecimal getWechatPrice0() {
        return wechatPrice0;
    }

    public void setWechatPrice0(BigDecimal wechatPrice0) {
        this.wechatPrice0 = wechatPrice0;
    }

    public BigDecimal getWechatPrice1() {
        return wechatPrice1;
    }

    public void setWechatPrice1(BigDecimal wechatPrice1) {
        this.wechatPrice1 = wechatPrice1;
    }

    public BigDecimal getWechatPrice2() {
        return wechatPrice2;
    }

    public void setWechatPrice2(BigDecimal wechatPrice2) {
        this.wechatPrice2 = wechatPrice2;
    }

    public Integer getWechatUsable() {
        return wechatUsable;
    }

    public void setWechatUsable(Integer wechatUsable) {
        this.wechatUsable = wechatUsable;
    }

    public BigDecimal getOnlinePayPrice() {
        return onlinePayPrice;
    }

    public void setOnlinePayPrice(BigDecimal onlinePayPrice) {
        this.onlinePayPrice = onlinePayPrice;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName == null ? null : videoName.trim();
    }

    public String getVideoCosFilesId() {
        return videoCosFilesId;
    }

    public void setVideoCosFilesId(String videoCosFilesId) {
        this.videoCosFilesId = videoCosFilesId == null ? null : videoCosFilesId.trim();
    }

    public Integer getDwSpecsid() {
        return dwSpecsid;
    }

    public void setDwSpecsid(Integer dwSpecsid) {
        this.dwSpecsid = dwSpecsid;
    }

    public Integer getDwId() {
        return dwId;
    }

    public void setDwId(Integer dwId) {
        this.dwId = dwId;
    }

    public BigDecimal getGaveXf() {
        return gaveXf;
    }

    public void setGaveXf(BigDecimal gaveXf) {
        this.gaveXf = gaveXf;
    }

    public BigDecimal getYgPrice() {
        return ygPrice;
    }

    public void setYgPrice(BigDecimal ygPrice) {
        this.ygPrice = ygPrice;
    }

    public BigDecimal getStaffPrice() {
        return staffPrice;
    }

    public void setStaffPrice(BigDecimal staffPrice) {
        this.staffPrice = staffPrice;
    }
}