<!--
@Project: Learnify
@Programmer: Syauqi Zaidan Khairan Khalaf
@Website: https://linktr.ee/syauqi
@Email : syaokay@gmail.com

@About-Learnify :
Web Edukasi Open Source yang dibuat oleh Syauqi Zaidan Khairan Khalaf.
Learnify adalah Web edukasi yang dilengkapi video, materi dan sistem ujian
yang tersedia secara gratis. Learnify dibuat ditujukan agar para siswa dan
guru dapat terus belajar dan mengajar dimana saja dan kapan saja.
-->


<!--================ Start footer Area  =================-->
<footer class="footer-area p_60">
    <div class="container">
        <div class="row">
            <div class="col-lg-2  col-md-6 col-sm-6">
                <div class="single-footer-widget tp_widgets">
                    <h6 class="footer_title">About Us</h6>
                    <ul class="list">
                        <li><a href="<?= base_url('welcome/tentang') ?>">About Learnify</a></li>
                        <li><a href="<?= base_url('welcome/materi') ?>">Theory Learnify</a></li>
                        <li><a href="<?= base_url('welcome/kontak') ?>">Contact Learnify</a></li>
                        <li><a href="https://isgs.rnu.tn/">School Official Website</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2  col-md-6 col-sm-6">
                <div class="single-footer-widget tp_widgets">
                    <h6 class="footer_title">Sign in</h6>
                    <ul class="list">
                        <li><a href="#" data-toggle="modal" data-target="#exampleModalCenter">For Students</a></li>
                        <li><a href="<?= base_url('welcome/guru') ?>">For Teacher</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2  col-md-6 col-sm-6">
                <div class="single-footer-widget tp_widgets">
                    <h6 class="footer_title">Lessons - Theory</h6>
                    <ul class="list">
                        <li><a href="#" data-target="#exampleModalCenter" data-toggle="modal">Computer Science</a></li>
                        <li><a href="#" data-target="#exampleModalCenter" data-toggle="modal">Mathematics</a></li>
                        <li><a href="#" data-target="#exampleModalCenter" data-toggle="modal">English</a></li>
                        <li><a href="#" data-target="#exampleModalCenter" data-toggle="modal">French</a></li>
                        <li><a href="#" data-target="#exampleModalCenter" data-toggle="modal">Economy</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2  col-md-6 col-sm-6">
                <div class="single-footer-widget tp_widgets">
                    <h6 class="footer_title">About Developer</h6>
                    <ul class="list">
                        <li>Perfectionist Web Developer with one years of experience as a Web Developer and Web Designer. Skilled at Designing and developing Websites. Excellent written and oral communication skills; capable of explaining complex software issues in easy-to-understand terms.</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <h4 class="footer_title">About Learnify</h4>
                <p>
                Open Source Educational Web created by Computer Science and Research Department. Learnify is an educational Web with videos, materials and exam systems available for free. Learnify was created so that students and teachers can continue to learn and teach anywhere and anytime.
                </p>
            </div>
        </div>
        <div class="row footer-bottom d-flex justify-content-between align-items-center">
            <p class="col-lg-8 col-md-8 footer-text m-0">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>
                    document.write(new Date().getFullYear());
                </script> All rights reserved | This template is created by Computer Science and Research Department 
                <br> - Higher Institute of Management of Sousse
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            <div class="col-lg-4 col-md-4 footer-social">
                <a href="https://www.facebook.com/ISGSOUSSE.TN"><i class="fa fa-facebook"></i></a>
                <a href="https://isg.rnu.tn/"><i class="fa fa-dribbble"></i></a>
            </div>
        </div>
    </div>
</footer>
<!--================ End footer Area  =================-->


