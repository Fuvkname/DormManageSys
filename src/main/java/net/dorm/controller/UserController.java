package net.dorm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.dorm.bean.TbAdmin;
import net.dorm.bean.TbDorm;
import net.dorm.bean.TbUser;
import net.dorm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService service;

    @PostMapping("/check")
    public String checkLogin(TbUser user, HttpSession session, Model model)
    {
        TbUser tbUser = service.selectTbUser(user);

        if(tbUser!=null)
        {
            session.setAttribute("loginuser",tbUser.getUsername());
            return "redirect:/getAllDorm";
        }
        model.addAttribute("tips","账号或密码错误");
        return "login";
    }

    @PostMapping("/checkadmin")
    public String checkAdmin(TbAdmin admin, HttpSession session, Model model)
    {
        TbAdmin tbAdmin = service.selectTbAdmin(admin);

        if(tbAdmin!=null)
        {
            session.setAttribute("loginuser",tbAdmin.getUsername());
            return "redirect:/getAllDormByAdmin";
        }
        model.addAttribute("tips","用户名或密码错误");
        return "adminlogin";
    }


    @GetMapping("/getAllDorm")
    public String getAllDorm(Model model, @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                             @RequestParam(value = "pageSize",defaultValue = "4") Integer pageSize)
    {
        PageHelper.startPage(pageNum,pageSize);
        List<TbDorm> dorm = service.selectAllDorm();
        PageInfo pageInfo = new PageInfo(dorm);
        model.addAttribute("alldorm",dorm);
        model.addAttribute("pageInfo",pageInfo);
        return "main";
    }

    @GetMapping("/getAllDormByAdmin")
    public String getAllDormBuAdmin(Model model, @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                             @RequestParam(value = "pageSize",defaultValue = "4") Integer pageSize)
    {
        PageHelper.startPage(pageNum,pageSize);
        List<TbDorm> dorm = service.selectAllDorm();
        PageInfo pageInfo = new PageInfo(dorm);
        model.addAttribute("alldorm",dorm);
        model.addAttribute("pageInfo",pageInfo);
        return "adminmain";
    }

    @GetMapping("/selectDorm")
    public String selectDorm(@RequestParam(value = "building")String building,@RequestParam(value="room")String room,Model model) {
        TbDorm dorm = service.selectDorm(building,room);
            model.addAttribute("dorm", dorm);
            if(dorm.getMem1id()==0){
                model.addAttribute("mem1name", "无");
            }
            else{
                String mem1name = service.selectTbUserById(dorm.getMem1id());
                model.addAttribute("mem1name", mem1name);
            }
            if(dorm.getMem2id()==0){
                model.addAttribute("mem2name", "无");
            }
            else{
                String mem2name = service.selectTbUserById(dorm.getMem2id());
                model.addAttribute("mem2name", mem2name);
            }
            if(dorm.getMem3id()==0){
                model.addAttribute("mem3name", "无");
            }
            else{
                String mem3name = service.selectTbUserById(dorm.getMem3id());
                model.addAttribute("mem3name", mem3name);
            }
            if(dorm.getMem4id()==0){
                model.addAttribute("mem4name", "无");
            }
            else{
                String mem4name = service.selectTbUserById(dorm.getMem4id());
                model.addAttribute("mem4name", mem4name);
            }
            return "dorminfo";
    }

    @GetMapping("/selectDormAdmin")
    public String selectDormAdmin(@RequestParam(value = "building")String building,@RequestParam(value="room")String room,Model model) {
        TbDorm dorm = service.selectDorm(building,room);
        model.addAttribute("dorm", dorm);
        if(dorm.getMem1id()==0){
            model.addAttribute("mem1name", "无");
        }
        else{
            String mem1name = service.selectTbUserById(dorm.getMem1id());
            model.addAttribute("mem1name", mem1name);
        }
        if(dorm.getMem2id()==0){
            model.addAttribute("mem2name", "无");
        }
        else{
            String mem2name = service.selectTbUserById(dorm.getMem2id());
            model.addAttribute("mem2name", mem2name);
        }
        if(dorm.getMem3id()==0){
            model.addAttribute("mem3name", "无");
        }
        else{
            String mem3name = service.selectTbUserById(dorm.getMem3id());
            model.addAttribute("mem3name", mem3name);
        }
        if(dorm.getMem4id()==0){
            model.addAttribute("mem4name", "无");
        }
        else{
            String mem4name = service.selectTbUserById(dorm.getMem4id());
            model.addAttribute("mem4name", mem4name);
        }
        return "dorminfoadmin";
    }


    @PostMapping("/selectDormByInput")
    public String selectDormByInput(TbDorm tbDorm, Model model) {
        TbDorm dorm = service.selectDormByInput(tbDorm);
        if(dorm!=null) {
            model.addAttribute("dorm", dorm);
            if(dorm.getMem1id()==0){
                model.addAttribute("mem1name", "无");
            }
            else{
                String mem1name = service.selectTbUserById(dorm.getMem1id());
                model.addAttribute("mem1name", mem1name);
            }
            if(dorm.getMem2id()==0){
                model.addAttribute("mem2name", "无");
            }
            else{
                String mem2name = service.selectTbUserById(dorm.getMem2id());
                model.addAttribute("mem2name", mem2name);
            }
            if(dorm.getMem3id()==0){
                model.addAttribute("mem3name", "无");
            }
            else{
                String mem3name = service.selectTbUserById(dorm.getMem3id());
                model.addAttribute("mem3name", mem3name);
            }
            if(dorm.getMem4id()==0){
                model.addAttribute("mem4name", "无");
            }
            else{
                String mem4name = service.selectTbUserById(dorm.getMem4id());
                model.addAttribute("mem4name", mem4name);
            }
            return "dorminfo";
        }
        else return"dormnotexists";
    }

    @PostMapping("/selectDormByInputAdmin")
    public String selectDormByInputAdmin(TbDorm tbDorm, Model model) {
        TbDorm dorm = service.selectDormByInput(tbDorm);
        if(dorm!=null) {
            model.addAttribute("dorm", dorm);
            if(dorm.getMem1id()==0){
                model.addAttribute("mem1name", "无");
            }
            else{
                String mem1name = service.selectTbUserById(dorm.getMem1id());
                model.addAttribute("mem1name", mem1name);
            }
            if(dorm.getMem2id()==0){
                model.addAttribute("mem2name", "无");
            }
            else{
                String mem2name = service.selectTbUserById(dorm.getMem2id());
                model.addAttribute("mem2name", mem2name);
            }
            if(dorm.getMem3id()==0){
                model.addAttribute("mem3name", "无");
            }
            else{
                String mem3name = service.selectTbUserById(dorm.getMem3id());
                model.addAttribute("mem3name", mem3name);
            }
            if(dorm.getMem4id()==0){
                model.addAttribute("mem4name", "无");
            }
            else{
                String mem4name = service.selectTbUserById(dorm.getMem4id());
                model.addAttribute("mem4name", mem4name);
            }
            return "dorminfoadmin";
        }
        else return"dormnotexists";
    }

    @PostMapping("/payFee")
    public String payFee(TbDorm tbDorm) {
        TbDorm dorm2 =service.selectDormByInput(tbDorm);
        if(dorm2!=null){
            dorm2.setWater(dorm2.getWater()+tbDorm.getWater());
            dorm2.setElectricity(dorm2.getElectricity()+tbDorm.getElectricity());
            int a = service.updateDormFee(dorm2);
            System.out.println(a+"条记录修改完成。");
            return"paysuccess";
        }
        else return "topayFee";
    }

    @PostMapping("/insertDorm")
    public String insertDorm(TbDorm tbDorm, Model model){
        if(tbDorm.getRoom().length()==0){
            System.out.println("插入空宿舍号");
            return "redirect:/toInsertFail";
        }
        else {
            if(service.selectDormByInput(tbDorm)!=null) {
                return "redirect:/toInsertRepeat";
            }
            else{
                service.insertDorm(tbDorm);
                return"insertsuccess";
            }
        }
    }

    //添加
    @GetMapping("/logout")
    public String logout(HttpSession session)
    {
        session.removeAttribute("loginuser");
        return "login";
    }

    @GetMapping("/deleteDorm")
    public String deleteDorm(@RequestParam(value = "building")String building, @RequestParam(value="room")String room)
    {
        TbDorm tbDorm = service.selectDorm(building,room);
        if(tbDorm.getMem1id()==0 && tbDorm.getMem2id()==0&& tbDorm.getMem3id()==0&&tbDorm.getMem3id()==0){
            service.deleteDorm(building,room);
            return "deletesuccess";}
        else{
            return "deletefail";
        }
    }

    @PostMapping("/updateDorm")
    public String updateDorm(TbDorm tbDorm, Model model)
    {
            service.updateDorm(tbDorm);
        TbDorm dorm = service.selectDormByInput(tbDorm);
        model.addAttribute("building",dorm.getBuilding());
        model.addAttribute("room",dorm.getRoom());
        return "redirect:/selectDormAdmin";

    }


}
