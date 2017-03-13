package org.sxdata.jingwei.controller;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.sxdata.jingwei.bean.PageforBean;
import org.sxdata.jingwei.service.SchedulerService;
import org.sxdata.jingwei.util.CommonUtil.StringDateUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * Created by cRAZY on 2017/3/8.
 */

//作业调度
@Controller
@RequestMapping(value="/scheduler")
public class TaskSchedulerController {
    @Autowired
    SchedulerService schedulerService;

    //获取所有作业的定时调度信息
    @RequestMapping(value="/getAllJobScheduler")
    @ResponseBody
    protected void getJobs(HttpServletResponse response,HttpServletRequest request) {
        try{
            //获取前台传递的分页参数
            int start=Integer.parseInt(request.getParameter("start"));
            int limit=Integer.parseInt(request.getParameter("limit"));
            //获取查询参数
            Integer typeId=null;
            if(!StringDateUtil.isEmpty(request.getParameter("typeId"))){
                typeId=Integer.parseInt(request.getParameter("typeId"));
            }
            String hostName=request.getParameter("hostName");
            String jobName=request.getParameter("jobName");
            PageforBean bean=schedulerService.getAllSchedulerByPage(start, limit,typeId,hostName,jobName);
            //输出结果返回给客户端
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.write(JSONObject.fromObject(bean).toString());
            out.flush();
            out.close();
        }catch (Exception e){
            String errorMessage=e.getMessage();
            e.printStackTrace();
        }
    }

    //获取所有作业的定时调度信息
    @RequestMapping(value="/deleteScheduler")
    @ResponseBody
    protected void deleteScheduler(HttpServletResponse response,HttpServletRequest request) {
        try{
            String[] taskIdArray=request.getParameterValues("taskIdArray");
            schedulerService.deleteScheduler(taskIdArray);
        }catch (Exception e){
            String errorMessage=e.getMessage();
            e.printStackTrace();
        }
    }

    //获取修改前所需要的数据展现
    @RequestMapping(value="/beforeUpdateScheduler")
    @ResponseBody
    protected void beforeUpdateScheduler(HttpServletResponse response,HttpServletRequest request) {
        try{
            //获取需要修改的定时作业详细信息
            String taskId=request.getParameter("taskId");
            JSONObject json=schedulerService.beforeUpdate(taskId);

            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.write(json.toString());
            out.flush();
            out.close();
        }catch (Exception e){
            String errorMessage=e.getMessage();
            e.printStackTrace();
        }
    }

    //获取修改前所需要的数据展现
    @RequestMapping(value="/updateJobScheduler")
    @ResponseBody
    protected void updateJobScheduler(HttpServletResponse response,HttpServletRequest request) {
        try{
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            String json="";
            boolean isSuccess=schedulerService.updateSchedulerJob(StringDateUtil.getMapByRequest(request));
            if(isSuccess){
                json="{'success':true,'isSuccess':true}";
            }else{
                json="{'success':true,'isSuccess':false}";
            }
            out.write(json);
            out.flush();
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
