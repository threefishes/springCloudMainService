package cn.threefishes.cloudservice.services.tv;

import cn.threefishes.cloudrepository.dao.activity.SiteMapper;
import cn.threefishes.cloudrepository.entity.activity.Site;
import cn.threefishes.cloudrepository.entity.activity.SiteExample;
import cn.threefishes.cloudrepository.entity.common.ResultEntity;
import cn.threefishes.cloudservice.annotation.DataBase;
import cn.threefishes.cloudservice.serviceinterface.HelloTvService;
import cn.threefishes.cloudservice.services.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("helloTvService")
public class HelloTvServiceImpl  extends BaseServiceImpl<Site,SiteExample> implements HelloTvService {

    @Autowired
    SiteMapper siteMapper;

    @Override
    @DataBase("master")
    public ResultEntity helloTv(){
        Site site = siteMapper.selectByPrimaryKey(1);
        return new ResultEntity(200,"hello Tv" + site.getValue(),"From master db");
    }

    @Override
    @DataBase("slave")
    public ResultEntity helloSlaver(){
        return new ResultEntity(200,"hello slaver","from slaver db");
    }
}
