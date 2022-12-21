<!--About page -->

<!--================Home Banner Area =================-->
<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
        <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background="">
        </div>
        <div class="container">
            <div class="banner_content text-center">
                <h2 data-aos="fade-up" data-aos-duration="1600">About Learnify</h2>
                <div data-aos="fade-up" data-aos-duration="1800" class="page_link">
                    <a href="<?= base_url('welcome') ?>">Home</a>
                    <a href="">About</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Home Banner Area =================-->

<!--================About Area =================-->
<section class="about_area p_60">
    <div class="container">
        <div class="main_title">
            <h2 data-aos="fade-up" data-aos-duration="1600" style="font-size: 33px !important;">About Learnify - Open Source Educational Website</h2>
            <p data-aos="fade-up" data-aos-duration="1800">Learnify is an Open-Source Educational Web created by <a href="https://web.facebook.com/Ri Hem"> Rihem Zorgati.</a> Learning website where students can study anywhere and anytime. Teachers can upload videos of themselves teaching, so there is no fear of empty hours or any unforeseen circumstances because Learnify can be accessed anywhere and anytime.</p>
        </div>
        <div class="row about_inner">
            <div class="col-lg-6">
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Vision
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                            Online learning offers teachers an efficient way to deliver lessons to students. Online learning has a number of tools such as videos, PDFs, podcasts, and teachers can use all these tools as part of their lesson plans. By extending the lesson plan beyond traditional textbooks to include online resources, teachers are able to become more efficient educators.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Mission
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                            This application is desined to help students attend their classes remotely. All courses are availabel online in MP4 format.

                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Destination
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                This application is desined for students to learn anywhere and anytime.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingfour">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                Benefit
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionExample">
                            <div class="card-body">
                            Since online classes can be taken from home or location of choice, there are fewer chances of students missing out on lessons.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="video_area" id="video">
                    <img class="img-fluid" src="<?= base_url('assets/') ?>img/video-1.png" alt="" />
                    <a class="popup-youtube" href="https://www.youtube.com/watch?v=XZsvsZ0Au4A">
                        <img src="<?= base_url('assets/') ?>img/icon/video-icon-1.png" alt="" />
                    </a>
                </div>
            </div>
        </div>
        <div class="about_details" data-aos="fade-up" data-aos-duration="1600">
        </div>
    </div>
</section>
<!--================End About Area =================-->



<!--================Impress Area =================-->
<section class="impress_area p_120">
    <div class="container">
        <div class="impress_inner text-center">
            <h2 data-aos="fade-up" data-aos-duration="1800">LOGIN AS TEACHER AND UPLOAD MATERIALS & VIDEOS NOW</h2>
            <a data-aos="fade-up" data-aos-duration="2200" class="main_btn" href="<?= base_url('welcome/guru') ?>">Login As Teacher <span class="lnr lnr-arrow-right text-black"></span></a>
            <br>
			<br>
			<a data-aos="fade-up" data-aos-duration="2000" class="main_btn" href="<?= base_url('admin/add_guru') ?>#registration">Registration As Teacher <span class="lnr lnr-arrow-right"></span></a>
		</div>
    </div>
</section>
<!--================End Impress Area =================-->