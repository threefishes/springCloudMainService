package cn.threefishes.cloudrepository.entity;

import java.util.ArrayList;
import java.util.List;

public class GoodsCommonBodyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GoodsCommonBodyExample() {
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

        public Criteria andCommonIdIsNull() {
            addCriterion("common_id is null");
            return (Criteria) this;
        }

        public Criteria andCommonIdIsNotNull() {
            addCriterion("common_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommonIdEqualTo(Integer value) {
            addCriterion("common_id =", value, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdNotEqualTo(Integer value) {
            addCriterion("common_id <>", value, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdGreaterThan(Integer value) {
            addCriterion("common_id >", value, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("common_id >=", value, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdLessThan(Integer value) {
            addCriterion("common_id <", value, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdLessThanOrEqualTo(Integer value) {
            addCriterion("common_id <=", value, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdIn(List<Integer> values) {
            addCriterion("common_id in", values, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdNotIn(List<Integer> values) {
            addCriterion("common_id not in", values, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdBetween(Integer value1, Integer value2) {
            addCriterion("common_id between", value1, value2, "commonId");
            return (Criteria) this;
        }

        public Criteria andCommonIdNotBetween(Integer value1, Integer value2) {
            addCriterion("common_id not between", value1, value2, "commonId");
            return (Criteria) this;
        }

        public Criteria andFormatBottomIsNull() {
            addCriterion("format_bottom is null");
            return (Criteria) this;
        }

        public Criteria andFormatBottomIsNotNull() {
            addCriterion("format_bottom is not null");
            return (Criteria) this;
        }

        public Criteria andFormatBottomEqualTo(Integer value) {
            addCriterion("format_bottom =", value, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomNotEqualTo(Integer value) {
            addCriterion("format_bottom <>", value, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomGreaterThan(Integer value) {
            addCriterion("format_bottom >", value, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomGreaterThanOrEqualTo(Integer value) {
            addCriterion("format_bottom >=", value, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomLessThan(Integer value) {
            addCriterion("format_bottom <", value, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomLessThanOrEqualTo(Integer value) {
            addCriterion("format_bottom <=", value, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomIn(List<Integer> values) {
            addCriterion("format_bottom in", values, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomNotIn(List<Integer> values) {
            addCriterion("format_bottom not in", values, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomBetween(Integer value1, Integer value2) {
            addCriterion("format_bottom between", value1, value2, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatBottomNotBetween(Integer value1, Integer value2) {
            addCriterion("format_bottom not between", value1, value2, "formatBottom");
            return (Criteria) this;
        }

        public Criteria andFormatTopIsNull() {
            addCriterion("format_top is null");
            return (Criteria) this;
        }

        public Criteria andFormatTopIsNotNull() {
            addCriterion("format_top is not null");
            return (Criteria) this;
        }

        public Criteria andFormatTopEqualTo(Integer value) {
            addCriterion("format_top =", value, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopNotEqualTo(Integer value) {
            addCriterion("format_top <>", value, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopGreaterThan(Integer value) {
            addCriterion("format_top >", value, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopGreaterThanOrEqualTo(Integer value) {
            addCriterion("format_top >=", value, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopLessThan(Integer value) {
            addCriterion("format_top <", value, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopLessThanOrEqualTo(Integer value) {
            addCriterion("format_top <=", value, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopIn(List<Integer> values) {
            addCriterion("format_top in", values, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopNotIn(List<Integer> values) {
            addCriterion("format_top not in", values, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopBetween(Integer value1, Integer value2) {
            addCriterion("format_top between", value1, value2, "formatTop");
            return (Criteria) this;
        }

        public Criteria andFormatTopNotBetween(Integer value1, Integer value2) {
            addCriterion("format_top not between", value1, value2, "formatTop");
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