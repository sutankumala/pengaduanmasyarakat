<?php
require("../config/fungsi.php");
if(isset($_POST['login'])){
  login($_POST['username'], $_POST['password'], $_POST['ingatkan']);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Contoh REST API</title>

  <!-- Custom fonts for this template-->
  <link href="admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <!-- <link href="admin/css/sb-admin-2.min.css" rel="stylesheet"> -->
  <link href="admin/css/sb-admin-2.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">
  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-8 col-lg-10 col-md-8">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div id="card" class="col-lg">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Rest API !</h1>
                  </div>
                  <form method="POST" action="">
                    <input type="text" name="judul" autocomplete="off" placeholder="Cari Film" class="form-control form-control-user" id="username">
                    <input type="submit" name="cari" id="login" value="Cari" class="mt-4 btn btn-primary btn-user btn-block">
                  </form>
                  <div class="text-center"><br/>
<?php
if(isset($_POST['cari'])){
  $curl = curl_init();
  $judul = $_POST['judul'];
  curl_setopt($curl, CURLOPT_URL, 'http://omdbapi.com/?apikey=bde78e2&s='.$judul);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
  $hasil = curl_exec($curl);
  curl_close($curl);
  $hasil = json_decode($hasil, true);
  
  if(empty($judul)){
    echo "<div class=\"animated--grow-in\">Masukan judul Film !</div>";
  }elseif(empty($hasil)){
    echo "<div class=\"animated--grow-in\">Tidak ada Respon !</div>";
  }elseif($hasil['Response'] == "False"){
    echo "<div class=\"animated--grow-in\">Film Tidak Ditemukan !</div>";
  }else{
    $dataa = $hasil['Search'];
    foreach ($dataa as $key) {
      echo $key['Title']."<br/>";
    }
  }  
}
?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="admin/vendor/jquery/jquery.min.js"></script>
  <script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="admin/js/sb-admin-2.min.js"></script>

<!--   <script type="text/javascript">
    function cari(){
      $.ajax({
        url: 'http://omdbapi.com',
        type: 'get',
        dataType: 'json',
        data: {
          'apikey' : 'bde78e2',
          's' : $('#username').val()
        },
        success: function(hasil){
          if(hasil.Response == "True"){
            let film = hasil.Search;
            console.log(film);
            $.each(film, function(i, data){
              $('#card').append(`
                <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="`+data.Poster+`" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">`+data.Title+`</h5>
                  <p class="card-text">`+data.Year+`</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
                `);
            });
            $('#username').val('');
          }else{
            $('#card').append(`
                <div class="card" style="width: 18rem;">
                <div class="card-body">
                  <h5 class="card-title">Tidak Ditemukan !</h5>
                </div>
              </div>
                `);
            $('#username').val('');
          }
        }
      });
    }
    $('#login').on('click', function() {
      cari();
    });
    $('#username').on('keyup', function(e) {
      if(e.which === 13){
        cari();
      }
    });
    
  </script> -->

</body>

</html>