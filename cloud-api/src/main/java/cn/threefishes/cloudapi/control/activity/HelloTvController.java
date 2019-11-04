package cn.threefishes.cloudapi.control.activity;

import cn.threefishes.cloudrepository.entity.common.ResultEntity;
import cn.threefishes.cloudservice.serviceinterface.HelloTvService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 *  @author wy
 */
@RestController
public class HelloTvController {

    protected final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HelloTvService helloTvService;

    /**
     * Test Hello Tv
     * @return
     */
    @RequestMapping(value = "activity/hellotv/hello")
    public ResultEntity hello(){
        return helloTvService.helloTv();
    }
}
