function changeNav () {
    if($("body").hasClass("homepage")) {
        $('.header-2').hide();
        $(window).scroll(function() {
            if ($(document).scrollTop() >= 100) {
                $(".header-1").hide();
                $('.header-2').fadeIn('slow');
                $("header").addClass("scroll-nav");
                $(".header-bottom").appendTo(".header-2");
                $(".header-right").appendTo(".header-2");
                $(".header-right").appendTo(".header-2");
                $(".mobile-wrap.active .primary-menu.active").css({"top":"72px"});
            }
            else {
                $(".header-1").fadeIn('slow');
                $('.header-2').hide();
                $("header").removeClass("scroll-nav");
                $(".header-bottom").appendTo(".header-1");
                $(".header-right").appendTo(".header-1 .header-about");
                $(".mobile-wrap.active .primary-menu.active").css({"top":"120px"});
            }
        });
    }else {
        $("header .header-1").css({"display":"none"});
        $("header").addClass("scroll-nav");
        $(".header-bottom").appendTo(".header-2");
        $(".header-right").appendTo(".header-2");
        $(".header-right").appendTo(".header-2");
        $(".mobile-wrap.active .primary-menu.active").css({"top":"72px"});
    }
}

function mappingMenu() {
    let mainMenu = $("header .header-bottom .primary-menu").mapping({
        mobileWrapper: "header .mobile-wrap",
        mobileMethod: "appendTo",
        desktopWrapper: "header .header-bottom",
        desktopMethod: "appendTo",
        breakpoint: 1200,
    });
    let mainNav = $("header .header-about .header-right").mapping({
        mobileWrapper: "header .mobile-wrap",
        mobileMethod: "appendTo",
        desktopWrapper: "header .header-about",
        desktopMethod: "appendTo",
        breakpoint: 1024,
    });
    // let mainMenuTop = $("header .top-wrap .menu-list").mapping({
    // 	mobileWrapper: "header .mobile-wrap",
    // 	mobileMethod: "appendTo",
    // 	desktopWrapper: "header .top-wrap .main-menu-top",
    // 	desktopMethod: "appendTo",
    // 	breakpoint: 768,
    // });
    // let searchBox = $("header .top-wrap .searchbox").mapping({
    // 	mobileWrapper: "header .mobile-wrap",
    // 	mobileMethod: "appendTo",
    // 	desktopWrapper: "header .top-wrap .main-search",
    // 	desktopMethod: "appendTo",
    // 	breakpoint: 576,
    // });
}

function menuMobile() {
    let toggle = $(".toggle-menu");
    let menuMobile = $(".mobile-wrap");
    let primaryMenu = $(".primary-menu");
    toggle.on("click", function () {
        $(this).toggleClass("active");
        menuMobile.toggleClass("active");
        primaryMenu.toggleClass("active");
    })
}

function search() {
    let searchToggle = $(".search");
    let searchBox = $("#search");
    searchToggle.on("click", function () {
        searchBox.toggleClass("active");
    });

    let btnClose = $(".btn-close");
    btnClose.on("click", function () {
        searchBox.removeClass("active");
    });
}
// function menuMobile() {
// 	let hamburger = $(".button-hambuger .burger-bt-inner");
// 	let menuMobile = $(".mobile-wrap");
// 	hamburger.on("click", function () {
// 		$(this).toggleClass("active");
// 		menuMobile.toggleClass("active");
// 	});
// }

