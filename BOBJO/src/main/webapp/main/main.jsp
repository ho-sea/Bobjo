<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SulJo</title>
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <!-- https://fonts.google.com/ -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/templatemo-video-catalog.css">
<!--

TemplateMo 552 Video Catalog

https://templatemo.com/tm-552-video-catalog

-->
</head>

<body>
    <div class="tm-page-wrap mx-auto">
        <div style="text-align: right">
        	<c:if test="${m_id == null }">
        	<a class="nav-link tm-nav-link" href="./MemberLogin.me" style="display: inline;">로그인</a>
         	<a class="nav-link tm-nav-link" href="./MemberJoin.me" style="display: inline;">회원가입</a>
         	</c:if>
         	<c:if test="${m_id != null }">
        	<a class="nav-link tm-nav-link" href="./MemberLogoutAction.me" style="display: inline;">로그아웃</a>
         	<a class="nav-link tm-nav-link" href="#" style="display: inline;">마이페이지</a>
         	</c:if>
     	</div>
        <div class="position-relative">
            <div class="position-absolute tm-site-header">
                <div class="container-fluid position-relative">
                    <div class="row">

                        <div class="col-5 col-md-8 ml-auto mr-0">
                        </div>
                    </div>
                </div>
            </div>
            <div class="tm-welcome-container text-center text-white">
                <div class="tm-welcome-container-inner">
                    <p class="tm-welcome-text mb-1 text-white">검색창 구현부</p>
                    <a href="#" class="btn tm-btn-animate tm-btn-cta tm-icon-down">
                        <span>Discover</span>
                    </a>
                </div>
            </div>

            <div id="tm-video-container">
                <video autoplay muted loop id="tm-video">
                    <!-- <source src="video/sunset-timelapse-video.mp4" type="video/mp4"> -->
                        <source src="../video/wheat-field.mp4" type="video/mp4">
                </video>    
            </div>
            
            <i id="tm-video-control-button" class="fas fa-pause"></i>
        </div>

        <div class="container-fluid">
            <div id="content" class="mx-auto tm-content-container">
                <main>
                    <div class="row">
                        <div class="col-12">
                            <h2 class="tm-page-title mb-4">추천 식당</h2>
                            <div class="tm-categories-container mb-5">
                                <h3 class="tm-text-primary tm-categories-text">Categories:</h3>
                                <ul class="nav tm-category-list">
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link active">All</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Drone Shots</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Nature</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Actions</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Featured</a></li>
                                </ul>
                            </div>        
                        </div>
                    </div>
                    
                    <div class="row tm-catalog-item-list">
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-01.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>    
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Aenean aliquet sapien</h3>
                                <p class="tm-catalog-item-text">Video thumbnail has a link to another HTML page. 
                                    Categories <span class="tm-text-secondary">do not need</span> any JS. 
                                    They are just separated HTML pages. Paging is at the bottom to extend the list as long as you want. 
                                    This can be a large catalog.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-02.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Mauris in odio vel odio</h3>
                                <p class="tm-catalog-item-text">You may need TemplateMo for a quick chat or send an email if you have any question about this CSS template. 
                                    <span class="tm-text-secondary">font-family: 'Source Sans Pro', sans-serif; for this template.</span></p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-03.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>                            
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Sagittis sodales enim</h3>
                                <p class="tm-catalog-item-text">You are allowed to use this video catalog for your business websites. 
                                Please do not make a re-distribution of our template ZIP file on any template collection website.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-04.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>    
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Nam tincidunt consectetur</h3>
                                <p class="tm-catalog-item-text">You can apply this template for your commercial CMS theme. Nam sem leo, imperdiet non lacinia eget, volutpat ac massa. Donec mattis in velit quis commodo. Cras nec rutrum arcu.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-05.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Praesent posuere rhoncus</h3>
                                <p class="tm-catalog-item-text">Duis vulputate nisl metus, eget dapibus nunc ultricies id. Ut augue mauris, varius quis nulla non, sollicitudin consectetur nisl. Donec eget arcu placerat, ullamcorper.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-06.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>                            
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Turpis massa aliquam</h3>
                                <p class="tm-catalog-item-text">Nunc neque risus, ultrices sed luctus at, iaculis at arcu. Pellentesque rutrum velit nec sapien ullamcorper ultrices. Vestibulum lectus risus, laoreet pretium ipsum</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-07.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>    
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Class aptent taciti sociosqu</h3>
                                <p class="tm-catalog-item-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum orci sit amet dignissim rhoncus. Pellentesque pretium faucibus vestibulum.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-08.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Donec ac nisl ul elit</h3>
                                <p class="tm-catalog-item-text">Suspendisse in odio congue, lobortis metus sed, venenatis nisl. In dapibus et massa feugiat facilisis. Maecenas venenatis aliquet nulla, a tincidunt erat suscipit eget.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/tn-09.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="video-page.html" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>                            
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Sed mattis nisi erat</h3>
                                <p class="tm-catalog-item-text">Integer ultricies mi eu aliquet cursus. Nam sem leo, imperdiet non lacinia eget, volutpat ac massa. Donec mattis in velit quis commodo. Cras nec rutrum arcu.</p>
                            </div>
                        </div>
                    </div>

                    <!-- Catalog Paging Buttons -->
                    <div>
                        <ul class="nav tm-paging-links">
                            <li class="nav-item active"><a href="#" class="nav-link tm-paging-link">1</a></li>
                            <li class="nav-item"><a href="#" class="nav-link tm-paging-link">2</a></li>
                            <li class="nav-item"><a href="#" class="nav-link tm-paging-link">3</a></li>
                            <li class="nav-item"><a href="#" class="nav-link tm-paging-link">4</a></li>
                            <li class="nav-item"><a href="#" class="nav-link tm-paging-link">></a></li>
                        </ul>
                    </div>
                </main>


    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        function setVideoSize() {
            const vidWidth = 1920;
            const vidHeight = 1080;
            let windowWidth = window.innerWidth;
            let newVidWidth = windowWidth;
            let newVidHeight = windowWidth * vidHeight / vidWidth;
            let marginLeft = 0;
            let marginTop = 0;

            if (newVidHeight < 500) {
                newVidHeight = 500;
                newVidWidth = newVidHeight * vidWidth / vidHeight;
            }

            if(newVidWidth > windowWidth) {
                marginLeft = -((newVidWidth - windowWidth) / 2);
            }

            if(newVidHeight > 720) {
                marginTop = -((newVidHeight - $('#tm-video-container').height()) / 2);
            }

            const tmVideo = $('#tm-video');

            tmVideo.css('width', newVidWidth);
            tmVideo.css('height', newVidHeight);
            tmVideo.css('margin-left', marginLeft);
            tmVideo.css('margin-top', marginTop);
        }

        $(document).ready(function () {
            /************** Video background *********/

            setVideoSize();

            // Set video background size based on window size
            let timeout;
            window.onresize = function () {
                clearTimeout(timeout);
                timeout = setTimeout(setVideoSize, 100);
            };

            // Play/Pause button for video background      
            const btn = $("#tm-video-control-button");

            btn.on("click", function (e) {
                const video = document.getElementById("tm-video");
                $(this).removeClass();

                if (video.paused) {
                    video.play();
                    $(this).addClass("fas fa-pause");
                } else {
                    video.pause();
                    $(this).addClass("fas fa-play");
                }
            });
        })
    </script>
</body>

</html>