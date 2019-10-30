package cn.threefishes.cloudservice.services.tv;

import cn.threefishes.cloudrepository.dao.activity.SiteMapper;
import cn.threefishes.cloudrepository.entity.activity.Site;
import cn.threefishes.cloudrepository.entity.activity.SiteExample;
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
    public String helloTv(){
        Site site = siteMapper.selectByPrimaryKey(1);
        return "hello Tv" + site.getValue();
    }

    @Override
    @DataBase("slave")
    public String helloSlaver(){
        return "hello slaver";
    }
}
