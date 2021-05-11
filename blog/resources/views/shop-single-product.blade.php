@extends('layout.master_layout')
@section('content')


<!-- Breadcrumbs -->
<div class="container">
      <ol class="breadcrumb">
        <li>
          <a href="index.html">Home</a>
        </li>
        <li>
          <a href="index.html">Shop</a>
        </li>
        <li class="active">
          Catalog Grid
        </li>
      </ol> <!-- end breadcrumbs -->
    </div>


    <!-- Single Product -->
    <section class="section-wrap single-product">
      <div class="container relative">
        <div class="row">

          <div class="col-sm-6 col-xs-12 mb-60">

            <div class="flickity flickity-slider-wrap mfp-hover" id="gallery-main">
              @foreach ($products->ImageProduct  as $item => $value)
              <div class="gallery-cell">
                <a href="{{url('img/image_product/'.$value->image_product)}}" class="lightbox-img">
                  <img src="{{url('img/image_product/'.$value->image_product)}}" alt="" />
                  <i class="icon arrow_expand"></i>
                </a>
              </div>
              @endforeach
       
             
             
            </div> <!-- end gallery main -->

            <div class="gallery-thumbs">
          
              @foreach ($products->ImageProduct  as $item => $value)
                  <div class="gallery-cell">
                    <img src="{{url('img/image_product/'.$value->image_product)}}" alt="" />
                  </div>
              @endforeach
            
              

            </div> <!-- end gallery thumbs -->

          </div> <!-- end col img slider -->

          <div class="col-sm-6 col-xs-12 product-description-wrap">
          <h1 class="product-title">{!!$products->product_name !!}</h1>
            <span class="rating">
              <a href="#">3 Reviews</a>
            </span>
            <span class="price">
              <del>
                <span>$1550.00</span>
              </del>
              <ins>
                <span class="ammount">{!!$products->price!!}</span>
              </ins>
            </span>
            <p class="product-description">{!!$products->note!!}</p>

            <div class="select-options">
              <div class="row row-20">
                <div class="col-sm-6">
                  <select class="color-select">
                    <option value>{!!$products->color!!}</option>
                    <option selected value>Yellow</option>
                    <option value="Red">Red</option>
                    <option value="White">White</option>
                    <option value="Black">Black</option>
                    <option value="Blue">Blue</option>
                    <option value="Pink">Pink</option>
                    <option value="Organe">Organe</option>
                  </select>
                </div>

                <div class="col-sm-6">
                  <select class="size-options">
                    <option value>{!!$products->size!!}</option>
                  </select>
                </div>
              </div>
            </div>

            <ul class="product-actions clearfix">
              
              <li>
                <a href="#" class="btn btn-color btn-lg add-to-cart left"><span>Add to Cart</span></a>
              </li>                
              <li>
                <div class="icon-add-to-wishlist left">
                  <a href="#"><i class="icon icon_heart_alt"></i></a>
                </div>
              </li> 
              <li>
                <div class="quantity buttons_added">
                  <input type="button" value="-" class="minus" /><input type="number" step="1" min="0" value="" title="Qty" class="input-text qty text" /><input type="button" value="+" class="plus" />
                </div>
              </li>          
            </ul>

            <div class="product_meta">
              <span class="sku">SKU: <a href="#">{!!$products->product_name !!}</a></span>
              <span class="posted_in">Category: <a href="#">{!!$products->Manufacture->manu_name!!}</a></span>
              <span class="tagged_as">Tags: <a href="#">{!!$products->TypeProduct->type_name!!}</a></span>
            </div>

            <div class="socials-share clearfix">
              <div class="social-icons rounded">
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-google-plus"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-vimeo"></i></a>
              </div>
            </div>
          </div> <!-- end col product description -->
        </div> <!-- end row -->

        <!-- tabs -->
        <div class="row">
          <div class="col-md-12">
            <div class="tabs tabs-bb">
              <ul class="nav nav-tabs">                                 
                <li class="active">
                  <a href="#tab-description" data-toggle="tab">Description</a>
                </li>                                 
                <li>
                  <a href="#tab-info" data-toggle="tab">Information</a>
                </li>                                 
                <li>
                  <a href="#tab-reviews" data-toggle="tab">Reviews</a>
                </li>                                 
              </ul> <!-- end tabs -->
              
              <!-- tab content -->
              <div class="tab-content">
                
                <div class="tab-pane fade in active" id="tab-description">
                  <p>
                  {{-- We possess within us two minds. So far I have written only of the conscious mind. I would now like to introduce you to your second mind, the hidden and mysterious subconscious. Our subconscious mind contains such power and complexity that it literally staggers the imagination.And finally the subconscious is the mechanism through which thought impulses which are repeated regularly with feeling and emotion are quickened, charged. Our subconscious mind contains such power and complexity that it literally staggers the imagination.And finally the subconscious is the mechanism through which thought impulses. --}}
                  {!! $products->note !!}
                  </p>
                </div>
                
                <div class="tab-pane fade" id="tab-info">
                  <table class="table">

                    <tbody>
                      <tr>
                        <th>CPU</th>
                        <td>2.7GHz quad-core Intel Core i5 Turbo Boost up to 3.2GHz</td>
                      </tr>
                      <tr>
                        <th>RAM</th>
                        <td>8GB (two 4GB) memory</td>
                      </tr>
                      <tr>
                        <th>Video</th>
                        <td>Intel Iris Pro Graphics</td>
                      </tr>                                     
                    </tbody>
                  </table>
                </div>
                
                <div class="tab-pane fade" id="tab-reviews">

                  <div class="reviews">
                    <ul class="reviews-list">
                      <li>
                        <div class="review-body">
                          <div class="review-content">
                            <p class="review-author"><strong>Alexander Samokhin</strong> - May 6, 2014 at 12:48 pm</p>
                            <div class="rating">
                              <a href="#"></a>
                            </div>
                            <p>This template is so awesome. I didn’t expect so many features inside. E-commerce pages are very useful, you can launch your online store in few seconds. I will rate 5 stars.</p>
                          </div>
                        </div>
                      </li>

                      <li>
                        <div class="review-body">
                          <div class="review-content">
                            <p class="review-author"><strong>Christopher Robins</strong> - May 6, 2014 at 12:48 pm</p>
                            <div class="rating">
                              <a href="#"></a>
                            </div>
                            <p>This template is so awesome. I didn’t expect so many features inside. E-commerce pages are very useful, you can launch your online store in few seconds. I will rate 5 stars.</p>
                          </div>
                        </div>
                      </li>

                    </ul>         
                  </div> <!--  end reviews -->
                </div>
                
              </div> <!-- end tab content -->

            </div>
          </div> <!-- end tabs -->
        </div> <!-- end row -->

        
      </div> <!-- end container -->
    </section> <!-- end single product -->


    <!-- Related Items -->
    <section class="section-wrap related-products pt-0">
      <div class="container">
        <div class="row heading-row">
          <div class="col-md-12 text-center">
            <h2 class="heading uppercase"><small>Related Products</small></h2>
          </div>
        </div>
        
        <div class="row row-10">

          <div id="owl-related-products" class="owl-carousel owl-theme nopadding">

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
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
                  <a class="product-title" href="shop-single-product.html">Night Party Dress</a>
                </h3>
                <span class="price">
                  <del>
                    <span>$388.00</span>
                  </del>
                  <ins>
                    <span class="ammount">$159.99</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
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
                  <a class="product-title" href="shop-single-product.html">Elegant White Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$219.00</span>
                  </ins>
                </span>
              </div>                          
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
                </a>
                <span class="sold-out valign">out of stock</span>
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
                  <a class="product-title" href="shop-single-product.html">Long Black Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$99.00</span>
                  </ins>
                </span>
              </div>                        
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
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
                  <a class="product-title" href="shop-single-product.html">Sexy Pink Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$120.00</span>
                  </ins>
                </span>
              </div>                        
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
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

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
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

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
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

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="">
                  <img src="{{url('img/shop/single_img_5.jpg')}}" alt="" class="back-img">
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

          </div> <!-- end owl -->

        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end related products -->

@endsection