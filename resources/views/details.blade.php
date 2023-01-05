@extends('layout')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Product Details') }}
                <div style="float:right;display:inline-block;">

                <a href="javascript:history.back()" class="btn btn-secondary">Back</a>
              </div>

            </div>
               
                <!-- Carousel wrapper -->

  <!-- Controls -->

  <!-- Inner -->
  <div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="row">
                    <div class="col-md-6">
                        <div class="images p-3">
                            <div class="text-center p-4"> <img id="main-image" src="{{Storage::url($productdata->img)}}" width="250" /> </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="product p-4">
                           
                            <div class="mt-4 mb-3"> <span class="text-uppercase text-muted brand">iBuild's</span>
                                <h5 class="text-uppercase">{{$productdata->name}}</h5>
                                <div class="price d-flex flex-row align-items-center"> <span class="act-price"></span>
                                    <div class="ml-2">Price : <small class="dis-price">${{$productdata->price}}</small>  </div>
                                </div>
                            </div>
                            <p class="about">{{$productdata->description}}</p>
                            <div class="sizes mt-5">
                                <h6 class="text-uppercase">Features</h6> <label class="radio">
                                  <span>No of Bedrooms :</span>{{$productdata->no_of_bedrooms}} </label><br>
                                <span>No of Bathrooms : </span>{{$productdata->no_of_bathrooms}}
                            </div>
                            <div class="cart mt-4 align-items-center"> <button class="btn btn-danger text-uppercase mr-2 px-4">BUY</button> <i class="fa fa-heart text-muted"></i> <i class="fa fa-share-alt text-muted"></i> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

@endsection
<script type="text/javascript">
$(function(){
  $(".about").each(function(i){
    len=$(this).text().length;
    if(len>70)
    {
      $(this).text($(this).text().substr(0,70)+'...');
    }
  });
});
</script>
