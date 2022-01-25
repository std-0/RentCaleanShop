<!-- navbar-wrapper start -->
<nav class="navbar-wrapper">
    <form class="navbar-search" onsubmit="return false;">
        <button type="submit" class="navbar-search__btn">
            <i class="las la-search"></i>
        </button>
        <input type="search" name="navbar-search__field" id="navbar-search__field" placeholder="@lang('Search')...">
        <button type="button" class="navbar-search__close"><i class="las la-times"></i></button>

        <div id="navbar_search_result_area">
            <ul class="navbar_search_result"></ul>
        </div>
    </form>

    <div class="navbar__left">
        <button class="res-sidebar-open-btn"><i class="las la-bars"></i></button>
        <button type="button" class="fullscreen-btn">
            <i class="fullscreen-open las la-compress" onclick="openFullscreen();"></i>
            <i class="fullscreen-close las la-compress-arrows-alt" onclick="closeFullscreen();"></i>
        </button>
    </div>

    <div class="navbar__right">
        <ul class="navbar__action-list">
            <li>
                <button type="button" class="navbar-search__btn-open">
                    <i class="las la-search"></i>
                </button>
            </li>
            <li>
                <a href="{{ url('/') }}" target="blank" class="font-weight-bold text--black">
                    <i class="las la-cart-plus"></i> @lang('Visit Store')
                </a>
            </li>

            <li class="dropdown">
                <button type="button"  data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
                    <span class="navbar-user">
                        @if (session('lang') == 'en')
                        @php
                            $default = $language->where('code', 'en')->first();
                        @endphp

                        <span class="navbar-user__thumb">
                            <img src="{{ getImage('assets/images/lang' .'/'. $default['icon'],'64x64')}}" alt="@lang('image')">
                        </span>

                        <span class="navbar-user__info">
                            <span class="navbar-user__name">@lang('English')</span>
                        </span>

                        @else
                            @php $lang = $language->where('code', session('lang'))->first() @endphp
                            <span class="navbar-user__thumb">
                                <img src="{{ getImage('assets/images/lang' .'/'. $lang['icon'],'64x64')}}" alt="@lang('country')">
                            </span>
                            <span class="navbar-user__info">
                                <span class="navbar-user__name">{{__($lang->name)}}</span>
                            </span>
                        @endif
                        <span class="icon"><i class="las la-chevron-circle-down"></i></span>
                    </span>
                </button>
                <div class="dropdown-menu dropdown-menu--sm p-0 border-0 box--shadow1 dropdown-menu-right">
                    @foreach ($language as $lang)
                        @if ($lang->code == request()->session()->get('lang'))
                            @continue
                        @endif
                        <a href="{{ route('lang', $lang->code) }}" class="dropdown-menu__item d-flex align-items-center px-3 py-2">

                            <span class="dropdown-menu__caption">{{__($lang->name)}}</span>
                        </a>
                    @endforeach
                </div>
            </li>


            <li class="dropdown">
                <button type="button" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
                    <span class="navbar-user">
                        <span class="navbar-user__thumb">
                            <img src="{{ getAvatar('assets/admin/images/profile/'. auth()->guard('admin')->user()->image) }}"
                                alt="@lang('image')">
                            </span>

                        <span class="navbar-user__info">
                        <span class="navbar-user__name">{{auth()->guard('admin')->user()->username}}</span>
                        </span>
                        <span class="icon"><i class="las la-chevron-circle-down"></i></span>
                    </span>
                </button>
                <div class="dropdown-menu dropdown-menu--sm p-0 border-0 box--shadow1 dropdown-menu-right">
                    @if(Route::has('admin.profile'))
                        <a href="{{ route('admin.profile') }}"
                           class="dropdown-menu__item d-flex align-items-center px-3 py-2">
                            <i class="dropdown-menu__icon las la-user-circle"></i>
                            <span class="dropdown-menu__caption">@lang('Profile')</span>
                        </a>
                    @endif

                    @if(Route::has('admin.profile'))
                        <a href="{{route('admin.password')}}"
                           class="dropdown-menu__item d-flex align-items-center px-3 py-2">
                            <i class="dropdown-menu__icon las la-key"></i>
                            <span class="dropdown-menu__caption">@lang('Password')</span>
                        </a>
                    @endif

                    @if(Route::has('admin.logout'))
                        <a href="{{ route('admin.logout') }}"
                           class="dropdown-menu__item d-flex align-items-center px-3 py-2">
                            <i class="dropdown-menu__icon las la-sign-out-alt"></i>
                            <span class="dropdown-menu__caption">@lang('Logout')</span>
                        </a>
                    @endif
                </div>
            </li>
        </ul>
    </div>
</nav>
<!-- navbar-wrapper end -->
