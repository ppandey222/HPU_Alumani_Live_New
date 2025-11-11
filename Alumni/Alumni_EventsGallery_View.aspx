<%@ Page Language="C#" MasterPageFile="~/Alumni/AlumniMasterPage.master" AutoEventWireup="true" CodeFile="Alumni_EventsGallery_View.aspx.cs" Inherits="Alumni_EventsGallery_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        img.custom-folder {
            width: 100%;
            height: auto;
            margin: 0 auto;
        }

        .gallery-grid {
            text-align: center;
        }

        .captn h4 {
            padding: 15px 0;
        }

            .captn h4 a {
                font-size: 13px;
                font-weight: 500;
            }

        .img-responsive {
            height: 200px;
            width: 100%;
        }

        .rs-blog {
            background: none;
        }

        .rs-view-btn {
            text-align: -webkit-center;
        }

        .rs-blog.main-home .blog-item.custom-blog {
            margin-bottom: 15px !important;
            min-height: 368px;
        }

        .rs-blog.main-home .blog-item .blog-content .btn-btm.custom-btm .rs-view-btn a {
            line-height: 13px;
        }
    </style>
    <div class="container-fluid mt-0">
        <div class="">
            <div class="box box-success">
                <div class="boxhead mt-10 mb-10">
                    &nbsp;Gallery
					<a class="btn btn-warning btn-sm back-button pull-right" href="../Alumni/ALM_Alumni_Home.aspx">Back </a>
                </div>
                <div class="panel-body pnl-body-custom">

                    <div id="rs-blog" class="rs-blog main-home pb-70 md-pt-70 md-pb-70">

                        <asp:Repeater ID="galleryCoverRepeater" runat="server">
                            <ItemTemplate>
                                <div class="col-md-3">
                                    <div class="blog-item">
                                        <div class="image-part">
                                            <a href='ALM_EventsGallary_SlideShow.aspx?Groupid=<%# DataBinder.Eval(Container.DataItem, "encId")%>'>
                                                <img id="Image" runat="server" src='<%# Eval("ImageUrl")%>' alt="" style="height:220px; width:100%;" />
                                            </a>
                                        </div>
                                        <div class="blog-content backgrd text-center">
                                            <h3 class="title">
                                                <a href='ALM_EventsGallary_SlideShow.aspx?Groupid=<%# DataBinder.Eval(Container.DataItem, "encId")%>'>
                                                    <%# Eval("GroupName") %>
                                                </a>
                                            </h3>
                                            <div class="desc">
                                                <%# Eval("PhotoDesc") %>
                                            </div>
                                            <div class="btn-btm custom-btm">
                                                <div class="rs-view-btn">
                                                    <a class="btn btn-sm btn-info btn-block" href='ALM_EventsGallary_SlideShow.aspx?Groupid=<%# DataBinder.Eval(Container.DataItem, "encId")%>'>View Gallery</a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
				<%--<div class="col-lg-1 col-md-12">
                    <div class="back-btn">
                        <a href="../Alumni/ALM_Alumni_Home.aspx">Back</a>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
    <iframe width="174" height="189" name="gToday:normal:agenda.js" id="gToday:normal:agenda.js"
        src='<%=Page.ResolveUrl("~/calendar/ipopeng.htm")%>' scrolling="no" frameborder="0"
        style="visibility: visible; z-index: 119; position: absolute; top: -500px; left: -500px;">
	</iframe>
</asp:Content>