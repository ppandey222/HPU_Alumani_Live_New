<%@ Page Title="" Language="C#" MasterPageFile="~/AlumniMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="ALM_FundDonation.aspx.cs" Inherits="Alumni_FundDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../include/jquery-1.2.1.min.js"></script>
    <script src="../include/CommonJS.js"></script>
    <script lang="javascript">
        function ClickToShow() {
            dispalyPopUpShow();
        }

        function showPopUpDiv() {
            document.getElementById('contribute').style.display = 'block';
        }

        function hidePopUpDiv() {
            document.getElementById('contribute').style.display = 'none';
        }

        function checkValidation() {
            if (document.getElementById('ctl00_ContentPlaceHolder1_Txt_Amount').value == "") {
                alert("Amount cannot be blank!.")
                document.getElementById('ctl00_ContentPlaceHolder1_Txt_Amount').focus();
                return false;
            }
            if (document.getElementById('ctl00_ContentPlaceHolder1_txtname').value == "") {
                alert("Name cannot be blank!.")
                document.getElementById('ctl00_ContentPlaceHolder1_txtname').focus();
                return false;
            }
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (document.getElementById('ctl00_ContentPlaceHolder1_Textemail').value == "") {
                alert("Email can not be blank!.")
                document.getElementById('ctl00_ContentPlaceHolder1_Textemail').focus();
                return false;
            }
            else if (!emailRegex.test(document.getElementById('ctl00_ContentPlaceHolder1_Textemail').value)) {
                alert('Invalid Email-Id!');
                return false;
            }
            if (document.getElementById('ctl00_ContentPlaceHolder1_ddlCountry').value == "") {
                alert("Country Code is required!")
                document.getElementById('ctl00_ContentPlaceHolder1_ddlCountry').focus();
                return false;
            }
            if (document.getElementById('ctl00_ContentPlaceHolder1_txtMobile').value == "") {
                alert("Mobile can not be blank!.")
                document.getElementById('ctl00_ContentPlaceHolder1_txtMobile').focus();
                return false;
            } else if (document.getElementById('ctl00_ContentPlaceHolder1_txtMobile').value.length < 10) {
                alert("Invalid Mobile No!");
                document.getElementById('ctl00_ContentPlaceHolder1_txtMobile').focus();
                return false;
            }
        }

    </script>

    <style>
        .course-desc {
            padding: 12px;
        }

        .btnConDonate {
            outline: none;
            border: none;
            border-radius: 3px;
            display: inline-block;
            text-transform: capitalize;
            font-size: 16px;
            font-weight: 500;
            color: #ffffff;
            background: #fe9700;
            position: relative;
            overflow: hidden;
        }

        .author-comment ul li.colur1, .author-comment ul li.colur2, .author-comment ul li.colur3 {
            background: #d4edda82;
        }

        .author-comment ul li.colur4, .author-comment ul li.colur5, .author-comment ul li.colur6 {
            background: #d1ecf17a;
        }

        .author-comment ul li.colur7, .author-comment ul li.colur8, .author-comment ul li.colur9 {
            background: #fff3cd4f;
        }

        .sidebar-area .cate-box .single-image img {
            width: 100%;
            height: 210px !important;
        }
    </style>

    <!-- Breadcrumbs Start -->
    <div class="rs-breadcrumbs bg1 breadcrumbs-overlay">
        <div class="breadcrumbs-inner">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <%--<h1 class="page-title">Appeal for Helping Prof. Zinta and Family</h1>--%>
                        <%--<ul>
                            <li>
                                <a class="active" href="index.html">Home</a>
                            </li>
                            <li>Fundraising</li>
                        </ul>--%>
                        <h1 class="page-title"><%= Session["heading"].ToString() %> </h1>
                        <div class="back-btn-custom pull-right">
                            <a href="../Alumni/Alm_FundDonationlist.aspx">Back</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumbs End -->

    <div class="rs-events-list sec-spacer">
        <div class="container">
            <div class="row">
                <%--<div class="col-lg-12 col-md-12">
                    <div class="text-center ovrflw">
                        <h2>Contributors</h2>
                        <div class="row scroll-flww">
                            <div class="col-md-12">
                                <h3 class="title-bg">All Contributors (6)</h3>
                            </div>--%>
                <%-- <div class="col-md-4">
                                <div class="author-comment">

                                    <ul>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-1.png" alt="Blog Details photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Anonymous</h5>
                                                        <p>22 hours ago</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            1,000
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-2.png" alt="Blog Details photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Girija Sharma</h5>
                                                        <p>Class of 1988</p>
                                                        <p>Mar 22, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            5,000
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-3.png" alt="Blog single photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Pankaj Sharma</h5>
                                                        <p>Class of 2003</p>
                                                        <p>Mar 22, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            1,100
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="author-comment">
                                    <ul>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-4.png" alt="Blog Details photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Balram Dogra</h5>
                                                        <p>Class of 1982</p>
                                                        <p>Mar 22, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            5,000
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-5.png" alt="Blog Details photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Sukhvir Singh</h5>
                                                        <p>Class of 2015</p>
                                                        <p>Mar 22, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            1,000
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-6.png" alt="Blog single photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Yoginder Verma Prof.</h5>
                                                        <p>Mar 16, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            3,100
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="author-comment">
                                    <ul>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-1.png" alt="Blog Details photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Dr. D. C. KATOCH</h5>
                                                        <p>Mar 16, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            5,100
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-1.png" alt="Blog Details photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Anonymous</h5>
                                                        <p>Mar 15, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            2,000
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="image-comments">
                                                        <img src="alumin-default-theme/images/cont-1.png" alt="Blog single photo">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="dsc-comments">
                                                        <h5 class="contri">Dr.Poonam Sharma</h5>
                                                        <p>Mar 15, 2023</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="dsc-comments amount">
                                                        <p>
                                                            INR
                                                            <br />
                                                            1,000
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>--%>

                <%--<asp:Repeater ID="repTopContributor" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="author-comment">
                                            <ul>
                                                <li class="colur<%# Container.ItemIndex + 1 %>">
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <div class="dsc-comments">
                                                                <h5 class="contri"><%# Eval("Contributor_Name") %></h5>
                                                                <p><%# Eval("PaymentDate") %></p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="dsc-comments amount">
                                                                <p>
                                                                    INR
                                                            <br />
                                                                    <%# Eval("Donation_amount") %>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                    </div>
                </div>--%>

                <div class="col-lg-8 col-md-12 mt-10">
                    <asp:Repeater ID="RepeventsAll" runat="server">
                        <ItemTemplate>
                            <div>
                                <div class="single-image">
                                    <img id="Imge" src='<%# Eval("FilePath") %>' alt="event" width="100%" style="height:400px;">
                                </div>
                                <h5 class="top-title"><%# Eval("Heading") %></h5>
                                <span class="date">
                                    <i class="fa fa-calendar" aria-hidden="true"></i> <%# Eval("createddate") %>
                                </span>
                                <h5 class="description">Description</h5>
                                <p style="text-align: justify;"><%# Eval("Description") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <%-- <div class="col-lg-8 col-md-12 mt-10">
                    <div class="single-image">
                        <img src="alumin-default-theme/images/f11.jpg" alt="event">
                    </div>
                    <h5 class="top-title">Appeal for Helping Prof. Zinta and Family</h5>
                    <span class="date">
                        <i class="fa fa-calendar" aria-hidden="true"></i> Mar 11, 2023
                    </span>
                    <h5 class="description">Description</h5>
					<p style="text-align:justify;">Fellow Alumnus,</p><br/>
                    <p style="text-align:justify;">This is an appeal to help Prof. Zinta, our Alumnus and Prof. OF psychology, whose family recently  met with an unbearable tragedy, when joint  family wooden house was gutted in a fire accident. It not only reduced the ancestral  house to ashes but also caused loss of precious lives of close family members.  
						Your help to the family is requestd to bring solace and give them a feeling that we the Alumni are with them in this hour of huge grief. </p>
						<p style="text-align:justify;">Attached pictures are hugely disturbing but will give you the magnitude of tragedy and trauma through which family is passing.</p>
						<p style="text-align:justify;">A small help and compassion of yours can make a huge difference.</p><br/>
						<p>With regards.<br/>
						President HPUAA</p>
                    
                </div>--%>
                <div class="col-lg-4 col-md-12 mt-10">
                    <div class="sidebar-area">
                        <div class="cate-box">
                            <h3 class="title">Fundraising</h3>
                            <%-- <asp:Repeater runat="server" ID="rep">
                        <ItemTemplate>
                            <div class="row evnets-item">
                                <div class="col-md-6">
                                    <div class="evnets-img">
                                        <img id="Imge" src='<%# Eval("FilePath") %>' alt="event">
                                        <a class="image-link" href="#" title="Events">
                                            <i class="fa fa-link"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="course-header">
                                        <h3 class="course-title"><a href="#"><%# Eval("Heading") %></a></h3>
                                      <%--  <div class="course-date">
                                            <i class="fa fa-calendar-check-o"></i><%# Eval("Start_date") %>
                                        </div>--%>
                            <%-- </div>
                                    <div class="course-body">--%>
                            <%--  <div class="course-desc">
                                            <p style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
                                                <%# Eval("Description") %>
                                            </p>
                                        </div>--%>
                            <%--                   <asp:HyperLink runat="server" class="readon2 banner-style ext mt-10" NavigateUrl='<%# string.Format("~/Alumni/FundDonation.aspx?ID={0}",
                    HttpUtility.UrlEncode(Eval("pk_contribution_ID").ToString())) %>'
                    Text="Contribute Now" />--%>

                            <%--        </div>
                                </div>
                            </div>progressbar
                        </ItemTemplate>
                    </asp:Repeater>--%>
                            <asp:Repeater ID="RepOnlydetails" runat="server">
                                <ItemTemplate>
                                    <div>
                                        <div class="single-image">
                                            <img id="Imge" src='<%# Eval("FilePath") %>' alt="event">
                                        </div>
                                        <div class="course-desc">
                                            <p>
                                                <span class="fund">INR <%# Eval("Msg") %> raised of INR <%# Eval("Goal_Amount") %> goal</span>
                                            </p>
                                            <div class="progress mb-10 mt-10">
                                                <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style='<%# "color:#6D7B8D;width:" + DataBinder.Eval(Container.DataItem, "percentage") + ";" %>' aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p class="alert alert-success">
                                                <i class="fa fa-users" aria-hidden="true"></i><%# Eval("Peoplecount") %>
                                            </p>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-8">
                                                <a class="readon2 banner-style ext mt-10" href="#" data-toggle="modal" href="#" data-target="#contribute" style="left: 15px;">Contribute Now</a>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="social-share">
                                                    <label class="toggle" for="toggle">
                                                        <input type="checkbox" id="toggle" style="display: none;" />
                                                        <div class="btnn" style="right: 15px;">
                                                            <i class="fa fa-share-alt"></i>
                                                            <i class="fa fa-times"></i>
                                                            <div class="social">
                                                                <a href="#"><i class="fa fa-facebook"></i></a>
                                                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                <a href="#"><i class="fa fa-whatsapp"></i></a>
                                                            </div>
                                                        </div>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="funds">
                                            <li>
                                                <a href="#">Category: <span style="font-weight: 600;"><%# Eval("Categories") %></span></a>
                                            </li>
                                            <li>
                                                <a href="#">Start Date: <span style="font-weight: 600;"><%# Eval("createddate") %></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <%--  <div class="evnets-img mt-3">
                                <img src="alumin-default-theme/images/f1.jpg" alt="Events" runat="server" />
                            </div>
									<div class="course-desc">
										<p>
											<span class="fund">INR 46,800</span> raised of INR 5,00,000 goal
										</p>
										<div class="progress mb-10 mt-10">
										  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 25%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<p class="alert alert-success">
											<i class="fa fa-users" aria-hidden="true"></i> 15 people have contributed so far.
										</p>
									</div>
									<div class="row">
									<div class="col-md-8">
										<a class="readon2 banner-style ext mt-10" href="#" data-toggle="modal" href="#" data-target="#contribute" style="left: 15px;">Contribute Now</a>
									</div>
									<div class="col-md-4">
										<div class="social-share">
											<label class="toggle" for="toggle">
											  <input type="checkbox" id="toggle"  style="display:none;"/>
											  <div class="btnn" style="right:15px;">
												<i class="fa fa-share-alt"></i>
												<i class="fa fa-times"></i>
												<div class="social">
												  <a href="#"><i class="fa fa-facebook"></i></a>
												  <a href="#"><i class="fa fa-linkedin"></i></a>
												  <a href="#"><i class="fa fa-whatsapp"></i></a>
												</div>
											  </div>
											</label>
										</div>
									</div>
								</div>
								
                            <ul class="funds">
                                <li>
                                     <a href="#">Category: <span style="font-weight:600;">Social</span></a>
                                </li>
                                <li>
                                    <a href="#">Start Date:  <span style="font-weight:600;">Sat, Mar 11, 2023</span></a>
                                </li>
                            </ul>
                        </div>--%>
                        <asp:Repeater ID="coordinatorsDetails" runat="server">
                            <ItemTemplate>
                                <div class="cate-box">
                                    <h3 class="title">Project Co-ordinators</h3>
                                    <ul class="funds">
                                        <li>
                                            <a href="#"><%# Eval("loginname") %><span><i class="fa fa-user" aria-hidden="true"></i></span></a>
                                        </li>
                                        <li>
                                            <a href="#"><%# Eval("email") %><span><i class="fa fa-envelope" aria-hidden="true"></i></span></a>
                                        </li>
                                        <%--<li>
                                            <a href="#">9805076451 <span><i class="fa fa-phone" aria-hidden="true"></i></span></a>
                                        </li>--%>
                                    </ul>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%-- <div class="cate-box">
                            <h3 class="title">Project Co-ordinators</h3>
                            <ul class="funds">
                                <li>
                                    <a href="#">P.K Ahluwalia <span><i class="fa fa-user" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#">pk_ahluwalia7@yahoo.com <span><i class="fa fa-envelope" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#">9805076451 <span><i class="fa fa-phone" aria-hidden="true"></i></span></a>
                                </li>
                            </ul>
                        </div>--%>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <%--<div class="rs-events-list sec-spacer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="gridiv">
                        <Anthem:GridView ID="gvConPayHistry" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            AutoUpdateAfterCallBack="True" Width="100%" UpdateAfterCallBack="True" OnRowCommand="gvConPayHistry_RowCommand">
                            <Columns>
                                <asp:TemplateField HeaderText="S.No.">
                                    <ItemStyle HorizontalAlign="Center" Width="5%" />
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1%>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Contributor Name">
                                    <ItemStyle HorizontalAlign="Center" Width="5%" />
                                    <ItemTemplate>
                                        <Anthem:Label ID="lblConID" runat="server" Text='<%# Eval("Contributor") %>' AutoUpdateAfterCallBack="True"></Anthem:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="Email" HeaderText="Email ID">
                                    <ItemStyle HorizontalAlign="Left" />
                                    <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                </asp:BoundField>

                                <asp:BoundField DataField="MobileNo" HeaderText="Mobile No.">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                </asp:BoundField>

                                <asp:BoundField DataField="ContribitionAmount" HeaderText="Contribition Amount">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                </asp:BoundField>

                            </Columns>
                        </Anthem:GridView>
                    </div>
                </div>

            </div>
        </div>
    </div>--%>

    <div class="modal fade" id="contribute" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <%--<h5 class="modal-title" id="exampleModalScrollableTitle">Contribution for Appeal for Helping Prof. Zinta and Family</h5>--%>
                    <span style="color: white;">
                        <Anthem:Label ID="lblHeading" class="title" runat="server" Text=""></Anthem:Label>
                    </span>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="contact-page-section">
                        <div class="container">
                            <div class="contact-comment-section">
                                <h6 style="margin-bottom: 0px;">Step 1: Fill the amount you wish to contribute </h6>
                                <div id="form-messages"></div>
                                <form id="contact-form" method="post" action="#">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label><strong>Donation amount </strong><span style="color: red">*</span></label>
                                                    <%--<input name="fname" id="fname" runat="server" class="form-control" type="text" placeholder="INR">--%>
                                                    <Anthem:TextBox runat="server" ID="Txt_Amount" class="form-control" placeholder="INR" onkeydown="return NumberOnly(event,this);" ondrop="return false" onpaste="return false" AutoUpdateAfterCallBack="true" MaxLength="8"></Anthem:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <h6 style="margin-bottom: 0px;">Step 2: Your Details</h6>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label><strong>Name </strong><span style="color: red">*</span></label>
                                                    <%--   <input name="lname" id="lname" runat="server" class="form-control" type="text" placeholder="Name">--%>
                                                    <Anthem:TextBox runat="server" ID="txtname" class="form-control" placeholder="Name" AutoUpdateAfterCallBack="true"></Anthem:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label><strong>Email </strong><span style="color: red">*</span></label>
                                                    <Anthem:TextBox runat="server" ID="Textemail" class="form-control" placeholder="Email" AutoUpdateAfterCallBack="true" MaxLength="35"></Anthem:TextBox>
                                                    <%--<input name="email" id="email" runat="server" class="form-control"  placeholder="Email">--%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label><strong>Country Code </strong><span style="color: red">*</span></label>
                                                    <Anthem:DropDownList ID="ddlCountry" runat="server" name="PhoneCode" AutoCallBack="True" AutoUpdateAfterCallBack="true" class="form-control"></Anthem:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label><strong>Mobile No </strong><span style="color: red">*</span></label>
                                                    <Anthem:TextBox runat="server" ID="txtMobile" class="form-control" placeholder="Mobile Number" onkeydown="return NumberOnly(event,this);" AutoUpdateAfterCallBack="true" MaxLength="10"></Anthem:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1" runat="server">
                                            <label class="form-check-label" for="exampleCheck1"><strong>Make Anonymously </strong></label>
                                        </div>
                                        <p>*By disclosing your name, you are likely to encourage others to donate.</p>
                                        <div class="form-group mt-1">

                                            <%--<Anthem:Button ID="donate" runat="server" class="btnConDonate" OnClick="donate_Click" Text="Donate Now" AutoUpdateAfterCallBack="true"
                                                OnClientClick="this.style.display='none';document.getElementById('divLoadGif').style.display = 'block'"/>--%>

                                            <%--  <Anthem:Button ID="donate" runat="server" AutoUpdateAfterCallBack="true" OnClick="donate_Click"
                                             class="btnConDonate" EnableCallBack="true" Text="Donate Now"  OnClientClick="this.style.display='none';'"/>--%>

                                            <%--<Anthem:Button ID="donate" runat="server" AutoUpdateAfterCallBack="true" OnClick="donate_Click"
                                             class="btnConDonate" EnableCallBack="true" Text="Donate Now" />--%>

                                            <%--  <Anthem:Button ID="donate" runat="server" AutoUpdateAfterCallBack="true" OnClick="donate_Click"
                                             class="btnConDonate" EnableCallBack="true" Text="Donate Now"  OnClientClick="this.style.display='none';'"/>--%>

                                            <Anthem:Button ID="donate" runat="server" class="btnConDonate" OnClick="donate_Click" Text="Donate Now" AutoUpdateAfterCallBack="true"
                                                OnClientClick="return checkValidation();" />

                                            <Anthem:Label ID="lblMsg" runat="server" AutoUpdateAfterCallBack="True" SkinID="lblmessage"></Anthem:Label>
                                            <%-- <input class="readon2 banner-style ext btn-send"  type="submit" value="Donate Now">--%>
                                            <Anthem:Label ID="lblPaymentMsg" runat="server" AutoUpdateAfterCallBack="true" Font-Bold="true" ForeColor="Red" Text=""></Anthem:Label>

                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--<div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save changes</button>
                </div>-->
            </div>
        </div>
    </div>    
</asp:Content>