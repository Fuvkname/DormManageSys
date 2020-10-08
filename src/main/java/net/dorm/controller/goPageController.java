package net.dorm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.dorm.bean.TbDorm;
import net.dorm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class goPageController {

    @Autowired
    UserService service;

    @RequestMapping("/toAdminLogin")
    public String toAdminLogin()
    {
        return "adminlogin";
    }
    @RequestMapping("/toLogin")
    public String toLogin()
    {
        return "login";
    }

    @RequestMapping("/toAdminMain")
    public String toAdminMain(){return "redirect:/getAllDormByAdmin";}

    @RequestMapping("/topayFee")
    public String topayFee(Model model, @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                           @RequestParam(value = "pageSize",defaultValue = "4") Integer pageSize )
    {
        PageHelper.startPage(pageNum,pageSize);
        List<TbDorm> dorm = service.selectAllDorm();
        PageInfo pageInfo = new PageInfo(dorm);
        model.addAttribute("alldorm",dorm);
        model.addAttribute("pageInfo",pageInfo);
        return "payfee";
    }

    @RequestMapping("/toInsert")
    public String toInsert()
    {
        return "insertdorm";
    }

    @RequestMapping("/toInsertFail")
    public String toInsertFail(Model model)
    {
        model.addAttribute("tips","宿舍号不能为空");
        return "insertdorm";
    }

    @RequestMapping("/toInsertRepeat")
    public String toInsertRepeat(Model model)
    {
        model.addAttribute("tips","该宿舍已存在");
        return "insertdorm";
    }

}
