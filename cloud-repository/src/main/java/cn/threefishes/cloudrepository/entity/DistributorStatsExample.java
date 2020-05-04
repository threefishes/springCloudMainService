package cn.threefishes.cloudrepository.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DistributorStatsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DistributorStatsExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andDistributorIdIsNull() {
            addCriterion("distributor_id is null");
            return (Criteria) this;
        }

        public Criteria andDistributorIdIsNotNull() {
            addCriterion("distributor_id is not null");
            return (Criteria) this;
        }

        public Criteria andDistributorIdEqualTo(Integer value) {
            addCriterion("distributor_id =", value, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdNotEqualTo(Integer value) {
            addCriterion("distributor_id <>", value, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdGreaterThan(Integer value) {
            addCriterion("distributor_id >", value, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("distributor_id >=", value, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdLessThan(Integer value) {
            addCriterion("distributor_id <", value, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdLessThanOrEqualTo(Integer value) {
            addCriterion("distributor_id <=", value, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdIn(List<Integer> values) {
            addCriterion("distributor_id in", values, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdNotIn(List<Integer> values) {
            addCriterion("distributor_id not in", values, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdBetween(Integer value1, Integer value2) {
            addCriterion("distributor_id between", value1, value2, "distributorId");
            return (Criteria) this;
        }

        public Criteria andDistributorIdNotBetween(Integer value1, Integer value2) {
            addCriterion("distributor_id not between", value1, value2, "distributorId");
            return (Criteria) this;
        }

        public Criteria andMemberIdIsNull() {
            addCriterion("member_id is null");
            return (Criteria) this;
        }

        public Criteria andMemberIdIsNotNull() {
            addCriterion("member_id is not null");
            return (Criteria) this;
        }

        public Criteria andMemberIdEqualTo(Integer value) {
            addCriterion("member_id =", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdNotEqualTo(Integer value) {
            addCriterion("member_id <>", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdGreaterThan(Integer value) {
            addCriterion("member_id >", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("member_id >=", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdLessThan(Integer value) {
            addCriterion("member_id <", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdLessThanOrEqualTo(Integer value) {
            addCriterion("member_id <=", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdIn(List<Integer> values) {
            addCriterion("member_id in", values, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdNotIn(List<Integer> values) {
            addCriterion("member_id not in", values, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdBetween(Integer value1, Integer value2) {
            addCriterion("member_id between", value1, value2, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdNotBetween(Integer value1, Integer value2) {
            addCriterion("member_id not between", value1, value2, "memberId");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountIsNull() {
            addCriterion("commission_amount is null");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountIsNotNull() {
            addCriterion("commission_amount is not null");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountEqualTo(BigDecimal value) {
            addCriterion("commission_amount =", value, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountNotEqualTo(BigDecimal value) {
            addCriterion("commission_amount <>", value, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountGreaterThan(BigDecimal value) {
            addCriterion("commission_amount >", value, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("commission_amount >=", value, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountLessThan(BigDecimal value) {
            addCriterion("commission_amount <", value, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountLessThanOrEqualTo(BigDecimal value) {
            addCriterion("commission_amount <=", value, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountIn(List<BigDecimal> values) {
            addCriterion("commission_amount in", values, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountNotIn(List<BigDecimal> values) {
            addCriterion("commission_amount not in", values, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("commission_amount between", value1, value2, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andCommissionAmountNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("commission_amount not between", value1, value2, "commissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountIsNull() {
            addCriterion("un_pay_commission_amount is null");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountIsNotNull() {
            addCriterion("un_pay_commission_amount is not null");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountEqualTo(BigDecimal value) {
            addCriterion("un_pay_commission_amount =", value, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountNotEqualTo(BigDecimal value) {
            addCriterion("un_pay_commission_amount <>", value, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountGreaterThan(BigDecimal value) {
            addCriterion("un_pay_commission_amount >", value, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("un_pay_commission_amount >=", value, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountLessThan(BigDecimal value) {
            addCriterion("un_pay_commission_amount <", value, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountLessThanOrEqualTo(BigDecimal value) {
            addCriterion("un_pay_commission_amount <=", value, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountIn(List<BigDecimal> values) {
            addCriterion("un_pay_commission_amount in", values, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountNotIn(List<BigDecimal> values) {
            addCriterion("un_pay_commission_amount not in", values, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("un_pay_commission_amount between", value1, value2, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andUnPayCommissionAmountNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("un_pay_commission_amount not between", value1, value2, "unPayCommissionAmount");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleIsNull() {
            addCriterion("distribution_orders_sale is null");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleIsNotNull() {
            addCriterion("distribution_orders_sale is not null");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleEqualTo(BigDecimal value) {
            addCriterion("distribution_orders_sale =", value, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleNotEqualTo(BigDecimal value) {
            addCriterion("distribution_orders_sale <>", value, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleGreaterThan(BigDecimal value) {
            addCriterion("distribution_orders_sale >", value, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("distribution_orders_sale >=", value, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleLessThan(BigDecimal value) {
            addCriterion("distribution_orders_sale <", value, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleLessThanOrEqualTo(BigDecimal value) {
            addCriterion("distribution_orders_sale <=", value, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleIn(List<BigDecimal> values) {
            addCriterion("distribution_orders_sale in", values, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleNotIn(List<BigDecimal> values) {
            addCriterion("distribution_orders_sale not in", values, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("distribution_orders_sale between", value1, value2, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andDistributionOrdersSaleNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("distribution_orders_sale not between", value1, value2, "distributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleIsNull() {
            addCriterion("month_distribution_orders_sale is null");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleIsNotNull() {
            addCriterion("month_distribution_orders_sale is not null");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleEqualTo(BigDecimal value) {
            addCriterion("month_distribution_orders_sale =", value, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleNotEqualTo(BigDecimal value) {
            addCriterion("month_distribution_orders_sale <>", value, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleGreaterThan(BigDecimal value) {
            addCriterion("month_distribution_orders_sale >", value, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("month_distribution_orders_sale >=", value, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleLessThan(BigDecimal value) {
            addCriterion("month_distribution_orders_sale <", value, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleLessThanOrEqualTo(BigDecimal value) {
            addCriterion("month_distribution_orders_sale <=", value, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleIn(List<BigDecimal> values) {
            addCriterion("month_distribution_orders_sale in", values, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleNotIn(List<BigDecimal> values) {
            addCriterion("month_distribution_orders_sale not in", values, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("month_distribution_orders_sale between", value1, value2, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andMonthDistributionOrdersSaleNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("month_distribution_orders_sale not between", value1, value2, "monthDistributionOrdersSale");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountIsNull() {
            addCriterion("invitation_distributor_count is null");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountIsNotNull() {
            addCriterion("invitation_distributor_count is not null");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountEqualTo(Long value) {
            addCriterion("invitation_distributor_count =", value, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountNotEqualTo(Long value) {
            addCriterion("invitation_distributor_count <>", value, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountGreaterThan(Long value) {
            addCriterion("invitation_distributor_count >", value, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountGreaterThanOrEqualTo(Long value) {
            addCriterion("invitation_distributor_count >=", value, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountLessThan(Long value) {
            addCriterion("invitation_distributor_count <", value, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountLessThanOrEqualTo(Long value) {
            addCriterion("invitation_distributor_count <=", value, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountIn(List<Long> values) {
            addCriterion("invitation_distributor_count in", values, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountNotIn(List<Long> values) {
            addCriterion("invitation_distributor_count not in", values, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountBetween(Long value1, Long value2) {
            addCriterion("invitation_distributor_count between", value1, value2, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andInvitationDistributorCountNotBetween(Long value1, Long value2) {
            addCriterion("invitation_distributor_count not between", value1, value2, "invitationDistributorCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountIsNull() {
            addCriterion("visit_count is null");
            return (Criteria) this;
        }

        public Criteria andVisitCountIsNotNull() {
            addCriterion("visit_count is not null");
            return (Criteria) this;
        }

        public Criteria andVisitCountEqualTo(Long value) {
            addCriterion("visit_count =", value, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountNotEqualTo(Long value) {
            addCriterion("visit_count <>", value, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountGreaterThan(Long value) {
            addCriterion("visit_count >", value, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountGreaterThanOrEqualTo(Long value) {
            addCriterion("visit_count >=", value, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountLessThan(Long value) {
            addCriterion("visit_count <", value, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountLessThanOrEqualTo(Long value) {
            addCriterion("visit_count <=", value, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountIn(List<Long> values) {
            addCriterion("visit_count in", values, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountNotIn(List<Long> values) {
            addCriterion("visit_count not in", values, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountBetween(Long value1, Long value2) {
            addCriterion("visit_count between", value1, value2, "visitCount");
            return (Criteria) this;
        }

        public Criteria andVisitCountNotBetween(Long value1, Long value2) {
            addCriterion("visit_count not between", value1, value2, "visitCount");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterion("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterion("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterion("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterion("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterion("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterion("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterion("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterion("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterion("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}