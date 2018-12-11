var App=App|| {}

;
App.locale= {
    region: {
        asia: "\uc544\uc2dc\uc544", europe: "\uc720\ub7fd", america: "\uc544\uba54\ub9ac\uce74", oceania: "\uc624\uc138\uc544\ub2c8\uc544", domestic: "\uad6d\ub0b4", africa: "\uc544\ud504\ub9ac\uce74"
    }
    ,
    select_city:"\ub3c4\uc2dc \uc120\ud0dd",
    offer: {
        price: {
            nego: "\ubb38\uc758\ud544\uc694", krw: "\uc6d0"
        }
        ,
        long_text: {
            show: "+ \ub354\ubcf4\uae30", close: "\uc811\uae30"
        }
    }
    ,
    time: {
        am:"\uc624\uc804",
        pm:"\uc624\ud6c4",
        formats: {
            "default": "%Y/%m/%d %H:%M:%S", "long": "%Y\ub144 %m\uc6d4 %d\uc77c, %H\uc2dc %M\ubd84 %S\ucd08 %Z", "short": "%y/%am/%d %H:%M"
        }
    }
    ,
    calendar: {
        year: "\ub144", weeks: ["\uc77c", "\uc6d4", "\ud654", "\uc218", "\ubaa9", "\uae08", "\ud1a0"], weeks_long: ["\uc77c\uc694\uc77c", "\uc6d4\uc694\uc77c", "\ud654\uc694\uc77c", "\uc218\uc694\uc77c", "\ubaa9\uc694\uc77c", "\uae08\uc694\uc77c", "\ud1a0\uc694\uc77c"], months: ["1\uc6d4", "2\uc6d4", "3\uc6d4", "4\uc6d4", "5\uc6d4", "6\uc6d4", "7\uc6d4", "8\uc6d4", "9\uc6d4", "10\uc6d4", "11\uc6d4", "12\uc6d4"], next_month: "\ub2e4\uc74c \ub2ec", prev_month: "\uc774\uc804 \ub2ec", blocked_offer_date: "\ud22c\uc5b4 \ubd88\uac00\ub2a5 \uc77c"
    }
    ,
    map: {
        move_location: "\uc815\ud655\ud55c \uc704\uce58\ub85c \uc62e\uaca8\uc8fc\uc138\uc694"
    }
    ,
    no_search_result:"\uc557, \uac80\uc0c9\uacb0\uacfc\uac00 \uc5c6\uc2b5\ub2c8\ub2e4.<br/>\ub2e4\ub978 \ub2e8\uc5b4\ub85c \uac80\uc0c9\ud574\ubcf4\uc138\uc694.",
    insert_email_for_invoice:"\uc5ec\ud589\ud655\uc778\uc99d\uc744 \ubc1b\uc744 \uc774\uba54\uc77c\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.",
    not_suitable_email:"\uc81c\ub300\ub85c\ub41c \uc774\uba54\uc77c \uc8fc\uc18c\uac00 \uc544\ub2d9\ub2c8\ub2e4.",
    success:"\uc131\uacf5\uc801\uc73c\ub85c \ucc98\ub9ac\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",
    error:"\ubb38\uc81c\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694.",
    button: {
        cancel: "\ucde8\uc18c", apply: "\uc801\uc6a9", confirm: "\ud655\uc778"
    }
    ,
    banner: {
        android: "Google Play \uc571 \ub2e4\uc6b4\ub85c\ub4dc", ios: "App Store \uc571 \ub2e4\uc6b4\ub85c\ub4dc"
    }
    ,
    autosave: {
        autosaving: "\uc790\ub3d9\uc800\uc7a5 \uc911 \uc785\ub2c8\ub2e4.", success: "\uc790\ub3d9 \uc800\uc7a5\ub418\uc5c8\uc2b5\ub2c8\ub2e4.", error: "\uc790\ub3d9 \uc800\uc7a5\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."
    }
    ,
    rating: {
        1: "\ubcc4\ub85c\uc600\uc5b4\uc694", 2: "\uadf8\uc800\uadf8\ub7ac\uc5b4\uc694", 3: "\uad1c\ucc2e\uc558\uc5b4\uc694", 4: "\uc88b\uc558\uc5b4\uc694", 5: "\ucd5c\uace0\uc600\uc5b4\uc694!"
    }
    ,
    pagination: {
        first: "\ucc98\uc74c", prev: "\uc774\uc804", next: "\ub2e4\uc74c", last: "\ub9c8\uc9c0\ub9c9"
    }
    ,
    guide_documents: {
        identification: "\uc2e0\ubd84\uc99d", drivers_license: "\uc6b4\uc804\uba74\ud5c8\uc99d", business_license: "\uc0ac\uc5c5\uc790 \ub4f1\ub85d\uc99d", related_license: "\uad00\ub828 \ud5c8\uac00", visa: "\ud604\uc9c0 \ube44\uc790", passbook_copy: "\ud1b5\uc7a5 \uc0ac\ubcf8", other: "\uadf8 \uc678"
    }
    ,
    alert: {
        regist_schedule:"\uc785\ub825\ud558\uc2e0 \uc5ec\ud589\uc77c\uc815\uc5d0 \uc608\uc57d \ub610\ub294 \uad6c\ub9e4\uac00 \uac00\ub2a5\ud55c \uc0c1\ud488\ub4e4\uc774 \ub098\ud0c0\ub0a9\ub2c8\ub2e4.",
        course:"\ucf54\uc2a4\uac00 \uc801\uc5b4\ub3c4 \ud558\ub098\ub294 \uc788\uc5b4\uc57c\ud569\ub2c8\ub2e4.",
        option_price:"\ucd5c\uc18c 1\uac1c \uc774\uc0c1\uc758 \uac00\uaca9\uc744 \uc791\uc131\ud574\uc8fc\uc138\uc694.",
        server_error:"\uc11c\ubc84 \uc5f0\uacb0\uc744 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694.",
        review_score:"\ubcc4\uc810\uc744 \ub4f1\ub85d\ud574\uc8fc\uc138\uc694.",
        zipcode:"\uc6b0\ud3b8\ubc88\ud638 \ucc3e\uae30 \ubc84\ud2bc\uc744 \ud1b5\ud574 \uc785\ub825\ud574\uc8fc\uc138\uc694.",
        invoice_offer:"\uc0c1\ud488\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694.",
        message:"\uba54\uc2dc\uc9c0 \uc804\uc1a1\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4. \uc7ac\uc804\uc1a1\ud574\uc8fc\uc138\uc694.",
        successfully_send_invoice:"\uc5ec\ud589 \ud655\uc778\uc99d\uc774 \ubc1c\uc1a1\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",
        review_delete:"\uc815\ub9d0 \ud6c4\uae30\ub97c \uc0ad\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?",
        review_edit_cancel:"\ud6c4\uae30 \uc218\uc815\uc744 \uadf8\ub9cc\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?",
        review_new_cancel:"\ud6c4\uae30 \ub4f1\ub85d\uc744 \uadf8\ub9cc\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?",
        review_wrong_input:"\ud544\uc218 \ud56d\ubaa9\ub4e4\uc744 \uc815\ud655\ud558\uac8c \uc785\ub825\ud574\uc8fc\uc138\uc694.",
        signup_marketing_agree:"\ub9c8\ucf00\ud305 \uc815\ubcf4 \uc218\uc2e0\ub3d9\uc758\ub97c \uac70\ubd80 \ud558\uc2dc\ub294 \uacbd\uc6b0 \ub9c8\uc774\ub9ac\uc5bc\ud2b8\ub9bd\uc5d0\uc11c \uc81c\uacf5\ub418\ub294 \ucd94\ucc9c \uc0c1\ud488, \uc774\ubca4\ud2b8, \ud560\uc778 \uc815\ubcf4\ub97c \ubc1b\uc544\ubcf4\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.\n\n\ud61c\ud0dd\uc744 \ubc1b\uc73c\uc2dc\uaca0\uc2b5\ub2c8\uae4c?\n",
        search_istanbul: {
            failed: "\uac80\uc0c9\uc744 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694.", no_result: "\uac80\uc0c9 \uacb0\uacfc\uac00 \uc5c6\uc2b5\ub2c8\ub2e4. \uac80\uc0c9\uc5b4\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694.", input_error: "\uac80\uc0c9\uc5b4 \uc785\ub825 \ub610\ub294 \uc5c5\uccb4 \uc120\ud0dd\uc744 \ud655\uc778\ud574\uc8fc\uc138\uc694.", prcessing: "\ucc98\ub9ac \uc911\uc785\ub2c8\ub2e4. \uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824\uc8fc\uc138\uc694."
        }
        ,
        clipboard: {
            copied: "\ubcf5\uc0ac\ub418\uc5c8\uc2b5\ub2c8\ub2e4.", link_copied: "\ub9c1\ud06c\uac00 \ubcf5\uc0ac\ub418\uc5c8\uc2b5\ub2c8\ub2e4.", link_failed: "\uc544\ub798 \uc8fc\uc18c\ub97c \ubcf5\uc0ac\ud574\uc8fc\uc138\uc694.", link_failed_mobile: "\uc544\ub798 \uc8fc\uc18c\ub97c \uae38\uac8c \ub20c\ub7ec \uc804\uccb4 \uc120\ud0dd\ud55c \ud6c4 \ubcf5\uc0ac\ud574\uc8fc\uc138\uc694.", pressKeyboard: "Ctrl+C\ub97c \ub20c\ub7ec \ubcf5\uc0ac\ud558\uc138\uc694.", mobile_pressKeyboard: "\uae38\uac8c \ub20c\ub7ec \uc804\uccb4 \ucf54\ub4dc\ub97c \uc120\ud0dd \ud6c4 \ubcf5\uc0ac\ud558\uc138\uc694."
        }
        ,
        sms_verification: {
            send_success: "\uc785\ub825\ud558\uc2e0 \ubc88\ud638\ub85c \uc778\uc99d\ucf54\ub4dc\uac00 \ubc1c\uc1a1\ub418\uc5c8\uc2b5\ub2c8\ub2e4. 3\ubd84 \uc774\ub0b4\uc5d0 \uc785\ub825\ud574\uc8fc\uc138\uc694.", resend: "\uc778\uc99d\ubc88\ud638\uac00 \uc7ac\ubc1c\uc1a1\ub418\uc5c8\uc2b5\ub2c8\ub2e4. 3\ubd84 \uc774\ub0b4\uc5d0 \uc785\ub825\ud574\uc8fc\uc138\uc694.", resend_error: "\uc9c0\ub09c 10\ubd84\uac04 \ubc1c\uc1a1 \ud69f\uc218\uac00 \ub108\ubb34 \ub9ce\uc2b5\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694."
        }
        ,
        email_verification: {
            success: "\uc778\uc99d \uc774\uba54\uc77c\uc744 \ubcf4\ub0c8\uc2b5\ub2c8\ub2e4. \uc774\uba54\uc77c\uc744 \ud655\uc778\ud558\uace0, \uc778\uc99d\ud558\uae30 \ubc84\ud2bc\uc744 \ud074\ub9ad\ud558\uc2dc\uba74 \uc778\uc99d\uc774 \uc644\ub8cc\ub429\ub2c8\ub2e4.", resend: "\uc778\uc99d \uc774\uba54\uc77c\uc774 \uc7ac\ubc1c\uc1a1\ub418\uc5c8\uc2b5\ub2c8\ub2e4.", resend_error: "\uc778\uc99d \uc774\uba54\uc77c \uc7ac\ubc1c\uc1a1\uc5d0 \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc624."
        }
        ,
        no_response:"\uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694.",
        success_response:"\uc815\uc0c1\uc801\uc73c\ub85c \ucc98\ub9ac\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",
        offer: {
            date: "\uc774 \ub0a0\uc9dc\ub294 \uc608\uc57d\uc774 \ubd88\uac00\ub2a5\ud569\ub2c8\ub2e4. \ub2e4\ub978 \ub0a0\uc9dc\ub294 \uc5b4\ub5a0\uc138\uc694?", select_option: "\uc635\uc158\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694.", select_beginAt: "\ub0a0\uc9dc\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694.", option_stand_alone: "\uc774 \uc635\uc158\uc740 \ub2e4\ub978 \uc635\uc158\uacfc \ud568\uaed8 \uad6c\ub9e4\ud574\uc8fc\uc154\uc57c\ud569\ub2c8\ub2e4.\n\ub2e4\ub978 \uc635\uc158\uc758 \uc218\ub7c9\uc744 \uc6b0\uc120 \uc120\ud0dd\ud574\uc8fc\uc138\uc694.\n"
        }
        ,
        coupon: {
            success_promotion: "\ucfe0\ud3f0\uc744 \uc131\uacf5\uc801\uc73c\ub85c \ubc1b\uc558\uc2b5\ub2c8\ub2e4. \ud504\ub85c\ud544 \uad00\ub9ac > \ub0b4 \ucfe0\ud3f0 \ud398\uc774\uc9c0\uc5d0\uc11c \ud655\uc778\ud574\uc8fc\uc138\uc694.", fail_promotion: "\ucfe0\ud3f0\uc744 \ubc1b\uc9c0 \ubabb\ud588\uc2b5\ub2c8\ub2e4. \uae30\uac04 \ubc0f \uc911\ubcf5\ubc1c\uae09 \uc5ec\ubd80\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694.", need_login: "\ucfe0\ud3f0\uc744 \ubc1b\uc73c\ub824\uba74 \ud68c\uc6d0\uac00\uc785 \ub610\ub294 \ub85c\uadf8\uc778\uc744 \ud574\uc8fc\uc138\uc694."
        }
        ,
        delete_notice:"\uc0c1\ud488 \uacf5\uc9c0\uc0ac\ud56d\uc744 \uc815\ub9d0 \uc0ad\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?",
        price_edit:"\uc557, \uae30\uc874 \uc0c1\ud488\uac00\uaca9\ubcf4\ub2e4 \ub2e4\uc18c \ub0ae\uac8c \ucc45\uc815\ud574\uc8fc\uc168\uc5b4\uc694. \uae30\uc874 \uac00\uaca9\ubcf4\ub2e4 \uc0c1\ud488\uac00\ub97c \ud070 \ud3ed\uc73c\ub85c \ub0ae\uac8c \ucc45\uc815\ud560 \uacbd\uc6b0 \uc0c1\ud488 \uc815\ubcf4\uac00 \uc800\uc7a5\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.<br/>\n\uc0c1\ud488 \uac00\uaca9\uc744 \ub0ae\ucdb0\uc57c \ud55c\ub2e4\uba74 guide@myrealtrip.com\uc73c\ub85c \uc0c1\ud488\uba85, \ubcc0\uacbd \uac00\uaca9, \uc0ac\uc720\ub97c \ud568\uaed8 \ubcf4\ub0b4\uc8fc\uc138\uc694.<br/>\n\ub0b4\uc6a9 \ud655\uc778 \ud6c4 3-5\uc77c \uc774\ub0b4\ub85c \uc5f0\ub77d\ub4dc\ub9ac\ub3c4\ub85d \ud558\uaca0\uc2b5\ub2c8\ub2e4.\n",
        image_type:"jpg, png, gif \uc774\uc678\uc758 \uc774\ubbf8\uc9c0 \ud30c\uc77c\uc740 \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.",
        validation_default:"\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4.",
        common_delete:"\uc815\ub9d0 \uc0ad\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?",
        max_contact_infos:"\ucd5c\ub300 10\uac1c\uae4c\uc9c0 \ub4f1\ub85d\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.",
        max_bookingcom:"30\ubc15 \uc774\ud558\uc758 \uc608\uc57d\ub9cc \uac00\ub2a5\ud569\ub2c8\ub2e4."
    }
    ,
    wishlist: {
        message: "\uba85\uc774 \uc774 \uc0c1\ud488\uc744 \uc704\uc2dc\ub9ac\uc2a4\ud2b8\uc5d0 \ub2f4\uc558\uc2b5\ub2c8\ub2e4.", no_date: "\uc5b8\uc81c \uac00\uc2dc\ub098\uc694?"
    }
    ,
    cities: {
        regist_schedule: "\uc5ec\ud589\uc77c\uc815 \ub4f1\ub85d"
    }
    ,
    live_search: {
        no_result:"\uac80\uc0c9 \uacb0\uacfc\uac00 \uc5c6\uc2b5\ub2c8\ub2e4.\n \ub2e4\ub978 \ub2e8\uc5b4\ub85c \uac80\uc0c9\ud574\ubcf4\uc138\uc694!",
        input_placeholder:"\uac00\uace0 \uc2f6\uc740 \uc5ec\ud589\uc9c0\ub098 \uc0c1\ud488\uc744 \uac80\uc0c9\ud574\ubcf4\uc138\uc694!",
        locations:"\uc5ec\ud589\uc9c0",
        guides:"\uac00\uc774\ub4dc",
        reviews:"\uc5ec\ud589 \ud6c4\uae30",
        offers:"\uc5ec\ud589 \uc0c1\ud488",
        review_user:"\ub2d8\uc758",
        guide_offers:"\uac1c\uc124\ud55c \uc5ec\ud589",
        guide_link:"\ud504\ub85c\ud544 \ubcf4\uae30",
        price_unit:"1\uc778",
        review_offer:"\uc5ec\ud589 \ud6c4\uae30",
        review_link:"\uc5ec\ud589 \ud6c4\uae30 \ub354\ubcf4\uae30",
        default_title:"\uc778\uae30 \uc0c1\ud488 \ubc0f \uc5ec\ud589\uc9c0\ub97c \uac80\uc0c9\ud574\ubcf4\uc138\uc694.",
        related_words:"\uc5f0\uad00 \uac80\uc0c9\uc5b4",
        menu: {
            all: "\uc804\uccb4", review: "\uc5ec\ud589 \ud6c4\uae30"
        }
        ,
        number_of_result:"\uac1c\uc758 \uac80\uc0c9\uacb0\uacfc",
        recent_search:"\ucd5c\uadfc \uac80\uc0c9\uc5b4",
        delete_recent_search:"\ucd5c\uadfc \uac80\uc0c9\uc5b4 \uc0ad\uc81c",
        delete_recent_search_message:"\ucd5c\uadfc \uac80\uc0c9\uc5b4\ub97c \ubaa8\ub450 \uc9c0\uc6b0\uc2dc\uaca0\uc2b5\ub2c8\uae4c?",
        hotel_link:"\uc219\uc18c \uac80\uc0c9\ud558\uae30",
        score: {
            title: "\uac80\uc0c9 \uacb0\uacfc\uc5d0 \ub9cc\uc871\ud558\uc2dc\ub098\uc694?", 1: "\ub9e4\uc6b0 \ubd88\ub9cc\uc871", 2: "\ubd88\ub9cc\uc871", 3: "\uadf8\ub7ed\uc800\ub7ed", 4: "\ub9cc\uc871", 5: "\ub9e4\uc6b0 \ub9cc\uc871", thanks_message: "\u2764\ufe0f\n\ucc38\uc5ec\ud574\uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4.\n<b>\ub354 \uc88b\uc740 \uac80\uc0c9 \uacb0\uacfc</b>\ub85c \ucc3e\uc544\uc62c\uac8c\uc694!"
        }
    }
    ,
    invite_friends: {
        need_verification: "\uce5c\uad6c\ub97c \ucd08\ub300\ud558\uace0 \ud3ec\uc778\ud2b8\ub97c \ubc1b\uc73c\ub824\uba74 \ud734\ub300\ud3f0 \ubc88\ud638 \uc778\uc99d\uc774 \ud544\uc694\ud569\ub2c8\ub2e4.", welcome_current_user: "\uc774\ubbf8 \uac00\uc785\ub41c \ud68c\uc6d0\uc740 \uce5c\uad6c\ucd08\ub300 \uc774\ubca4\ud2b8\uc5d0 \ucc38\uc5ec\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.", fail_kakaotalk_share: "\uce74\uce74\uc624\ud1a1 \uacf5\uc720\uc5d0 \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4. \ub2e4\ub978 \uacf5\uc720 \ubc29\ubc95\uc744 \uc0ac\uc6a9\ud574\uc8fc\uc138\uc694."
    }
    ,
    verifications: {
        invite: "\uce5c\uad6c \ucd08\ub300\ub85c \uac00\uc785 \uc2dc \ud734\ub300\ud3f0 \uc778\uc99d\uc744 \uc644\ub8cc \ud574\uc57c\ub9cc 3,000\uc6d0 \ucfe0\ud3f0\uc774 \uc9c0\uae09\ub429\ub2c8\ub2e4.\n\ud734\ub300\ud3f0 \uc778\uc99d\uc744 \uacc4\uc18d \uc9c4\ud589 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?\n"
    }
    ,
    filter: {
        calendar_default_message: "\uc5ec\ud589 \uc2dc\uc791\uc77c ~ \uc885\ub8cc\uc77c"
    }
    ,
    partner: {
        upload_file_type: {
            image: "jpg, jpeg, png \ud30c\uc77c\ub9cc \uc5c5\ub85c\ub4dc \uac00\ub2a5\ud569\ub2c8\ub2e4.", document: "doc, docx, pdf \ud30c\uc77c\ub9cc \uc5c5\ub85c\ub4dc \uac00\ub2a5\ud569\ub2c8\ub2e4.", excel: "xls, xlsx \ud30c\uc77c\ub9cc \uc5c5\ub85c\ub4dc \uac00\ub2a5\ud569\ub2c8\ub2e4."
        }
        ,
        offers: {
            meeting_time_extra: "\uc608\uc57d \ud655\uc815 \ud6c4 \ub9cc\ub098\ub294 \uc2dc\uac04\uc744 \uc870\uc728\ud569\ub2c8\ub2e4.", confrim_price_delete: "\uc815\ub9d0 \uc774 \uac00\uaca9\uc744 \uc0ad\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"
        }
    }
    ,
    partner_validation: {
        "offer[city_info_ids][]": {
            validators: {
                notEmpty: {
                    message: "\ub3c4\uc2dc \uc120\ud0dd \ub610\ub294 \ud574\ub2f9 \ub3c4\uc2dc \uc5c6\uc74c\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        category: {
            validators: {
                notEmpty: {
                    message: "\uce74\ud14c\uace0\ub9ac\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[title]": {
            validators: {
                notEmpty: {
                    message: "\uc81c\ubaa9\uc744 \uc368\uc8fc\uc138\uc694"
                }
                ,
                stringLength: {
                    max: 50, message: "\uba4b\uc9c4 \uc81c\ubaa9\uc774\uc9c0\ub9cc \ub108\ubb34 \uae38\uc5b4\uc694."
                }
            }
        }
        ,
        "offer[subtitle]": {
            validators: {
                notEmpty: {
                    message: "\ud55c \uc904 \uc694\uc57d\uc744 \uc368\uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 5, message: "\ud55c \uc904 \uc694\uc57d\uc774 \ub108\ubb34 \uc9e7\uc2b5\ub2c8\ub2e4."
                }
            }
        }
        ,
        "offer[introduction]": {
            validators: {
                notEmpty: {
                    message: "\uc5ec\ud589 \uc18c\uac1c\ub97c \uc368\uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 100, message: "\uc880 \ub354 \uae38\uac8c \uc5ec\ud589\uc744 \uc18c\uac1c\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[private_tour]": {
            validators: {
                notEmpty: {
                    message: "\uc5ec\ud589 \uaddc\ubaa8\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[transport]": {
            validators: {
                notEmpty: {
                    message: "\uc774\ub3d9 \uc218\ub2e8\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        offer_photo_size: {
            excluded:!1,
            validators: {
                notEmpty: {
                    message: "\uc5ec\ud589 \uc0ac\uc9c4\uc744 \uc62c\ub824\uc8fc\uc138\uc694."
                }
                ,
                greaterThan: {
                    inclusive: !0, value: 4, message: "4\uac1c \uc774\uc0c1\uc758 \uc0ac\uc9c4\uc744 \uc62c\ub824\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        hot_deal_offer_photo_size: {
            excluded:!1,
            validators: {
                notEmpty: {
                    message: "\uc5ec\ud589 \uc0ac\uc9c4\uc744 \uc62c\ub824\uc8fc\uc138\uc694."
                }
                ,
                greaterThan: {
                    inclusive: !0, value: 1, message: "1\uac1c \uc774\uc0c1\uc758 \uc0ac\uc9c4\uc744 \uc62c\ub824\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        offer_descriptive_image_size: {
            excluded:!1,
            validators: {
                notEmpty: {
                    message: "\uc0c1\uc138 \uc774\ubbf8\uc9c0\ub97c \uc62c\ub824\uc8fc\uc138\uc694."
                }
                ,
                greaterThan: {
                    inclusive: !0, value: 1, message: "1\uac1c \uc774\uc0c1\uc758 \uc774\ubbf8\uc9c0\ub97c \uc62c\ub824\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        meeting_time_check: {
            validators: {
                notEmpty: {
                    message: "\ub9cc\ub098\ub294 \uc2dc\uac04\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[meeting_point]": {
            validators: {
                notEmpty: {
                    message: "\ub9cc\ub098\ub294 \uc7a5\uc18c\uc758 \uc774\ub984\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[lat]": {
            excluded:!1,
            validators: {
                between: {
                    min: -90, max: 90, message: "\ub9cc\ub098\ub294 \uc7a5\uc18c\uc758 \uc704\uce58\ub97c \uad6c\uae00\ub9f5\uc5d0\uc11c \uac80\uc0c9\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[lng]": {
            excluded:!1,
            validators: {
                between: {
                    min: -180, max: 180, message: "\ub9cc\ub098\ub294 \uc7a5\uc18c\uc758 \uc704\uce58\ub97c \uad6c\uae00\ub9f5\uc5d0\uc11c \uac80\uc0c9\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[courses_attributes][][title]": {
            validators: {
                notEmpty: {
                    message: "\ucf54\uc2a4\uc758 \uc81c\ubaa9\uc744 \uc791\uc131\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[duration_size]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "1 \uc774\uc0c1\uc758 \uc22b\uc790\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                lessThan: {
                    value: 23, message: "24 \uc2dc\uac04 \uc774\uc0c1\uc740 \uc77c \uae30\uc900\uc73c\ub85c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[duration_unit]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "offer[reservation_limit_offset]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        price_type: {
            validators: {
                notEmpty: {
                    message: "\uac00\uaca9 \ud0c0\uc785\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "range_price[single][][min_travelers]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "\uc62c\ubc14\ub978 \uc778\uc6d0\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "range_price[single][][max_travelers]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "\uc62c\ubc14\ub978 \uc778\uc6d0\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "range_price[single][][amount]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "0\ubcf4\ub2e4 \ud070 \uac00\uaca9\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "range_price[multiple][][min_travelers]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "\ucd5c\uc18c \uc778\uc6d0\uc740 1\ubcf4\ub2e4 \uac19\uac70\ub098 \ucee4\uc57c \ud569\ub2c8\ub2e4."
                }
            }
        }
        ,
        "range_price[multiple][][amount]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "\uc62c\ubc14\ub978 \uac00\uaca9\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[prices_attributes][][title]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "offer[prices_attributes][][min_travelers]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "\uc62c\ubc14\ub978 \uc778\uc6d0\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[prices_attributes][][max_travelers]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "offer[prices_attributes][][amount]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                greaterThan: {
                    value: 1, message: "\uc62c\ubc14\ub978 \uac00\uaca9\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[attention]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "offer[notice_title]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                stringLength: {
                    max: 50, message: "50\uc790 \uc774\ub0b4\ub85c \uc791\uc131\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[notice_content]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                stringLength: {
                    max: 200, message: "200\uc790 \uc774\ub0b4\ub85c \uc791\uc131\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        reservation_offer_id: {
            selector:"select[name=offer_id]",
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[begin_at]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[end_at]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[number_of_people]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                between: {
                    min: 0, max: 20, message: "%s ~ %s \uc778\uc6d0\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.\n('\uc0c1\ud488 \ub0b4\uc6a9 \ubcc0\uacbd\ud558\uc5ec \uacac\uc801\uc11c \uc791\uc131'\uc740 \uc778\uc6d0\uc5d0 \uc0c1\uad00\uc5c6\uc774 \uac00\ub2a5\ud569\ub2c8\ub2e4.)\n"
                }
            }
        }
        ,
        recipient_name: {
            selector:"#bank_recipient_name",
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        account_number: {
            selector:"#bank_account_number",
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        bank_name: {
            selector:"#bank_name",
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        paypal_recipient_name: {
            selector:"#paypal_recipient_name",
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        paypal_account_number: {
            selector:"#paypal_account_number",
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[duration_size]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                numeric: {
                    message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                greaterThan: {
                    value: 1, message: "1 \uc774\uc0c1\uc758 \uc22b\uc790\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "reservation[duration_unit]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[meeting_time][hour]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[meeting_time][min]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[orders_attributes][][quantity]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                numeric: {
                    message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                greaterThan: {
                    value: 1, message: "\ucd5c\uc18c \uc778\uc6d0\uc740 1\ubcf4\ub2e4 \uac19\uac70\ub098 \ucee4\uc57c \ud569\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[orders_attributes][][price_currency_code]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "reservation[orders_attributes][][price_amount]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                numeric: {
                    message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                greaterThan: {
                    value: 1, message: "0\ubcf4\ub2e4 \ud070 \uae08\uc561\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "user[username]": {
            validators: {
                notEmpty: {
                    message: "\uba4b\uc9c4 \uc774\ub984\uc774 \uc788\uc73c\uc2dc\uc796\uc544\uc694."
                }
                ,
                stringLength: {
                    min: 2, message: "\uc774\ub984\uc740 \ub450 \uae00\uc790 \uc774\uc0c1 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[contact_infos][][city_name]": {
            validators: {
                notEmpty: {
                    message: "\uaf2d \uc785\ub825\ud574\uc8fc\uc138\uc694"
                }
            }
        }
        ,
        "guide[contact_infos][][phone_icc]": {
            validators: {
                notEmpty: {
                    message: "\uaf2d \uc785\ub825\ud574\uc8fc\uc138\uc694"
                }
            }
        }
        ,
        "guide[contact_infos][][phone_number]": {
            validators: {
                notEmpty: {
                    message: "\uc804\ud654\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 6, message: "\uc720\ud6a8\ud55c \uc804\ud654\ubc88\ud638\uac00 \uc544\ub2d9\ub2c8\ub2e4."
                }
            }
        }
        ,
        "guide[company]": {
            validators: {
                notEmpty: {
                    message: "\uaf2d \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[kakao_id]": {
            validators: {
                notEmpty: {
                    message: "\uce74\uce74\uc624\ud1a1 \uc544\uc774\ub514\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[emergency_phone_icc]": {
            validators: {
                notEmpty: {
                    message: "\uaf2d \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[emergency_phone_number]": {
            validators: {
                notEmpty: {
                    message: "\ube44\uc0c1 \uc5f0\ub77d\ucc98\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[localizations_attributes][][job]": {
            validators: {
                notEmpty: {
                    message: "\uc9c1\uc5c5\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[localizations_attributes][][organization]": {
            validators: {
                notEmpty: {
                    message: "\uc18c\uc18d\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[localizations_attributes][][introduction]": {
            validators: {
                notEmpty: {
                    message: '\uc5ec\ud589\uc790\uac00 "\ub0b4\uac00 \uc5b4\ub5a4 \uc0ac\ub78c\uacfc \uc5ec\ud589\ud558\ub294\uc9c0"\ub97c \uc54c \uc218 \uc788\uac70\ub4e0\uc694. \uba4b\uc9c4 \uc790\uae30\uc18c\uac1c \ubd80\ud0c1\ub4dc\ub9bd\ub2c8\ub2e4.'
                }
                ,
                stringLength: {
                    min: 100, message: "\uad6c\uccb4\uc801\uc778 \uc790\uae30\uc18c\uac1c\ub294 \uc5ec\ud589\uc790\uc640\uc758 \ub192\uc740 \uc2e0\ub8b0\ub3c4\ub97c \ud615\uc131\ud569\ub2c8\ub2e4. \uc870\uae08\ub9cc \ub354 \uc791\uc131\ud574\uc8fc\uc138\uc694!"
                }
            }
        }
        ,
        "guide[join_request_attributes][offer_types][]": {
            validators: {
                notEmpty: {
                    message: "\ub4f1\ub85d\ud558\uc2e4 \uc0c1\ud488\uc758 \uc720\ud615\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide[current_visa_status]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "guide[length_of_residence]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "guide[length_of_residence_hereafter]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        checkbox_terms_guide: {
            validators: {
                notEmpty: {
                    message: "\uac00\uc774\ub4dc \uc57d\uad00\uc5d0 \ub300\ud55c \ub3d9\uc758\uac00 \ud544\uc694\ud569\ub2c8\ub2e4."
                }
            }
        }
        ,
        checkbox_guide_residence: {
            validators: {
                notEmpty: {
                    message: "\uac70\uc8fc \uae30\uac04\uc5d0 \ucda9\uc871\ub418\uc5b4\uc57c \uac00\uc774\ub4dc \ub4f1\ub85d\uc774 \uac00\ub2a5\ud569\ub2c8\ub2e4."
                }
            }
        }
        ,
        "guide[automated_message]": {
            validators: {
                notEmpty: {
                    message: "\uae30\ubcf8 \uba54\uc2dc\uc9c0\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 50, message: "\uc880 \ub354 \uae38\uac8c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        hold_reason: {
            validators: {
                notEmpty: {
                    message: "\ud734\uba74 \uc0ac\uc720\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        hold_etc_reason: {
            validators: {
                notEmpty: {
                    message: "\ud734\uba74 \uc0ac\uc720\ub97c \uc368\uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 10, message: "\uc880 \ub354 \uae38\uac8c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "guide_profit[ids][]": {
            validators: {
                notEmpty: {
                    message: "\uc801\uc5b4\ub3c4 \ud558\ub098\uc758 \uc608\uc57d\ubc88\ud638\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "reservation[orders_attributes][][title]": {
            validators: {
                notEmpty: {
                    message: "\uc5ec\ud589\uc790\ub97c \uc704\ud55c \uac00\uaca9 \uc635\uc158 \uc774\ub984\uc744 \uc801\uc5b4\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        istanbul_supplier: {
            validators: {
                notEmpty: {
                    message: "\uc5c5\uccb4\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        istanbul_offer_name: {
            validators: {
                notEmpty: {
                    message: "\uac80\uc0c9\uc5b4\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[language_list][]": {
            validators: {
                notEmpty: {
                    message: "\uc5b8\uc5b4\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "offer[category]": {
            validators: {
                notEmpty: {
                    message: "\uce74\ud14c\uace0\ub9ac\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "reservation_cancel_reason[reason]": {
            validators: {
                notEmpty: {
                    message: "\uc608\uc57d \ucde8\uc18c \uc0ac\uc720\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "questionnaires[how_did_you_find_us]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[length_of_experience]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[flagship_product]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[other_channels]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[commission_acknowledge]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[preferred_interview_time]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[other_inquiries]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[self_introduction]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[required_attributes]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[differentiation_point]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[adversity_and_solution]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[interview_time]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "questionnaires[price_acknowledge]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "guide[tax_invoice_info_attributes][name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "guide[tax_invoice_info_attributes][email]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                emailAddress: {
                    message: "\uc720\ud6a8\ud55c \uba54\uc77c \uc8fc\uc18c\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "document[expiry][yyyy]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                stringLength: {
                    min: 4, max: 4, message: "4\uc790\ub9ac \uc5f0\ub3c4\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "document[expiry][mm]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                stringLength: {
                    min: 2, max: 2, message: "2\uc790\ub9ac\ub85c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "document[expiry][dd]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218 \uc791\uc131 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                stringLength: {
                    min: 2, max: 2, message: "2\uc790\ub9ac\ub85c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "document[file_name]": {
            validators: {
                notEmpty: {
                    message: "\ud30c\uc77c\uc744 \uc5c5\ub85c\ub4dc\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "document[other_types]": {
            validators: {
                notEmpty: {
                    message: "\uc11c\ub958 \uc885\ub958\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
    }
    ,
    validation_messages: {
        "default": {
            required: "\ud544\uc218 \uc785\ub825\uc0ac\ud56d\uc785\ub2c8\ub2e4.", minlength: "\uc870\uae08 \ub354 \uae38\uac8c \uc791\uc131\ud574\uc8fc\uc138\uc694.", number: "\uc22b\uc790\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.", min: "\ub108\ubb34 \uc791\uc544\uc694.", max: "\ub108\ubb34 \ud07d\ub2c8\ub2e4."
        }
        ,
        "reservation[phone_icc]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "reservation[phone_number]": {
            validators: {
                notEmpty: {
                    message: "\uc804\ud654\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 5, message: "\uc720\ud6a8\ud55c \uc804\ud654\ubc88\ud638\uac00 \uc544\ub2d9\ub2c8\ub2e4."
                }
            }
        }
        ,
        "user_privacy[age]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "reservation[purpose]": {
            validators: {
                notEmpty: {
                    message: "\uc5ec\ud589 \ubaa9\uc801\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "payment[paytype]": {
            validators: {
                notEmpty: {
                    message: "\uacb0\uc81c\uc218\ub2e8\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        checkbox_terms_traveler: {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        checkbox_terms_offer: {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "choice_set[begin_at]": {
            excluded:!1,
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
                ,
                date: {
                    format: "YYYY-MM-DD", message: "\uc5ec\ud589 \ub0a0\uc9dc\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "choice_set[choices][][travelers]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "extra_required[arrival_info][year]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[arrival_info][month]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[arrival_info][day]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[arrival_info][hour]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[arrival_info][minute]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[arrival_info][airport]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_info][][first_name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_info][][last_name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_passport_info][][korean_name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_info][][gender]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_info][][date_of_birth]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_passport_info][][first_name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_passport_info][][last_name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_passport_info][][gender]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[buyer_passport_info][][date_of_birth]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
            ,
            numeric: {
                message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
            }
        }
        ,
        "extra_required[buyer_passport_info][][passport]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_info][type]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_info][name]": {
            validators: {
                notEmpty: {
                    message: "\uc218\ub839\uc778\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "extra_required[delivery_info][phone_icc]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_info][phone_number]": {
            validators: {
                notEmpty: {
                    message: "\uc804\ud654\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
            ,
            between: {
                min: 6, max: 20, message: "%s \uc774\uc0c1 %s \uc774\ud558 \uc790\ub9ac\uc218\uc758 \ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694"
            }
        }
        ,
        "extra_required[delivery_info][zipcode]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_info][address]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_info][address_detail]": {
            validators: {
                notEmpty: {
                    message: "\uc0c1\uc138 \uc8fc\uc18c\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "extra_required[departure_info][hour]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[departure_info][minute]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[departure_info][airport]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[email][address]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
                ,
                emailAddress: {
                    message: "\uc720\ud6a8\ud55c \uba54\uc77c \uc8fc\uc18c\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "extra_required[email][address_confirm]": {
            validators: {
                identical: {
                    field: "extra_required[email][address]", message: "\uac19\uc740 \uba54\uc77c \uc8fc\uc18c\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "extra_required[hotel_info][name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[hotel_info][address]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[phone_detail][name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[phone_detail][company]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[phone_detail][number]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[use_number_of_days][day]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[use_time][hour]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[use_time][minute]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[checkin_time][hour]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[checkin_time][minute]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_wish_date][year]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_wish_date][month]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[delivery_wish_date][day]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[first_use_date][year]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[first_use_date][month]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[first_use_date][day]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[use_date][year]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[use_date][month]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[use_date][day]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[english_name][first_name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[english_name][last_name]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_departure_info][flight_no]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_departure_info][year]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_departure_info][month]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_departure_info][day]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_departure_info][hour]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_departure_info][minute]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_departure_info][airport]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_arrival_info][flight_no]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_arrival_info][year]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_arrival_info][month]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_arrival_info][day]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_arrival_info][hour]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_arrival_info][minute]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        "extra_required[flight_arrival_info][airport]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        reason_item: {
            validators: {
                notEmpty: {
                    message: "\ucde8\uc18c \uc0ac\uc720\ub294 \ud544\uc218 \ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        receiver_name: {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        bank_code: {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        account_number: {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9"
                }
            }
        }
        ,
        message: {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
                ,
                stringLength: {
                    min: 50, message: "\uc870\uae08\ub9cc \ub354 \uae38\uac8c... \ubd80\ud0c1\ub4dc\ub9bd\ub2c8\ub2e4^^"
                }
            }
        }
        ,
        "code[]": {
            validators: {
                notEmpty: {
                    message: "\ud544\uc218\ud56d\ubaa9\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        price_option: {
            validators: {
                notEmpty: {
                    message: "\uad6c\ub9e4\ud558\uace0\uc790\ud558\ub294 \uc635\uc158\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "user[username]": {
            validators: {
                notEmpty: {
                    message: "\uba4b\uc9c4 \uc774\ub984\uc774 \uc788\uc73c\uc2dc\uc796\uc544\uc694."
                }
                ,
                stringLength: {
                    min: 2, message: "\uc774\ub984\uc740 \ub450 \uae00\uc790 \uc774\uc0c1 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "user[password]": {
            validators: {
                notEmpty: {
                    message: "\ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 6, message: "\ub108\ubb34 \uc9e7\uc740 \ube44\ubc00\ubc88\ud638\uc785\ub2c8\ub2e4."
                }
            }
        }
        ,
        "user[old_password]": {
            validators: {
                notEmpty: {
                    message: "\ud604\uc7ac \ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "user[email]": {
            validators: {
                notEmpty: {
                    message: "\uaf2d \ud544\uc694\ud574\uc694."
                }
                ,
                emailAddress: {
                    message: "\uc774\uba54\uc77c \uc8fc\uc18c\uac00 \ub9de\ub098\uc694?"
                }
            }
        }
        ,
        "user[password_confirmation]": {
            validators: {
                notEmpty: {
                    message: "\ube44\ubc00\ubc88\ud638\ub97c \ub2e4\uc2dc \ud55c\ubc88 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                identical: {
                    field: "user[password]", message: "\ube44\ubc00\ubc88\ud638\uac00 \uc77c\uce58\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."
                }
            }
        }
        ,
        "user[phone_icc]": {
            validators: {
                notEmpty: {
                    message: "\uad6d\uac00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "user[phone_number]": {
            validators: {
                notEmpty: {
                    message: "\uc804\ud654\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                digits: {
                    message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                blank:""
            }
        }
        ,
        "user[verify_code]": {
            validators: {
                notEmpty: {
                    message: "\uc778\uc99d\ucf54\ub4dc\ub97c \uc785\ub825\ud574 \uc8fc\uc138\uc694."
                }
                ,
                stringLength: {
                    min: 5, max: 5, message: "\uc778\uc99d\ucf54\ub4dc\ub294 5\uc790\ub9ac \uc22b\uc790\uc785\ub2c8\ub2e4."
                }
                ,
                digits: {
                    message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                blank:""
            }
        }
        ,
        "user[subscription_settings][email]": {
            selector:"#subscription-email-true, #subscription-email-false",
            validators: {
                notEmpty: {
                    message: "\uc218\uc2e0 \uc5ec\ubd80\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "user[subscription_settings][sms]": {
            selector:"#subscription-sms-true, #subscription-sms-false",
            validators: {
                notEmpty: {
                    message: "\uc218\uc2e0 \uc5ec\ubd80\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "user[subscription_settings][push]": {
            selector:"#subscription-push-true, #subscription-push-false",
            validators: {
                notEmpty: {
                    message: "\uc218\uc2e0 \uc5ec\ubd80\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        checkbox_terms: {
            validators: {
                notEmpty: {
                    message: "\uc57d\uad00 \ub3d9\uc758\uc5d0 \uccb4\ud06c\ud574 \uc8fc\uc138\uc694."
                }
            }
        }
        ,
        checkbox_agree: {
            validators: {
                notEmpty: {
                    message: "\uac1c\uc778\uc815\ubcf4\uc218\uc9d1 \ub3d9\uc758\uc5d0 \uccb4\ud06c\ud574 \uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "payment[card_number]": {
            excluded:!1,
            validators: {
                notEmpty: {
                    message: "\uce74\ub4dc \ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                digits: {
                    message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        payment_expire: {
            validators: {
                notEmpty: {
                    message: "\uc720\ud6a8 \uae30\uac04\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "payment[card_pwd]": {
            validators: {
                notEmpty: {
                    message: "\ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "payment[buyer_auth_num]": {
            validators: {
                notEmpty: {
                    message: "\ub0b4\uc6a9\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
                ,
                digits: {
                    message: "\uc22b\uc790\ub9cc \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "message[content]": {
            validators: {
                notEmpty: {
                    message: "\ub0b4\uc6a9\uc744 \uc785\ub825\ud574 \uc8fc\uc138\uc694."
                }
            }
        }
        ,
        "reservation[message]": {
            validators: {
                notEmpty: {
                    message: "\ub0b4\uc6a9\uc744 \uc785\ub825\ud574 \uc8fc\uc138\uc694."
                }
            }
        }
        ,
        datetime_extra_option: {
            selector:"[data-option-type='datetime_extra_option']",
            row:".col-xs-12",
            validators: {
                notEmpty: {
                    message: "\ub0b4\uc6a9\uc744 \uc785\ub825\ud574 \uc8fc\uc138\uc694."
                }
                ,
                date: {
                    format: "YYYY-MM-DD h:m", message: "\ud615\uc2dd\uc5d0 \ub9de\ub294 \ub0a0\uc9dc\uc640 \uc2dc\uac04\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        date_extra_option: {
            selector:"[data-option-type='date_extra_option']",
            row:".col-xs-12",
            validators: {
                notEmpty: {
                    message: "\ub0b4\uc6a9\uc744 \uc785\ub825\ud574 \uc8fc\uc138\uc694."
                }
                ,
                date: {
                    format: "YYYY-MM-DD", message: "\ud615\uc2dd\uc5d0 \ub9de\ub294 \ub0a0\uc9dc\uc640 \uc2dc\uac04\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        time_extra_option: {
            selector:"[data-option-type='time_extra_option']",
            row:".col-xs-12",
            validators: {
                notEmpty: {
                    message: "\ub0b4\uc6a9\uc744 \uc785\ub825\ud574 \uc8fc\uc138\uc694."
                }
                ,
                regexp: {
                    regexp: "^(2[0-3]|[01]?[0-9]):([0-5]?[0-9])$", message: "\uc2dc\uac04:\ubd84 \ud615\uc2dd\uc73c\ub85c \uc785\ub825\ud574\uc8fc\uc138\uc694."
                }
            }
        }
        ,
        score: {
            excluded:!1,
            validators: {
                notEmpty: {
                    message: "\ubcc4\uc810\uc744 \ub4f1\ub85d\ud574\uc8fc\uc138\uc694."
                }
                ,
                greaterThan: {
                    value: 1
                }
            }
        }
        ,
        "user_leave_reason[reason]": {
            validators: {
                notEmpty: {
                    message: "\uacc4\uc815 \uc0ad\uc81c \uc0ac\uc720\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694."
                }
            }
        }
    }
}

,
console.log("ko 34");