function swiperInit() {
    // var bannerHome = new Swiper(".banner-home .swiper-container", {
    //     slidesPerView: 1,
    //     loop: true,
    //     autoplay: {
    //         delay: 5000,
    //     },
    //     speed: 300,
    //     // slidesPerColumn: 2,
    //     // spaceBetween: 30,
    //     slidesPerColumnFill: "row",
    //     pagination: {
    //         el: ".banner-home .swiper-pagination",
    //         clickable: true,
    //     },
    //     navigation: {
    //         nextEl: ".banner-home .button-next",
    //         prevEl: ".banner-home .button-prev",
    //     },
    // });

    // var home3Thumbs = new Swiper(
    //     ".sabeco-home-3 .main-slide-thumbs .swiper-container", {
    //         slidesPerView: 3,
    //         speed: 300,
    //         slidesPerColumnFill: "row",
    //         freeMode: true,
    //         loopedSlides: 4,
    //         spaceBetween: 10,
    //         watchSlidesVisibility: true,
    //         watchSlidesProgress: true,
    //         breakpoints: {
    //             768: {
    //                 spaceBetween: 30,
    //             },
    //         },
    //     }
    // );

    
    //MY CODE
    var slideDevices = new Swiper(".swiper-devices .swiper-container", {
        // slidesPerView: 1.6,
        // centeredSlides: true,
        spaceBetween: 0,
        speed: 1000,
        observer: true,
        loop: true,
        observeParents: true,
        navigation: {
            nextEl: ".swiper-devices .button-next",
            prevEl: ".swiper-devices .button-prev",
        },
        breakpoints: {
            460: {
                spaceBetween: 10,
                slidesPerView: 1,
                centeredSlides: false,
            },
            768: {
                spaceBetween: 10,
                slidesPerView: 2,
                centeredSlides: false,
            },
            1024: {
                spaceBetween: 0,
                slidesPerView: 3,
                centeredSlides: false,
            },
        },
    });
    var slideCosmetic = new Swiper(".swiper-cosmetic .swiper-container", {
        // slidesPerView: 1.6,
        // centeredSlides: true,
        spaceBetween: 0,
        speed: 1000,
        observer: true,
        loop: true,
        observeParents: true,
        navigation: {
            nextEl: ".swiper-cosmetic .button-next",
            prevEl: ".swiper-cosmetic .button-prev",
        },
        breakpoints: {
            460: {
                spaceBetween: 10,
                slidesPerView: 1,
                centeredSlides: false,
            },
            768: {
                spaceBetween: 10,
                slidesPerView: 2,
                centeredSlides: false,
            },
            1024: {
                spaceBetween: 0,
                slidesPerView: 3,
                centeredSlides: false,
            },
        },
    });
    var slideWhy = new Swiper(".swiper-why .swiper-container", {
        // slidesPerView: 1.6,
        // centeredSlides: true,
        spaceBetween: 0,
        speed: 1000,
        observer: true,
        loop: true,
        observeParents: true,
        breakpoints: {
            460: {
                spaceBetween: 10,
                slidesPerView: 1,
                centeredSlides: true,
            },
            768: {
                spaceBetween: 10,
                slidesPerView: 2,
                centeredSlides: false,
            },
            1024: {
                spaceBetween: 0,
                slidesPerView: 5,
                centeredSlides: true,
            },
        },
    });
    var slidePartner = new Swiper(".swiper-partner .swiper-container", {
        // slidesPerView: 1.6,
        // centeredSlides: true,
        spaceBetween: 0,
        speed: 1000,
        observer: true,
        loop: true,
        observeParents: true,
        navigation: {
            nextEl: ".swiper-partner .button-next",
            prevEl: ".swiper-partner .button-prev",
        },
        breakpoints: {
            460: {
                spaceBetween: 10,
                slidesPerView: 2,
                centeredSlides: false,
            },
            768: {
                spaceBetween: 10,
                slidesPerView: 3,
                centeredSlides: false,
            },
            1024: {
                spaceBetween: 30,
                slidesPerView: 6,
                centeredSlides: false,
            },
        },
    });
    var slideNews = new Swiper(".swiper-news .swiper-container", {
        // slidesPerView: 1.6,
        // centeredSlides: true,
        spaceBetween: 0,
        speed: 1000,
        observer: true,
        loop: true,
        observeParents: true,
        pagination: {
            el: '.swiper-news .swiper-pagination',
            clickable: true,
        },
        breakpoints: {
            460: {
                spaceBetween: 10,
                slidesPerView: 2,
                centeredSlides: false,
            },
            768: {
                spaceBetween: 10,
                slidesPerView: 3,
                centeredSlides: false,
            },
            1024: {
                spaceBetween: 30,
                slidesPerView: 3,
                centeredSlides: false,
            },
        },
    });
    var slideThumbs = new Swiper(".swiper-library .gallery-thumbs", {

        spaceBetween: 5,
        loop: false,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        // slidesPerGroup: 1,
        breakpoints: {
            320: {
                spaceBetween: 10,
                slidesPerView: 1,
                centeredSlides: false,
                loop: true,
            },
            460: {
                spaceBetween: 10,
                slidesPerView: 2,
                centeredSlides: false,
            },
            768: {
                spaceBetween: 10,
                slidesPerView: 3,
                centeredSlides: false,
                slidesPerColumn: 1,
            },
            1024: {
                spaceBetween: 5,
                slidesPerView: 5,
                centeredSlides: false,
                slidesPerColumn: 1,
                direction: 'vertical',
            },
        },
    });
    var slideTop = new Swiper(".swiper-library .gallery-top", {
        // spaceBetween: 0,
        // speed: 1000,
        // observer: true,
        // loop: true,
        // centeredSlides: true,
        // observeParents: true,
        // slidesPerView: 'auto',
        spaceBetween: 30,
        loop: true,
        loopedSlides: 1,
        thumbs: {
            swiper: slideThumbs,
        },
        // breakpoints: {
        //     460: {
        //         spaceBetween: 10,
        //         slidesPerView: 1,
        //         centeredSlides: false,
        //     },
        //     768: {
        //         spaceBetween: 10,
        //         slidesPerView: 3,
        //         centeredSlides: false,
        //     },
        //     1024: {
        //         spaceBetween: 30,
        //         slidesPerView: 3,
        //         centeredSlides: false,
        //     },
        // },
    });
    var slideRated = new Swiper(".swiper-rated .swiper-container", {
        spaceBetween: 0,
        speed: 1000,
        observer: true,
        loop: true,
        centeredSlides: false,
        observeParents: true,
        slidesPerView: 'auto',
        breakpoints: {
            460: {
                spaceBetween: 10,
                slidesPerView: 1,
                centeredSlides: false,
            },
            768: {
                spaceBetween: 10,
                slidesPerView: 3,
                centeredSlides: false,
            },
            1024: {
                spaceBetween: 30,
                slidesPerView: 3,
                centeredSlides: false,
            },
        },
    });
    var galleryThumbs = new Swiper('.cosmetic-swiper .gallery-thumbs', {
        spaceBetween: 5,
        loop: false,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            300: {
                slidesPerView: 4,
            },
            768: {
                slidesPerView: 3,
                slidesPerColumn: 1,
                direction: 'vertical',
            },
            1024: {
                slidesPerView: 5,
                slidesPerColumn: 1,
                direction: 'vertical',
            },
        },
    });
    var galleryTop = new Swiper('.cosmetic-swiper .gallery-top', {
        loop: true,
        loopedSlides: 1,
        thumbs: {
            swiper: galleryThumbs
        },
    });
}
function tabActive() {
    $(".tab-navigation li a").on("click", function () {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");

        let maxHeight = 400;
        let contentTab = $(".tab-wrapper .tab-item.active");
        // console.log(contentTab.height())
        if (contentTab.height() < maxHeight) {
            $(contentTab).find('.btn-view-more').hide()
        }
    });
}

