@extends('admin.layouts.app')
@section('panel')
<div class="row">
    <div class="col-lg-12">
        <div class="card b-radius--10">
            <div class="card-body">

                <div class="row justify-content-end">
                    <div class="col-lg-4 mb-3">
                        <form action="{{ request()->routeIs('admin.products.trashed') || request()->routeIs('admin.products.trashed.search')?route('admin.products.trashed.search'):route('admin.products.search') }}" method="GET" >
                            <div class="input-group has_append">
                                <input type="text" name="search" class="form-control" placeholder="@lang('Search')..."
                                    value="{{request()->search ?? '' }}">
                                <div class="input-group-append">
                                    <button class="btn btn--success" id="search-btn" type="submit"><i class="la la-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="table-responsive--md table-responsive">
                    <table class="table table--light style--two">
                        <thead>
                            <tr>
                                <th>@lang('Id')</th>
                                <th>@lang('Thumbnail')</th>
                                <th>@lang('Name')</th>
                                <th>@lang('Price')</th>
                                <th>@lang('In Stock')</th>
                                <th>@lang('Action')</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($products as $product)
                            <tr>
                                <td data-label="Id">
                                    {{ $products->firstItem() + $loop->index }}
                                </td>

                                <td data-label="@lang('Thumbnail')">
                                    <div class="thumbnails d-inline-block">
                                        <div class="thumb">
                                            <a href="{{ getImage(imagePath()['product']['path'].  '/thumb_'. @$product->main_image, imagePath()['product']['size']) }}" class="image-popup">
                                                <img src="{{ getImage(imagePath()['product']['path']. '/thumb_'. @$product->main_image, imagePath()['product']['size']) }}" alt="@lang('image')">
                                            </a>
                                        </div>
                                    </div>
                                </td>

                                <td data-label="@lang('Name')">
                                    <a href="{{ route('admin.products.edit', [$product->id, slug($product->name)]) }}"><span class="name mb-0"  onclick="{{$product->trashed()?'return false':''}}" data-toggle="tooltip" data-placement="top" title="{{ __($product->name) }}">
                                        {{ shortDescription($product->name, 50) }}</span>
                                    </a>
                                </td>
                                <td data-label="@lang('Price')">{{$product->base_price}}</td>

                                <td data-label="@lang('In Stock')">
                                    @if($product->track_inventory)
                                        {{optional($product->stocks)->sum('quantity')}}
                                    @else
                                        @lang('Infinite')
                                    @endif
                                </td>
                                <td data-label="@lang('Action')">
                                    <a href="javascript:void(0)" class="highlight-btn icon-btn btn--success {{$product->trashed()?'disabled':''}} mr-1" data-toggle="tooltip" data-placement="top" title="@lang('Highlight')" data-id="{{ $product->id }}" data-featured="{{ $product->is_featured }}" data-special="{{ $product->is_special }}">
                                        <i class="la la-highlighter"></i>
                                    </a>

                                    <a href="@if($product->trashed()) javascript:void(0) @else {{ route('admin.products.edit', [$product->id, slug($product->name)]) }} @endif" class="icon-btn btn--primary {{$product->trashed()?'disabled':''}} mr-1" data-toggle="tooltip" data-placement="top" title="@lang('Edit')">
                                        <i class="la  la-edit"></i>
                                    </a>

                                    <a href="@if($product->trashed()) javascript:void(0) @else {{ route('admin.products.attribute-add', [$product->id]) }} @endif" class="icon-btn btn--info text-white {{ $product->trashed()?'disabled':''}} {{ $product->has_variants?'':'disabled' }} mr-1" data-toggle="tooltip" data-placement="top" title="@lang('Add Variants')">
                                        <i class="la la-palette"></i>
                                    </a>

                                    <a href="@if($product->trashed()) javascript:void(0) @else {{ route('admin.products.stock.create', [$product->id]) }} @endif" class="icon-btn btn--warning text-white {{$product->trashed()?'disabled':''}} {{ $product->track_inventory?'':'disabled' }} mr-1" data-toggle="tooltip" data-placement="top" title="@lang('Manage Inventory')">
                                        <i class="fas fa-database"></i>
                                    </a>

                                    <button type="button" class="icon-btn btn--{{$product->trashed()?'success':'danger'}} deleteBtn" data-toggle="tooltip" data-title="{{$product->trashed()?'Restore':'Delete'}}" data-type="{{$product->trashed()?'restore':'delete'}}" data-id='{{$product->id}}'>
                                        <i class="la la-{{$product->trashed()?'redo':'trash'}}" ></i>
                                    </button>
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td class="text-muted text-center" colspan="100%">{{ __($empty_message) }}</td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer py-4">
                <nav aria-label="...">
                    {{ $products->appends(['search'=>request()->search ?? null])->links('admin.partials.paginate') }}
                </nav>
            </div>

        </div>
    </div>
