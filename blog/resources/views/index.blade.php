@extends('layout.master_layout')
@section('content')

<!-- Hero Slider -->
<section class="section-wrap nopadding">
      <div class="container">
        <div class="entry-slider">
          <div class="flexslider" id="flexslider-hero">
            <ul class="slides clearfix">
              <li>
                <img src="img/slider/1.jpg" alt="">
                <div class="img-holder img-1"></div>
                <div class="hero-holder text-center right-align">
                  <div class="hero-lines">
                    <h1 class="hero-heading white">Collection 2017</h1>
                    <h4 class="hero-subheading white uppercase">HOT AND FRESH TRENDS OF THIS YEAR</h4>
                  </div>
                  <a href="#" class="btn btn-lg btn-white"><span>Shop Now</span></a>
                </div>
              </li>
              <li>
                <img src="img/slider/2.jpg" alt="">
                <div class="img-holder img-2"></div>
                <div class="hero-holder text-center">
                  <div class="hero-lines">
                    <h1 class="hero-heading white large">Winter Sales</h1>
                  </div>
                  <a href="#" class="btn btn-lg btn-white"><span>Shop Now</span></a>
                </div>
              </li>
              <li>
                <img src="img/slider/3.jpg" alt="">
                <div class="img-holder img-3"></div>
                <div class="hero-holder left-align">
                  <div class="hero-lines">
                    <h1 class="hero-heading white">Autumn 2017</h1>
                    <p class="white">A-ha Theme is the Best E-Commerce solution</p>
                    <p class="white">Packed with tons of features and unique styles</p>
                  </div>
                  <a href="#" class="btn btn-lg btn-white"><span>Shop Now</span></a>
                </div>
              </li>
              <li>
                <img src="img/slider/4.jpg" alt="">
                <div class="img-holder img-4"></div>
                <div class="hero-holder text-center right-align">
                  <div class="hero-lines">
                    <h1 class="hero-heading white">Summer 2017</h1>
                    <p class="white">A-ha Theme is the Best E-Commerce solution</p>
                    <p class="white">Packed with tons of features and unique styles</p>
                  </div>
                  <a href="#" class="btn btn-lg btn-white"><span>Shop Now</span></a>
                </div>
              </li>
            </ul>
          </div>
        </div> <!-- end slider -->
      </div>
    </section> <!-- end hero slider -->

    <!-- New Arrivals -->
    <section class="section-wrap new-arrivals pb-40">
      <div class="container">

        <div class="row heading-row">
          <div class="col-md-12 text-center">
            <h2 class="heading uppercase"><small>New Arrivals</small></h2>
          </div>
        </div>

        <div class="row row-10">              

          @foreach($products as $item)
          
          <div class="col-md-3 col-xs-6">
            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <!-- <img src="img/shop/shop_item_1.jpg" alt="">
                  <img src="img/shop/shop_item_1_back.jpg" alt="" class="back-img"> -->

                      <img src="{{url('/img/image_product/'.$item->image)}}" alt="">
                  <img src="{{url('/img/image_product/'.$item->image)}}" alt="" class="back-img"> 
                </a>
                <div class="product-label">
                  <span class="sale">sale</span>
                </div>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>                    
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>
              <div class="product-details">
                <h3>
             
             <a class="product-title" href="{{url('shop-single-product?id='.$item->id)}}">{{$item->product_name}}</a>
                </h3>
                <span class="price">
                    <span>$ {{$item->price}}</span>
                </span>
              </div>
            </div>
          </div>
        @endforeach
                     

        </div> <!-- end row -->
      </div>
    </section> <!-- end new arrivals -->

    <!-- Best Sellers -->
    <section class="section-wrap pb-0">
      <div class="container">

        <div class="row heading-row">
          <div class="col-md-12 text-center">
            <h2 class="heading uppercase"><small>Best Sellers</small></h2>
          </div>
        </div>

        <div class="row row-10">              

          <div class="col-md-3 col-xs-6 animated-from-left">
            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_5.jpg" alt="">
                  <img src="img/shop/shop_item_5_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>                    
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.html">Minty Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$399.00</span>
                  </ins>
                </span>
              </div>                          
            </div>
          </div>

          <div class="col-md-3 col-xs-6 animated-from-left">
            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_6.jpg" alt="">
                  <img src="img/shop/shop_item_6_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-label">
                  <span class="sale">sale</span>
                </div>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>                    
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.html">Sexy White Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$119.00</span>
                  </ins>
                </span>
              </div>
            </div>
          </div>

          <div class="col-md-3 col-xs-6 animated-from-left">
            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_7.jpg" alt="">
                  <img src="img/shop/shop_item_7_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>                    
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.html">Elegant Pink Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$1379.00</span>
                  </ins>
                </span>
              </div>              
            </div>
          </div>

          <div class="col-md-3 col-xs-6 animated-from-left">
            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_8.jpg" alt="">
                  <img src="img/shop/shop_item_8_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-label">
                  <span class="sale">sale</span>
                </div>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>                    
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.html">Gray California Dress</a>
                </h3>
                <span class="price">
                  <del>
                    <span>$350.00</span>
                  </del>
                  <ins>
                    <span class="ammount">$150.00</span>
                  </ins>
                </span>
              </div>                  

            </div>
          </div>            

        </div> <!-- end row -->
      </div>
    </section> <!-- end best sellers -->            


@endsection