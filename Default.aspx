<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlogWeb.Default" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resume</title>

    <!-- Bootstrap core CSS -->
    <link href="Files/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="Files/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="Files/css/resume.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-info fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Ahmet CAN</span>
            <span class="d-none d-lg-block">
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src='<%# Eval("PHOTO") %>' alt="">
                    </ItemTemplate>
                </asp:Repeater>
            </span>
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">About Me</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#experience">Experience</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#education">Education</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#interests">Interests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#awards">Awards</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#todolist">To-Do List</a>
                </li>
            </ul>
        </div>
    </nav>




    <div class="container-fluid p-0">

        <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("NAME") %>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("SURNAME") %>'></asp:Label>
                            </span>
                        </h1>
                        <div class="subheading mb-5">
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("ADDRESS") %>'></asp:Label>
                            |
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("PHONE") %>'></asp:Label>
                            |
                        <a href="mailto:<%#Eval("MAIL") %>">
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("MAIL") %>'></asp:Label>
                        </a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("NOTE") %>'></asp:Label>
                        </p>
                        <div class="social-icons">
                            <a href="#" class="social-icon">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href="https://github.com/ahmetcancs" class="social-icon">
                                <i class="fab fa-github"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="mb-5">Experience</h2>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <div class="my-auto">
                                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
                                        <div class="resume-content mr-auto">
                                            <h3 class="mb-0">
                                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("TITLE") %>'></asp:Label>
                                            </h3>
                                            <div class="subheading mb-3">
                                                <asp:Label ID="Label8" runat="server" Text='<%#Eval("SUBTITLE") %>'></asp:Label>
                                            </div>
                                            <p class="font-weight-bold">
                                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("EXPLANATION") %>'></asp:Label>
                                            </p>
                                        </div>
                                        <div class="resume-date text-md-right">
                                            <span class="text-primary">
                                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("DATE") %>'></asp:Label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </section>


        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="mb-5">Education</h2>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <div class="my-auto">
                                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
                                        <div class="resume-content mr-auto">
                                            <h3 class="mb-0">
                                                <asp:Label ID="Label11" runat="server" Text='<%#Eval("TITLE") %>'></asp:Label>
                                            </h3>
                                            <div class="subheading mb-3">
                                                <asp:Label ID="Label12" runat="server" Text='<%#Eval("SUBTITLE") %>'></asp:Label>
                                            </div>
                                            <div>
                                                <asp:Label ID="Label13" runat="server" Text='<%#Eval("EXPLANATION") %>'></asp:Label>
                                            </div>
                                            <p>
                                                <asp:Label ID="Label14" runat="server" Text='<%#Eval("AVERAGE") %>'></asp:Label>
                                            </p>
                                        </div>
                                        <div class="resume-date text-md-right">
                                            <span class="text-primary">
                                                <asp:Label ID="Label15" runat="server" Text='<%#Eval("DATE") %>'></asp:Label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
            <div class="my-auto">
                <h2 class="mb-5">Skills</h2>

                <div class="subheading mb-3">Programming Languages &amp; Tools</div>
                <ul class="list-inline dev-icons">
                    <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                    <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-js-square"></i></li>
                    <li class="list-inline-item"><i class="fab fa-angular"></i></li>
                    <li class="list-inline-item"><i class="fab fa-react"></i></li>
                    <li class="list-inline-item"><i class="fab fa-node-js"></i></li>
                    <li class="list-inline-item"><i class="fab fa-sass"></i></li>
                    <li class="list-inline-item"><i class="fab fa-sass"></i></li>
                    <li class="list-inline-item"><i class="fab fa-less"></i></li>
                    <li class="list-inline-item"><i class="fab fa-wordpress"></i></li>
                    <li class="list-inline-item"><i class="fab fa-gulp"></i></li>
                    <li class="list-inline-item"><i class="fab fa-grunt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-npm"></i></li>
                </ul>

                <div class="subheading mb-3">Workflow</div>
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <i class="fa-li fa fa-check"></i>
                                <asp:Label ID="Label18" runat="server" Text='<%#Eval("SKILL") %>'></asp:Label>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>


        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
            <div class="my-auto">
                <h2 class="mb-5">Hobbies</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <p>
                                    <asp:Label ID="Label16" runat="server" Text='<%#Eval("HOBBY") %>'></asp:Label>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
            <div class="my-auto">
                <h2 class="mb-5">Awards &amp; Certifications</h2>
                <div class="mb-5">
                    <asp:Repeater ID="Repeater6" runat="server">
                        <ItemTemplate>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-3">
                                    <div class="text-muted"><i class="fas fa-trophy fa-2x text-warning"></i></div>
                                </div>
                                <div class="flex-grow-1">
                                    <h4 class="mb-0">
                                        <asp:Label ID="Label17" runat="server" Text='<%#Eval("EVENT") %>'></asp:Label>
                                    </h4>
                                </div>
                            </div>
                            <hr class="m-0" />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>


        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="todolist">
            <div class="my-auto">
                <h2 class="mb-5">To Do List</h2>
                <asp:Repeater ID="Repeater8" runat="server">
                    <ItemTemplate>
                        <div class="resume-content mr-auto">
                            <h3 class="mb-0">
                                <asp:Label ID="Label11" runat="server" Text='<%#Eval("TITLE") %>'></asp:Label>
                            </h3>
                            <div class="subheading mb-3">
                                <asp:Label ID="Label13" runat="server" Text='<%#Eval("DESCRIPTION") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

    </div>


    <script src="Files/vendor/jquery/jquery.min.js"></script>
    <script src="Files/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <script src="Files/vendor/jquery-easing/jquery.easing.min.js"></script>


    <script src="Files/js/resume.min.js"></script>

</body>

</html>
