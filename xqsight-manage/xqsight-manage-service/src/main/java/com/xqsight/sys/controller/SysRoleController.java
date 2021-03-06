package com.xqsight.sys.controller;

import com.github.pagehelper.Page;
import com.xqsight.common.model.XqsightPage;
import com.xqsight.common.support.MessageSupport;
import com.xqsight.common.core.support.XqsightPageHelper;
import com.xqsight.sso.utils.SSOUtils;
import com.xqsight.sys.model.SysRole;
import com.xqsight.sys.service.SysRoleService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author wangganggang
 * @Description: TODO
 * @date 2015年12月31日 下午3:24:54
 */
@RestController
@RequestMapping("/sys/role/")
public class SysRoleController {

    @Autowired
    private SysRoleService sysRoleService;

    @RequestMapping("save")
    @RequiresPermissions("sys:role:save")
    public Object saveRole(SysRole sysRole) {
        sysRole.setCreateUserId(SSOUtils.getCurrentUserId().toString());
        sysRoleService.saveSysRole(sysRole);
        return MessageSupport.successMsg("保存成功");
    }

    @RequestMapping("update")
    @RequiresPermissions("sys:role:update")
    public Object updateRole(SysRole sysRole) {
        sysRole.setUpdateUserId(SSOUtils.getCurrentUserId().toString());
        sysRoleService.updateSysRole(sysRole);
        return MessageSupport.successMsg("修改成功");
    }

    @RequestMapping("delete")
    @RequiresPermissions("sys:role:delete")
    public Object deleteRole(long roleId) {
        sysRoleService.deleteSysRole(roleId);
        return MessageSupport.successMsg("删除成功");
    }

    @RequestMapping("query")
    @RequiresPermissions("sys:role:query")
    public Object queryRoleByName(XqsightPage xqsightPage, String roleName) {
        Page page = XqsightPageHelper.startPageWithPageIndex(xqsightPage.getiDisplayStart(), xqsightPage.getiDisplayLength());
        List<SysRole> sysRoles = sysRoleService.querySysRoleByRoleName(roleName);
        xqsightPage.setTotalCount(page.getTotal());
        return MessageSupport.successDataTableMsg(xqsightPage, sysRoles);
    }

    @RequestMapping("queryall")
    @RequiresPermissions("sys:role:queryall")
    public Object queryRole() {
        List<SysRole> sysRoles = sysRoleService.querySysRoleByRoleName("");
        return MessageSupport.successDataMsg(sysRoles,"查询成功");
    }

    @RequestMapping("querybyid")
    @RequiresPermissions("sys:role:querybyid")
    public Object queryRoleById(long roleId) {
        SysRole sysRoles = sysRoleService.querySysRoleByRoleId(roleId);
        return MessageSupport.successDataMsg(sysRoles, "查询成功");
    }
}
