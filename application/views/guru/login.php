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

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Learnify - Teacher Login</title>

    <!-- General CSS Files -->
    <link rel="icon" href="<?= base_url('assets/') ?>img/favicon.png" type="image/png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>stisla-assets/node_modules/bootstrap-social/bootstrap-social.css">

    <!-- Template CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>stisla-assets/css/style.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>stisla-assets/css/components.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9.10.4/dist/sweetalert2.all.min.js"></script>

</head>

<body>
    <div id="app">
        <section class="section">
            <div class="d-flex flex-wrap align-items-stretch">
                <div class="col-lg-4 col-md-6 col-12 order-lg-1 min-vh-100 order-2 bg-white">
                    <div class="p-4 m-3">
                        <a href="<?= base_url('welcome') ?>"> <img src="<?= base_url('assets/') ?>/img/logo.png" alt="logo" width="150" class=" mb-5 mt-2"></a>
                        <h2 class="modal-title text-dark font-weight-bold" style="color:#212529 !important;" id="exampleModalCenterTitle"> Learnify - Sign in now</h2>
                        <form method="post" action="<?= base_url('welcome/guru') ?>" class="needs-validation" novalidate="">
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
                            <br>
                            <div class="form-group text-right">
                            <button class="btn btn-block font-weight-bold" style="background-color: #4dbf1c;color:white;font-size:18px;">Login
                                    now!</button>
                            </div>
                        </form>
                    </div>
                </div>
                
            </div>
        </section>
    </div>

    <!-- Start Sweetalert Flashdata -->

    <?php if ($this->session->flashdata('success-reg')) : ?>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'You successfully registered!',
                text: 'Please check your email, make verification!',
                showConfirmButton: false,
                timer: 2500
            })
        </script>
    <?php endif; ?>


    <?php if ($this->session->flashdata('login-success')) : ?>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'You successfully registered!',
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
                title: 'Failed login!',
                text: 'Please check your email and password again!',
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

    <!-- End Sweetalert -->

    <!-- General JS Scripts -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="<?= base_url('assets/') ?>stisla-assets/js/stisla.js"></script>
    <!-- Template JS File -->
    <script src="<?= base_url('assets/') ?>stisla-assets/js/scripts.js"></script>
    <script src="<?= base_url('assets/') ?>stisla-assets/js/custom.js"></script>
    <!-- Page Specific JS File -->
</body>

</html>