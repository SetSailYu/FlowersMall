<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // 在应用程序启动时运行的代码
        Application.Lock();
        //初始在线人数为0
        Application["zaixian"] = 0;
        //初始总人数为0
        Application["reng"] = 0;
        Application.UnLock();
    }

    void Application_End(object sender, EventArgs e)
    {
        //  在应用程序关闭时运行的代码
        Application.Lock();
        //清除在线人数为0
        Application["zaixian"] = 0;
        //清除总人数为0
        Application["reng"] = 0;
        Application.UnLock();
    }

    //void Application_Error(object sender, EventArgs e)
    //{
    //    // 在出现未处理的错误时运行的代码
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("导致错误的URL：<br/>");
    //    sb.Append(Server.HtmlEncode(Request.Url.ToString()));
    //    sb.Append("<br/><br/>");
    //    sb.Append("错误信息<br/>");
    //    sb.Append(Server.GetLastError().ToString());
    //    Response.Write(sb.ToString());
    //    Server.ClearError();

    //}

    void Session_Start(object sender, EventArgs e)
    {
        // 在新会话启动时运行的代码
        Application.Lock();
        Application["zaixian"] = (int)Application["zaixian"] + 1;
        Application["reng"] = (int)Application["reng"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e)
    {
        // 在会话结束时运行的代码。 
        // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
        // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer
        // 或 SQLServer，则不引发该事件。
        Application.Lock();
        Session.Abandon();//当以一个会话结束后，注销该会话
        Application["zaixian"] = (int)Application["zaixian"] - 1;
        Application.UnLock();
    }

</script>
