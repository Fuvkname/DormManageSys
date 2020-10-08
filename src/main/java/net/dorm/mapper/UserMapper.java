package net.dorm.mapper;

import net.dorm.bean.TbAdmin;
import net.dorm.bean.TbDorm;
import net.dorm.bean.TbUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    public TbUser selectTbUser(TbUser user);

    public TbAdmin selectTbAdmin(TbAdmin admin);

    public List<TbDorm> selectAllDorm();

    public TbDorm selectDorm(@Param("building")String building,@Param("room") String room);

    public TbDorm selectDormByInput(TbDorm tbDorm);

    public String selectTbUserById(int id);

    public int updateDormFee(TbDorm tbDorm);

    public int insertDorm(TbDorm tbDorm);

    public int deleteDorm(@Param("building")String building,@Param("room") String room);

    public int updateDorm(TbDorm tbDorm);

}
