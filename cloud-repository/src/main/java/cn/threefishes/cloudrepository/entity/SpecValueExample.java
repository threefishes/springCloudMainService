package cn.threefishes.cloudrepository.entity;

import java.util.ArrayList;
import java.util.List;

public class SpecValueExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SpecValueExample() {
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

        public Criteria andSpecValueIdIsNull() {
            addCriterion("spec_value_id is null");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdIsNotNull() {
            addCriterion("spec_value_id is not null");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdEqualTo(Integer value) {
            addCriterion("spec_value_id =", value, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdNotEqualTo(Integer value) {
            addCriterion("spec_value_id <>", value, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdGreaterThan(Integer value) {
            addCriterion("spec_value_id >", value, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("spec_value_id >=", value, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdLessThan(Integer value) {
            addCriterion("spec_value_id <", value, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdLessThanOrEqualTo(Integer value) {
            addCriterion("spec_value_id <=", value, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdIn(List<Integer> values) {
            addCriterion("spec_value_id in", values, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdNotIn(List<Integer> values) {
            addCriterion("spec_value_id not in", values, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdBetween(Integer value1, Integer value2) {
            addCriterion("spec_value_id between", value1, value2, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecValueIdNotBetween(Integer value1, Integer value2) {
            addCriterion("spec_value_id not between", value1, value2, "specValueId");
            return (Criteria) this;
        }

        public Criteria andSpecIdIsNull() {
            addCriterion("spec_id is null");
            return (Criteria) this;
        }

        public Criteria andSpecIdIsNotNull() {
            addCriterion("spec_id is not null");
            return (Criteria) this;
        }

        public Criteria andSpecIdEqualTo(Integer value) {
            addCriterion("spec_id =", value, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdNotEqualTo(Integer value) {
            addCriterion("spec_id <>", value, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdGreaterThan(Integer value) {
            addCriterion("spec_id >", value, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("spec_id >=", value, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdLessThan(Integer value) {
            addCriterion("spec_id <", value, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdLessThanOrEqualTo(Integer value) {
            addCriterion("spec_id <=", value, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdIn(List<Integer> values) {
            addCriterion("spec_id in", values, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdNotIn(List<Integer> values) {
            addCriterion("spec_id not in", values, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdBetween(Integer value1, Integer value2) {
            addCriterion("spec_id between", value1, value2, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecIdNotBetween(Integer value1, Integer value2) {
            addCriterion("spec_id not between", value1, value2, "specId");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameIsNull() {
            addCriterion("spec_value_name is null");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameIsNotNull() {
            addCriterion("spec_value_name is not null");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameEqualTo(String value) {
            addCriterion("spec_value_name =", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameNotEqualTo(String value) {
            addCriterion("spec_value_name <>", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameGreaterThan(String value) {
            addCriterion("spec_value_name >", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameGreaterThanOrEqualTo(String value) {
            addCriterion("spec_value_name >=", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameLessThan(String value) {
            addCriterion("spec_value_name <", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameLessThanOrEqualTo(String value) {
            addCriterion("spec_value_name <=", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameLike(String value) {
            addCriterion("spec_value_name like", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameNotLike(String value) {
            addCriterion("spec_value_name not like", value, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameIn(List<String> values) {
            addCriterion("spec_value_name in", values, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameNotIn(List<String> values) {
            addCriterion("spec_value_name not in", values, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameBetween(String value1, String value2) {
            addCriterion("spec_value_name between", value1, value2, "specValueName");
            return (Criteria) this;
        }

        public Criteria andSpecValueNameNotBetween(String value1, String value2) {
            addCriterion("spec_value_name not between", value1, value2, "specValueName");
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