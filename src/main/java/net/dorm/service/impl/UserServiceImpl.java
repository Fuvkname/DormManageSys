package net.dorm.service.impl;

import net.dorm.bean.TbAdmin;
import net.dorm.bean.TbDorm;
import net.dorm.bean.TbUser;
import net.dorm.mapper.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements net.dorm.service.UserService {

    @Autowired
    UserMapper mapper;

    @Override
    public TbUser selectTbUser(TbUser user){return mapper.selectTbUser(user);}

    @Override
    public TbAdmin selectTbAdmin(TbAdmin admin){return mapper.selectTbAdmin(admin);}

    @Override
    public List<TbDorm> selectAllDorm(){return mapper.selectAllDorm();}

    @Override
    public TbDorm selectDorm(String building,String room){return mapper.selectDorm(building,room);}

    @Override
    public TbDorm selectDormByInput(TbDorm tbDorm){return mapper.selectDormByInput(tbDorm);}

    @Override
    public String selectTbUserById(int id){
        return mapper.selectTbUserById(id);
    }

    @Override
    public int updateDormFee(TbDorm tbDorm){return mapper.updateDormFee(tbDorm);}

    @Override
    public int insertDorm(TbDorm tbDorm){return mapper.insertDorm(tbDorm);}

    @Override
    public int deleteDorm(String building,String room){return mapper.deleteDorm(building,room);}

    @Override
    public int updateDorm(TbDorm tbDorm){return mapper.updateDorm(tbDorm);}

}
