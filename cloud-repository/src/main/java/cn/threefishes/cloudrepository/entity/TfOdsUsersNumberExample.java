package cn.threefishes.cloudrepository.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TfOdsUsersNumberExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TfOdsUsersNumberExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andDatelistIsNull() {
            addCriterion("datelist is null");
            return (Criteria) this;
        }

        public Criteria andDatelistIsNotNull() {
            addCriterion("datelist is not null");
            return (Criteria) this;
        }

        public Criteria andDatelistEqualTo(Date value) {
            addCriterionForJDBCDate("datelist =", value, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistNotEqualTo(Date value) {
            addCriterionForJDBCDate("datelist <>", value, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistGreaterThan(Date value) {
            addCriterionForJDBCDate("datelist >", value, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("datelist >=", value, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistLessThan(Date value) {
            addCriterionForJDBCDate("datelist <", value, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("datelist <=", value, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistIn(List<Date> values) {
            addCriterionForJDBCDate("datelist in", values, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistNotIn(List<Date> values) {
            addCriterionForJDBCDate("datelist not in", values, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("datelist between", value1, value2, "datelist");
            return (Criteria) this;
        }

        public Criteria andDatelistNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("datelist not between", value1, value2, "datelist");
            return (Criteria) this;
        }

        public Criteria andNewIosUserIsNull() {
            addCriterion("new_ios_user is null");
            return (Criteria) this;
        }

        public Criteria andNewIosUserIsNotNull() {
            addCriterion("new_ios_user is not null");
            return (Criteria) this;
        }

        public Criteria andNewIosUserEqualTo(Integer value) {
            addCriterion("new_ios_user =", value, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserNotEqualTo(Integer value) {
            addCriterion("new_ios_user <>", value, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserGreaterThan(Integer value) {
            addCriterion("new_ios_user >", value, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("new_ios_user >=", value, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserLessThan(Integer value) {
            addCriterion("new_ios_user <", value, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserLessThanOrEqualTo(Integer value) {
            addCriterion("new_ios_user <=", value, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserIn(List<Integer> values) {
            addCriterion("new_ios_user in", values, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserNotIn(List<Integer> values) {
            addCriterion("new_ios_user not in", values, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserBetween(Integer value1, Integer value2) {
            addCriterion("new_ios_user between", value1, value2, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewIosUserNotBetween(Integer value1, Integer value2) {
            addCriterion("new_ios_user not between", value1, value2, "newIosUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserIsNull() {
            addCriterion("new_android_user is null");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserIsNotNull() {
            addCriterion("new_android_user is not null");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserEqualTo(Integer value) {
            addCriterion("new_android_user =", value, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserNotEqualTo(Integer value) {
            addCriterion("new_android_user <>", value, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserGreaterThan(Integer value) {
            addCriterion("new_android_user >", value, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("new_android_user >=", value, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserLessThan(Integer value) {
            addCriterion("new_android_user <", value, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserLessThanOrEqualTo(Integer value) {
            addCriterion("new_android_user <=", value, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserIn(List<Integer> values) {
            addCriterion("new_android_user in", values, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserNotIn(List<Integer> values) {
            addCriterion("new_android_user not in", values, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserBetween(Integer value1, Integer value2) {
            addCriterion("new_android_user between", value1, value2, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andNewAndroidUserNotBetween(Integer value1, Integer value2) {
            addCriterion("new_android_user not between", value1, value2, "newAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserIsNull() {
            addCriterion("live_ios_user is null");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserIsNotNull() {
            addCriterion("live_ios_user is not null");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserEqualTo(Integer value) {
            addCriterion("live_ios_user =", value, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserNotEqualTo(Integer value) {
            addCriterion("live_ios_user <>", value, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserGreaterThan(Integer value) {
            addCriterion("live_ios_user >", value, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("live_ios_user >=", value, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserLessThan(Integer value) {
            addCriterion("live_ios_user <", value, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserLessThanOrEqualTo(Integer value) {
            addCriterion("live_ios_user <=", value, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserIn(List<Integer> values) {
            addCriterion("live_ios_user in", values, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserNotIn(List<Integer> values) {
            addCriterion("live_ios_user not in", values, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserBetween(Integer value1, Integer value2) {
            addCriterion("live_ios_user between", value1, value2, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveIosUserNotBetween(Integer value1, Integer value2) {
            addCriterion("live_ios_user not between", value1, value2, "liveIosUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserIsNull() {
            addCriterion("live_android_user is null");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserIsNotNull() {
            addCriterion("live_android_user is not null");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserEqualTo(Integer value) {
            addCriterion("live_android_user =", value, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserNotEqualTo(Integer value) {
            addCriterion("live_android_user <>", value, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserGreaterThan(Integer value) {
            addCriterion("live_android_user >", value, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("live_android_user >=", value, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserLessThan(Integer value) {
            addCriterion("live_android_user <", value, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserLessThanOrEqualTo(Integer value) {
            addCriterion("live_android_user <=", value, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserIn(List<Integer> values) {
            addCriterion("live_android_user in", values, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserNotIn(List<Integer> values) {
            addCriterion("live_android_user not in", values, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserBetween(Integer value1, Integer value2) {
            addCriterion("live_android_user between", value1, value2, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andLiveAndroidUserNotBetween(Integer value1, Integer value2) {
            addCriterion("live_android_user not between", value1, value2, "liveAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserIsNull() {
            addCriterion("accumulative_ios_user is null");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserIsNotNull() {
            addCriterion("accumulative_ios_user is not null");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserEqualTo(Integer value) {
            addCriterion("accumulative_ios_user =", value, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserNotEqualTo(Integer value) {
            addCriterion("accumulative_ios_user <>", value, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserGreaterThan(Integer value) {
            addCriterion("accumulative_ios_user >", value, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("accumulative_ios_user >=", value, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserLessThan(Integer value) {
            addCriterion("accumulative_ios_user <", value, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserLessThanOrEqualTo(Integer value) {
            addCriterion("accumulative_ios_user <=", value, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserIn(List<Integer> values) {
            addCriterion("accumulative_ios_user in", values, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserNotIn(List<Integer> values) {
            addCriterion("accumulative_ios_user not in", values, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserBetween(Integer value1, Integer value2) {
            addCriterion("accumulative_ios_user between", value1, value2, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeIosUserNotBetween(Integer value1, Integer value2) {
            addCriterion("accumulative_ios_user not between", value1, value2, "accumulativeIosUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserIsNull() {
            addCriterion("accumulative_android_user is null");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserIsNotNull() {
            addCriterion("accumulative_android_user is not null");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserEqualTo(Integer value) {
            addCriterion("accumulative_android_user =", value, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserNotEqualTo(Integer value) {
            addCriterion("accumulative_android_user <>", value, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserGreaterThan(Integer value) {
            addCriterion("accumulative_android_user >", value, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("accumulative_android_user >=", value, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserLessThan(Integer value) {
            addCriterion("accumulative_android_user <", value, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserLessThanOrEqualTo(Integer value) {
            addCriterion("accumulative_android_user <=", value, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserIn(List<Integer> values) {
            addCriterion("accumulative_android_user in", values, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserNotIn(List<Integer> values) {
            addCriterion("accumulative_android_user not in", values, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserBetween(Integer value1, Integer value2) {
            addCriterion("accumulative_android_user between", value1, value2, "accumulativeAndroidUser");
            return (Criteria) this;
        }

        public Criteria andAccumulativeAndroidUserNotBetween(Integer value1, Integer value2) {
            addCriterion("accumulative_android_user not between", value1, value2, "accumulativeAndroidUser");
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