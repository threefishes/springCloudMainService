package cn.threefishes.cloudrepository.common;

import lombok.Data;

@Data
public class ResultEntity {

    public static final int SUCCESS = 200;
    public static final int FAIL = 400;
    public static final int NO_LOGIN = 401;

    private int code;
    private String message;
    private Object data;

    public ResultEntity() {
    }

    public ResultEntity(int code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public ResultEntity(int code, String message) {
        this.code = code;
        this.message = message;
    }

    /**
     * 返回成功
     *
     * @param code
     * @param data
     */
    public ResultEntity(int code, Object data) {
        this.code = code;
        this.data = data;
        this.message = "success";

    }
}