<!-- Start Login Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title text-dark font-weight-bold" style="color:#212529 !important;" id="exampleModalCenterTitle">
                    Learnify - Sign in now</h2>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div> 
            <div class="modal-body" id="new_x">
                <div class="container-fluid">
                    <br>
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="<?= base_url('assets/'); ?>img/modal-login-2.png" class="img-fluid img-responsive mx-auto " style="height: 350px;">
                        </div>
                        <div class=" col-md-6">
                            <form action="<?= base_url('welcome/validateLogin') ?>" method="post">
                                <div class="form-group">
                                    <label class="label-font" for="
                                        exampleFormControlInput1">
                                        Email</label>
                                    <input type="text" value="<?= set_value('email'); ?>" class="form-control" name="email" autocomplete="off" id="email" placeholder="Enter your email here ..">
                                    <small class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label class="label-font" for="
                                        exampleFormControlInput1">
                                        Password</label>
                                    <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password here ..">
                                    <small class="text-danger"></small>
                                </div>
                                <div class="form-check mt-2">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Remember me.
                                    </label>
                                </div>
                                <p class="terms">By logging in you agree 
                                    <iu>our privacy and legal terms. </i>
                                    Don't have an account yet? Register <a href=" <?= base_url('user/registration') ?>">
                                        here.</a>
                                </p>
                                <button class="btn btn-block font-weight-bold" style="background-color: #4dbf1c;color:white;font-size:18px;">Login
                                    now!</button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Login Modal -->




<!-- Sweetaler Flashdata -->
<?php if ($this->session->flashdata('success-reg')) : ?>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'You have successfully registered!',
            text: 'Now you can login!',
            showConfirmButton: false,
            timer: 2500
        })
    </script>
<?php endif; ?>


<?php if ($this->session->flashdata('login-success')) : ?>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'You have successfully registered!',
            text: 'Login now!',
            showConfirmButton: false,
            timer: 2500
        })
    </script>
<?php endif; ?>


<?php if ($this->session->flashdata('success-verify')) : ?>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Email has been verified!',
            text: 'Login now!',
            showConfirmButton: false,
            timer: 2500
        })
    </script>
<?php endif; ?>


<?php if ($this->session->flashdata('success-logout')) : ?>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'You have successfully logged out!',
            text: 'Goodbye, see you later!',
            showConfirmButton: false,
            timer: 2500
        })
    </script>
<?php endif; ?>


<?php if ($this->session->flashdata('fail-login')) : ?>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Login failed!',
            text: 'Please double check your email and password!',
            showConfirmButton: false,
            timer: 2500
        });
    </script>
<?php endif; ?>


<?php if ($this->session->flashdata('fail-email')) : ?>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Email not verified!',
            text: 'Please check your email first!',
            showConfirmButton: false,
            timer: 2500
        })
    </script>
<?php endif; ?>


<?php if ($this->session->flashdata('fail-pass')) : ?>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Password wrong!',
            text: 'Please check your password again!',
            showConfirmButton: false,
            timer: 2500
        });
    </script>
<?php endif; ?>


<?php if ($this->session->flashdata('not-login')) : ?>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Please login first!',
            text: 'Please login first!',
            showConfirmButton: false,
            timer: 2500
        });
    </script>
<?php endif; ?>

<?php if ($this->session->flashdata('false-login')) : ?>
    <script>
        $("#exampleModalCenter").modal("show")
    </script>
<?php endif; ?>





<script src="<?= base_url('assets/') ?>js/stellar.js"></script>
<script src="<?= base_url('assets/') ?>vendors/lightbox/simpleLightbox.min.js"></script>
<script src="<?= base_url('assets/') ?>vendors/nice-select/js/jquery.nice-select.min.js"></script>
<script src="<?= base_url('assets/') ?>vendors/isotope/imagesloaded.pkgd.min.js"></script>
<script src="<?= base_url('assets/') ?>vendors/isotope/isotope.pkgd.min.js"></script>
<script src="<?= base_url('assets/') ?>vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="<?= base_url('assets/') ?>vendors/popup/jquery.magnific-popup.min.js"></script>
<script src="<?= base_url('assets/') ?>js/jquery.ajaxchimp.min.js"></script>
<script src="<?= base_url('assets/') ?>vendors/counter-up/jquery.waypoints.min.js"></script>
<script src="<?= base_url('assets/') ?>vendors/counter-up/jquery.counterup.js"></script>
<script src="<?= base_url('assets/') ?>js/mail-script.js"></script>
<script src="<?= base_url('assets/') ?>js/theme.js"></script>
<script>
    var animateButton = function(e) {
        e.preventDefault;
        e.target.classList.remove('animate');
        e.target.classList.add('animate');
        setTimeout(function() {
            e.target.classList.remove('animate');
        }, 700);
    };

    var bubblyButtons = document.getElementsByClassName("bubbly-button");

    for (var i = 0; i < bubblyButtons.length; i++) {
        bubblyButtons[i].addEventListener('click', animateButton, false);
    }
</script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>

</body>

</html>