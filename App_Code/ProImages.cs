using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
///ProImages 的摘要说明
/// </summary>
public class ProImages
{
    public ProImages()
    {

        //
        //TODO: 在此处添加构造函数逻辑


    }
    //
    private int pro_id;

    public int Pro_id
    {
        get { return pro_id; }
        set { pro_id = value; }
    }
    private string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }

    private string image_url;

    public string Image_url
    {
        get { return image_url; }
        set { image_url = value; }
    }
    private string  image_description;

    public string  Image_description
    {
        get { return image_description; }
        set { image_description = value; }
    }
}