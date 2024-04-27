
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&family=Roboto:wght@100;300;400;500;700;900&display=swap');

        :root {
            --primary-color: #41C2CB;
            --secondary-color: #80D6DC;
        }

        * {
            box-sizing: border-box;
        }

        body {
            background-image: url("https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg"); /* Replace with your actual image URL */
            background-size: cover;
            font-family: 'Raleway', sans-serif;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            max-width: 600px;
            width: 100%;
        }

        .card {
            margin-top: 20px;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
            margin-bottom: 20px;
            border-radius: 20px;
        }

        .header {
            padding-top: 30px;
            text-align: center;
        }

        .header img {
            width: 30%;
            position: absolute;
            top: 10px;
            left: 10px;
        }

        h2 {
            font-weight: 800;
            margin-top: 60px;
        }

        form {
            padding: 20px 40px 20px 40px;
        }

        label {
            margin-top: 10px;
        }

        select,
        input {
            margin-top: 5px;
        }

        .registration {
            margin-top: 20px;
        }

        .registration a {
            display: block;
            margin-top: 15px;
        }

        .registration button {
            margin-top: 15px;
        }
    </style>
    <title>Document</title>
</head>

<body>
    <div class="container">
        <div class="card">
            <form action=".html" method="POST" class="row g-3">
                <div class="header">
                    <img src="assests/images/Servi_Wave_logo.png">
                    <h2>Sign UP</h2>
                </div>
                <?php if (isset($_GET['error'])) { ?>
                    <p class="error alert alert-danger text-center"><?php echo $_GET['error']; ?></p>
                <?php } ?>
                <?php if (isset($_GET['success'])) { ?>
                    <p class="success"><?php echo $_GET['success']; ?></p>
                <?php } ?>
                <div class="col-12">
                    <label for="inputName" class="form-label">User Type</label>
                    <select name="roles" class="form-select" aria-label="Default select example">
                        <option selected value="admin">Admin</option>
                        <option value="customer">Customer</option>
                        <option value="worker">Worker</option>
                    </select>
                </div>
                <div class="col-12">
                    <label for="inputName" class="form-label">Full Name</label>
                    <input type="text" name="fullname" class="form-control" placeholder="Full Name">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail" class="form-label">Email</label>
                    <input type="email" name="useremail" placeholder="Email Address" class="form-control" id="inputEmail4">
                </div>
                <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">Password</label>
                    <input type="password" name="password" placeholder="Password" class="form-control" id="inputPassword4">
                </div>
                <div class="col-12">
                    <label for="inputAddress" class="form-label">Address</label>
                    <input type="text" name="address" class="form-control" id="inputAddress" placeholder="Street Address">
                </div>
                <div class="col-md-8">
                    <label for="inputCity" class="form-label">City</label>
                    <input type="text" name="city" placeholder="City" class="form-control" id="inputCity">
                </div>

                <div class="col-12 registration text-center">
                    <div class="form-group">
                        <a href="AdminLoginPage.html">Already have an account</a>
                        <button type="register_btn" name="register_btn" class="col-12 mt-2 btn btn-primary">Register Now</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