window.onload = function () {
    $(".block-2_cosmetic-detail .overlay, .block-2_cosmetic-detail .modal").addClass('active');
};
$('.block-2_cosmetic-detail .overlay, .close').click(function () {
    $('.block-2_cosmetic-detail .overlay, .block-2_cosmetic-detail .modal').toggleClass("active");
});

function pageBanner() {
    var pageBanner = new Swiper(".pages-banner .swiper-container", {
        slidesPerView: 1,
        loop: true,
        autoplay: {
            delay: 3000,
        },
        lazy: true,
        parallax: true,
        speed: 300,
        effect: "fade",
    });
}

function scrollToDiv() {
    $(".pages-banner-arrow").on("click", function (event) {
        var hash = this.hash;
        $("html,body").animate({
            scrollTop: $(".pages-banner").outerHeight(),
        },
            "slow"
        );
    });
}

function Acordition() {
    $(".faq-list .faq-item").click(function (e) {
        var t = $(this).closest(".faq-item").find(".content");
        $(this).closest(".faq-list").find(".content").not(t).slideUp();
        $(this).hasClass("active") ?
            $(this).removeClass("active") :
            ($(this)
                .closest(".faq-list")
                .find(".faq-item.active")
                .removeClass("active"),
                $(this).addClass("active")),
            t.stop(!1, !0).slideToggle(),
            e.preventDefault();
    });
}
// $(document).on("scroll", function() {
//     header.scrollActive();
// });

const selectDis = () => {
    $(".select-item .title-select").click(function () {
        var t = $(this).closest(".select-item").find(".content");
        $(this).closest(".wrap-select").find(".content").not(this).slideUp();
        if ($(this).hasClass("active")) {
            $(this).removeClass("active");
        } else {
            $(this)
                .closest(".wrap-select")
                .find(".title-select.active")
                .removeClass("active");
            $(this).addClass("active");
            t.stop(!1, !0).slideToggle(), e.preventDefault();
        }
    });
};

$(document).ready(function() {
    AOS.init();
    // setBackgroundElement();
    changeNav();
    mappingMenu();
    menuMobile();
    search();
    Acordition();
    swiperInit();
    pageBanner();
    scrollToDiv();
    selectDis();
    tabActive();
});
