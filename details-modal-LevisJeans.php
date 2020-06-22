<div class="modal fade details-1" id="details-1" tableindex="-1"role="dialog" aria-labelledby="details-1" aria-hidden="true">
<div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-header">
    <h4 class="modal-title text-center">levis Jeans</h4>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
       
    </div>

    <div class="modal-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <center>
    <img src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="levis jeans" class="details img-responsive w-auto">
    </center>
    </div>
    <div class="carousel-item">
        <center>
    <img src="admin_area/product_images/<?php echo $pro_img3; ?>" alt="levis jeans" class="details img-responsive w-auto">
    </center>
    </div>
    <div class="carousel-item">
        <center>
    <img src="admin_area/product_images/<?php echo $pro_img3; ?>" alt="levis jeans" class="details img-responsive w-auto">
    </center>
    </div>

    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>

    <div class="row slider-container">
<div class="col-sm-4">
<a data-target="#carouselExampleIndicators" data-slide-to="0"  href="#" class="thumb">
    <img src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="levis jeans" class=" img-responsive w-100 h-100 details-slides">
</a>
    </div>
    <div class="col-sm-4">
<a data-target="#carouselExampleIndicators" data-slide-to="1"  href="#" class="thumb">
    <img src="admin_area/product_images/<?php echo $pro_img2; ?>" alt="levis jeans" class=" img-responsive w-100 h-100 details-slides">
</a>
    </div>
    <div class="col-sm-4">
<a data-target="#carouselExampleIndicators" data-slide-to="2"  href="#" class="thumb">
    <img src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="levis jeans" class=" img-responsive w-100 h-100 details-slides">
</a>
    </div>
    </div>



                </div>


                <div class="col-sm-6">
                    <h4>details</h4>
                    <p>These jeans are amazing. You must try them and but them. Het them while they last</p>
    <hr>
    <p>Price:$25.99</p>
    <p>Brand:Levis </p>

    <form action="add_cart.php" method="post">
        <div class="form-group">
            <div id="quantity-container">
                <label for="quantity" id="quantitiy-label">Quantity</label>
                <input type="text" class="form-control" id="quantity" name="quantity">
            </div>
           
            <div class="form-group">
                <label for="size">size:</label>
                <select name="size" id="size" class="form-control">

                <option value=""></option>
                <option value="28">28</option>
                <option value="32">32</option>
                <option value="34">34</option>
                </select>

                    </div>
 

        </div>

    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn btn-default" data-dismiss="modal">Close</button>
        <button class="btn btn-warning" type="submit"><span class="glyphicon-shopping-cart"></span>Add To Cart</button>
    </div>
    </div>
</div>
</div>