</div>

{{-- REMOVE METHOD MODAL --}}

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form action="" method="POST" id="deleteForm">
            @csrf
                <div class="modal-header">
                    <h5 class="modal-title text-capitalize" id="deleteModalLabel"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-bold">

                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn--dark" data-dismiss="modal">@lang('No')</button>
                    <button type="submit" class="btn btn--danger">@lang('Yes')</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="highlight-modal">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">@lang('Highlight As')</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
            <form action="{{route('admin.products.highlight')}}" method="post">
                @csrf
                <input type="hidden" name="product_id"/>
                <div class="modal-body">
                    <div class="form-group row">
                        <div class="col-md-4">
                            <label class="font-weight-bold">
                                @lang('Featured')
                            </label>
                        </div>
                        <div class="col-md-8">
                            <label class="switch">
                                <input type="checkbox" name="featured" value="1" >
                                <span class="slider round"></span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-4">
                            <label class="font-weight-bold">
                                @lang('Special')
                            </label>
                        </div>
                        <div class="col-md-8">
                            <label class="switch">
                                <input type="checkbox" name="special" value="1">
                                <span class="slider round"></span>
                            </label>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">

                    <button type="submit" class="btn btn--success btn-block">@lang('Save')</button>
                </div>
            </form>
        </div>
    </div>
</div>



@endsection
@push('breadcrumb-plugins')
    @if(request()->routeIs('admin.products.all'))
    <a href="{{ route('admin.products.create') }}" title="@lang('Shortcut'): shift+n" class="btn btn-sm btn--success box--shadow1 text--small"><i class="la la-plus"></i>@lang('Add New')</a>
    @else
        @if(request()->routeIs('admin.products.trashed.search'))
        <a href="{{route('admin.products.trashed')}}" class="btn btn-sm btn--primary box--shadow1 text--small">
            <i class="la la-backward"></i>@lang('Go Back')</a>
        @else
        <a href="{{route('admin.products.all')}}" class="btn btn-sm btn--primary box--shadow1 text--small">
            <i class="la la-backward"></i>@lang('Go Back')</a>
        @endif
    @endif

    @if(request()->routeIs('admin.products.all'))
    <a href="{{ route('admin.products.trashed') }}" class="btn btn-sm btn--danger box--shadow1 text--small"><i class="la la-trash-alt"></i>@lang('Trashed')</a>
    @endif
@endpush

@push('script')

<script>

    "use strict";
    (function ($) {

        $(document).keypress(function (e) {
            var unicode = e.charCode ? e.charCode : e.keyCode;
            if(unicode == 78){
                window.location = "{{ route('admin.products.create') }}";
            }
        });

        $('.deleteBtn').on('click', function () {
            var modal   = $('#deleteModal');
            var id      = $(this).data('id');
            var type    = $(this).data('type');
            var form    = document.getElementById('deleteForm');

            if(type == 'delete'){
                modal.find('.modal-title').text('{{ trans("Delete Product") }}');
                modal.find('.modal-body').text('{{ trans("Are you sure to delete this product?") }}');
            }else{
                modal.find('.modal-title').text('{{ trans("Restore Product") }}');
                modal.find('.btn--danger').removeClass('btn--danger').addClass('btn--success');
                modal.find('.modal-body').text('{{ trans("Are you sure to restore this product?") }}');
            }

            form.action = '{{ route('admin.products.delete', '') }}'+'/'+id;
            modal.modal('show');
        });

        $('.image-popup').magnificPopup({
            type: 'image'
        });

        $('.highlight-btn').on('click', function(e){
            var modal       = $('#highlight-modal');
            var id          = $(this).data('id');
            var featured    = $(this).data('featured');
            var special     = $(this).data('special');

            if(featured == 1){
                modal.find('input[name=featured]').prop('checked', true);
            }else{
                modal.find('input[name=featured]').prop('checked', false);
            }

            if(special == 1){
                modal.find('input[name=special]').prop('checked', true);
            }else{
                modal.find('input[name=special]').prop('checked', false);
            }

            modal.find('input[name=product_id]').val(id);
            modal.modal('show');
        });
    })(jQuery)
</script>

@endpush
