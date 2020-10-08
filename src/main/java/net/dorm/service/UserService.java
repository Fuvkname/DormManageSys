package net.dorm.service;

import net.dorm.bean.TbAdmin;
import net.dorm.bean.TbDorm;
import net.dorm.bean.TbUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    public TbUser selectTbUser(TbUser user);

    public TbAdmin selectTbAdmin(TbAdmin admin);

    public List<TbDorm> selectAllDorm();

    public TbDorm selectDorm(String building,String room);

    public TbDorm selectDormByInput(TbDorm tbDorm);

    public String selectTbUserById(int id);

    public int updateDormFee(TbDorm tbDorm);

    public int insertDorm(TbDorm tbDorm);

    public int deleteDorm(String building,String room);

    public int updateDorm(TbDorm tbDorm);

}
