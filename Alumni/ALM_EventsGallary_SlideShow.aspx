<%@ Page Title="" Language="C#" MasterPageFile="~/Alumni/AlumniMasterPage.master" AutoEventWireup="true" CodeFile="ALM_EventsGallary_SlideShow.aspx.cs" Inherits="Alumni_ALM_EventsGallary_SlideShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .gallery-grid table tr td {
            padding-right: 15px;
        }

        .rs-history {
            min-height: 440px;
        }

        .gallery-img {
            margin-bottom: 25px;
        }

        .back-btnn {
            background: #016773;
            padding: 10px;
            border-radius: 9px;
            text-align: center;
            margin-top: 10px;
            float: right;
            width: 90px;
            margin-bottom: 10px;
            color: #fff;
            font-weight: 500;
        }

            .back-btnn a {
                color: #fff;
                font-size: 12px;
                text-decoration: none;
            }

        img.mfp-img {
            width: 650px;
            height: 500px;
        }

        .img-responsive {
            width: 100%;
        }
    </style>

    <div class="container-fluid mt-10">
        <div class="">
            <div class="box box-success">
				<div class="boxhead mt-10 mb-10">
                    &nbsp;Gallery
					<a class="btn btn-warning btn-sm back-button pull-right" href="../Alumni/Alumni_EventsGallery_View.aspx">Back </a>
                </div>
                <div class="panel-body pnl-body-custom">
                    <div class="rs-gallery pt-50 pb-60 md-pt-70 md-pb-70">
                        <div class="row">

                            <asp:Repeater ID="galleryCoverRepeater" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3">
                                        <div class="gallery-img">
                                            <%--<a class="image-popup" href='<%# "~/UploadedImg/"+Eval("photofilename")%>'>
                                                <img class="img-responsive" runat="server" id="gImage" src='<%# "~/UploadedImg/"+Eval("photofilename")%>' alt="">
                                            </a>--%>

                                            <a class="image-popup" href='<%# Eval("ImageUrl")%>' style="height: 220px;">
                                                <img class="img-responsive" src='<%# Eval("ImageUrl")%>' alt="" style="height: 220px;">
                                            </a>

                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                    </div>
                </div>
                <%--<div class="">
                    <div class="back-btnn">
                        <a href="Alumni_EventsGallery_View.aspx">Back</a>
                    </div>
                </div>--%>
				<div class="col-lg-1 col-md-12" style="margin-top: 15px;">
                    <div class="back-btn">
                        <a href="Alumni_EventsGallery_View.aspx">Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="Plc_default_Theme/js/lightbox-plus-jquery.min.js"></script>
    <script src="alumin-default-theme/js/jquery.magnific-popup.min.js"></script>

</asp:Content>