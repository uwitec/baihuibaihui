using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;


public static class GetGuid
{
    /// <summary>
    /// 生成全局唯一标识，即不少于三十位的唯一码
    /// </summary>
    /// <returns></returns>
    public static string Guid()
    {
        return System.Guid.NewGuid().ToString("N");
    }
}

