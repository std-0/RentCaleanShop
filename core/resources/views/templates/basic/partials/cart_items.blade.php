
<h4 class="title">@lang('Your Cart')</h4>
@forelse ($data as $item)

<div class="single-product-item">
    <div class="thumb">
        <img src="{{ getImage(imagePath()['product']['path'].'/'.@$item->product->main_image, imagePath()['product']['size']) }}" alt="@lang('shop')">
    </div>
    <div class="content">
        <h4 class="title"><a class="cl-white" href="{{route('product.detail', ['id'=>$item->product->id, 'slug'=>slug($item->product->name)])}}">{{ __($item->product->name) }}</a></h4>
        <div class="price">
            <span class="pprice">
                {{$general->cur_sym}}@php
                    if($item->attributes != null){
                        $s_price = priceAfterAttribute($item->product, $item->attributes);
                        echo getAmount($s_price, 2);
                    }else{
                        if($item->product->offer){
                            $s_price = $item->product->base_price - calculateDiscount($item->product->offer->activeOffer->amount, $item->product->offer->activeOffer->discount_type, $item->product->base_price);
                        }else{
                            $s_price = $item->product->base_price;
                        }
                        echo getAmount($s_price, 2);
                    }
                @endphp
                x {{ $item->quantity }}
            </span>
        </div>
        <div class="text-white">
            @if($item->attributes != null)
                @php echo cartAttributesShow($item->attributes) @endphp
            @endif
        </div>

        <a href="javascript:void(0)" class="remove-cart remove-item-button" data-id="{{$item->id}}" data-pid="{{$item->product->id}}"><i class="la la-times"></i></a>
    </div>
</div>
@empty
<div class="single-product-item no_data">
    <div class="no_data-thumb w-50 ml-auto mr-auto mb-4 text-white">
        <i class="la la-shopping-basket la-10x"></i>
    </div>
    <h6 class="cl-white">{{__($empty_message)}}</h6>
</div>
@endforelse

@if($data->count()>0)
<div class="btn-wrapper text-center">
    <a href="{{route('shopping-cart')}}" class="custom-button btn-block">@if($more> 0)
        @lang('And') {{$more}} @lang('More')
    @else
        @lang('View Cart')
    @endif</a>
</div>
@endif

@if($subtotal > 0)
    <div class="d-flex justify-content-between mt-3 text-white">
        <span class="text-white"> @lang('Subtotal') </span>
        <span class="text-white">{{ $general->cur_sym }}{{ getAmount($subtotal, 2) }}</span>

    </div>
    @if($coupon)

    <div class="coupon-wrapper">
        <div class="d-flex mt-1 text-white">
            <span class="mr-2 text-danger remove-coupon"><i class="la la-times-circle"></i></span>
            <span>@lang('Coupon') (<b class="couponCode1">{{$coupon['code']}}</b>) </span>
            <div class="ml-auto">
                <span class="amount">{{$general->cur_sym}}<span class="couponAmount"> {{ getAmount($coupon['amount'], 2) }}</span> </span>
            </div>
        </div>

        <div class="d-flex justify-content-between mt-1 text-white border-top-1">
            <span class="text-white"> @lang('Total Amount') </span>
            <span class="text-white">{{ $general->cur_sym }}{{ getAmount($subtotal - $coupon['amount'], 2) }}</span>
        </div>
    </div>

    @endif
@endif

