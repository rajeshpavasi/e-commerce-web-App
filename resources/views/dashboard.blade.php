@extends('layout')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Products') }}
                <form action="{{ route('filters') }}" method="POST">
                @csrf

                <div style="width:10%; float:right;display:inline-block;">
                    
                    <button type="submit" class="btn btn-primary">Filter</button>

                </div>
                    <div style="width:12%; float:right;display:inline-block;">
                    
                        <input class="form-control" id="Price" type="number" name="price" placeholder="Price.." >
                    </div>
                    <div style="width:15%; float:right;display:inline-block;">
                    
                    <input class="form-control" id="myInput" type="number" name="no_of_bedrooms" placeholder="Bedrooms.." >
                </div>
                <div style="width:15%; float:right;display:inline-block;">
                    
                    <input class="form-control" id="myInput" type="number" name="no_of_bathrooms" placeholder="Bathrooms.." >

                </div>
               
               
                    </form>
                    
                </div>
            </div>
               
                <!-- Carousel wrapper -->

  <!-- Controls -->

  <!-- Inner -->
  <div class="carousel-inner py-4">
    <!-- Single item -->
    <div class="carousel-item active">
      <div class="container">
        <div class="row">

        @foreach($productdata as $categorie)   
        
        
          <div class="col-lg-4">
            <div class="card">
              <img  
                src="{{Storage::url($categorie->img)}}"
                class="card-img-top"
                alt="Waterfall" style="height: 140px;"
              />
              <div class="card-body">
                <h5 class="card-title"> {{ $categorie->name }}</h5>
                <p class="card-text desc">
                {{ $categorie->description }}
                </p>
                <p class="card-text">
                 Price: ${{ $categorie->price }}
                </p>
                <p class="card-text">
                 No of Bedrooms: {{ $categorie->no_of_bedrooms }} <br>
                 No of bathrooms: {{ $categorie->no_of_bathrooms }}

                </p>
                <a href="{{ route('details', ['id'=>$categorie->id]) }}" class="btn btn-primary" >View</a>
              </div>
            </div>
          </div>
          @endforeach 
        </div>
      </div>
    </div>
</div>

@endsection
<script type="text/javascript">
$(function(){
  $(".desc").each(function(i){
    len=$(this).text().length;
    if(len>70)
    {
      $(this).text($(this).text().substr(0,70)+'...');
    }
  });
});
</script>