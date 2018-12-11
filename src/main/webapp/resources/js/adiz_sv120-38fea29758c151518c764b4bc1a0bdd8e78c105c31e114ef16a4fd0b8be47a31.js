function mac30_getParameter(e) {
    var t = e + "=",
        a = "" + self.document.location.href;
    if (-1 != a.indexOf(t)) {
        var n = a.indexOf(t) + t.length,
            r = a.substr(n).indexOf("&");
        return -1 != r ? a.substring(n, n + r) : a.substr(n)
    }
    return ""
}

function mac30_getUniqKey() {
    this.str = "", this.pattern = /^[a-zA-Z0-9]+$/, this.setStr = function(e) {
        /^[0-9]+$/.test(e) || (e = 16), this.str = "";
        for (var t = 0; t < e; t++) this.rndchar()
    }, this.setType = function(e) {
        switch (e) {
            case "1":
                this.pattern = /^[0-9]+$/;
                break;
            case "A":
                this.pattern = /^[A-Z]+$/;
                break;
            case "a":
                this.pattern = /^[a-z]+$/;
                break;
            case "A1":
                this.pattern = /^[A-Z0-9]+$/;
                break;
            case "a1":
                this.pattern = /^[a-z0-9]+$/;
                break;
            default:
                this.pattern = /^[a-zA-Z0-9]+$/
        }
    }, this.getStr = function() {
        return this.str
    }, this.rndchar = function() {
        var e = Math.round(1e3 * Math.random());
        this.pattern.test(String.fromCharCode(e)) ? this.str += String.fromCharCode(e) : this.rndchar()
    }
}

function mac30_getUniqID(e) {
    var t = (new Date).getTime().toFixed();
    if (t.length >= e) {
        var a = t.length - e;
        t = t.substring(0, t.length - a)
    } else
        for (; t.length < e;) {
            t = "" + t + Math.floor(9 * Math.random())
        }
    return t
}

function mac30_nowTime() {
    return un = (new Date).getTime().toFixed()
}

function mac30_escapeStr(str) {
    var str, ch, bEncURI = "N";
    return eval("try{bEncURI=encodeURI('O');}catch(_e){ }"), str = "O" == bEncURI ? encodeURI(str) : escape(str), str = str.split("+").join("%2B"), str = str.split("/").join("%2F"), str = str.split("&").join("%26"), str = str.split("?").join("%3F"), str = str.split(":").join("%3A"), str = str.split("#").join("%23"), str
}

function mac30_setCookie(e, t, a) {
    var n = new Date;
    n.setDate(n.getDate() + parseInt(a)), document.cookie = 0 == a ? "Y" == mac30_subdomain_enable ? e + "=" + escape(t) + ";path=/;domain=" + mac30_subdomain_url + ";" : e + "=" + escape(t) + ";path=/;" : "Y" == mac30_subdomain_enable ? e + "=" + escape(t) + ";path=/;expires=" + n.toGMTString() + ";domain=" + mac30_subdomain_url + ";" : e + "=" + escape(t) + ";path=/;expires=" + n.toGMTString() + ";"
}

function mac30_getCookie(e) {
    for (var t = e + "=", a = 0; a <= document.cookie.length;) {
        var n = a + t.length;
        if (document.cookie.substring(a, n) == t) return -1 == (endOfCookie = document.cookie.indexOf(";", n)) && (endOfCookie = document.cookie.length), unescape(document.cookie.substring(n, endOfCookie));
        if (0 == (a = document.cookie.indexOf(" ", a) + 1)) break
    }
    return ""
}

function mac30_visitSend() {
    try {
        var e = mac30_getParameter(mac30_ad_url_delimeter),
            t = 1;
        if (null != e && "" != e || (null != (e = mac30_getParameter(mac30_nv_ad_url_delimeter)) && "" != e || (e = mac30_getParameter(mac30_new_nv_ad_url_delimeter)), null != e && "" != e && (e = _nvAdIdRefine(e)), t = 0), null == e || "" == e) return;
        mac30_generatedUniqKey = null == (mac30_generatedUniqKey = mac30_generatedUniqKey.getStr()) || "" == mac30_generatedUniqKey ? mac30_getUniqID(30) : (new Date).getTime().toFixed() + "" + mac30_generatedUniqKey, null != e && "" != e && (mac30_generatedUniqKey = mac30_generatedUniqKey.substring(0, mac30_generatedUniqKey.length - e.length) + "" + e), visit_func(e, mac30_getCookieArrayValue(MAC_CURRENT_KEY_ID_ORDINAL), t)
    } catch (a) {}
}

function visit_func(e, t, a) {
    VI = mac30_generatedUniqKey;
    var n = mac30_getCookieArrayValue(MAC_VISITOR_ORDINAL);
    "undefined" != n && "" != n && n || (n = VI), mac30_setCookie(mac30_visit_cookie_name, VI, 0);
    var r = new Array;
    r[MAC_VISITOR_ORDINAL] = n, r[MAC_CURRENT_KEY_ID_ORDINAL] = e, r[MAC_BEFORE_KEY_ID_ORDINAL] = t, r[MAC_LAST_AD_VISIT_ORDINAL] = mac30_nowTime(), mac30_setCookie(mac30_other_value_cookie_name, r, mac30_cookie_expire_date);
    var _ = self.document.referrer;
    "undefined" == _ ? _ = "" : _ || (_ = "");
    var i = self.document.location.href;
    "file" == i.substr(0, 4) ? i = "" : i || (i = "");
    var c = "";
    1 != a && (c = "&SKIP=1");
    var o = (-1 != i.indexOf("https") ? "https://" : "http://") + mac30_server_domain + "/" + mac30_visit_server_url + "?SITEID=" + mac30_escapeStr(mac30_site_id) + "&VISITID=" + VI;
    o += c, o += "&VISITORID=" + n + "&RP=" + mac30_escapeStr(_) + "&CP=" + mac30_escapeStr(i) + "&CKID=" + e + "&BKID=" + t, o += "&SV=" + mac30_sv + "&COOKIEDIV=Y", (new Image).src = o
}

function mac30_getCookieArrayValue(e) {
    var t = mac30_getCookie(mac30_other_value_cookie_name).split(",");
    return "undefined" == typeof t[e] ? "" : t[e]
}

function mac30_convSend() {
    try {
        var e = mac30_getCookieArrayValue(MAC_VISITOR_ORDINAL);
        if ("undefined" == e || "" == e || !e) return;
        var t = "",
            a = "",
            n = 0;
        if ("undefined" != typeof CN && 0 != CN.length && "" != CN && null != CN) {
            var r = mac30_getCookie(mac30_visit_cookie_name);
            if (null == r || "" == r) {
                r = mac30_generatedUniqKey = null == (mac30_generatedUniqKey = mac30_generatedUniqKey.getStr()) || "" == mac30_generatedUniqKey ? mac30_getUniqID(30) : (new Date).getTime().toFixed() + "" + mac30_generatedUniqKey, t = "", a = mac30_getCookieArrayValue(MAC_CURRENT_KEY_ID_ORDINAL);
                var _ = mac30_getCookieArrayValue(MAC_LAST_AD_VISIT_ORDINAL);
                if (null != _ && "" != _ && (n = Math.round((mac30_nowTime() - _) / 1e3)), "" == t && "" == a) return
            } else if (t = mac30_getCookieArrayValue(MAC_CURRENT_KEY_ID_ORDINAL), a = mac30_getCookieArrayValue(MAC_BEFORE_KEY_ID_ORDINAL), "" == t && "" == a) return;
            var i = self.document.referrer;
            "undefined" == i ? i = "" : i || (i = "");
            var c = self.document.location.href;
            "file" == c.substr(0, 4) ? c = "" : c || (c = "");
            var o = (-1 != c.indexOf("https") ? "https://" : "http://") + mac30_server_domain + "/" + mac30_conv_server_url + "?SITEID=" + mac30_escapeStr(mac30_site_id) + "&VISITID=" + r;
            o += "&VISITORID=" + e + "&RP=" + mac30_escapeStr(i) + "&CP=" + mac30_escapeStr(c) + "&CKID=" + t + "&BKID=" + a, o += "&SV=" + mac30_sv + "&COOKIEDIV=Y&LAST_AD_VISIT_DIFF=" + n, "undefined" != typeof CN && 0 != CN.length && (o += "&CN=" + mac30_escapeStr(CN)), "undefined" != typeof CK && 0 != CK.length && (o += "&CK=" + CK), "undefined" != typeof CA && 0 != CA.length && (o += "&CA=" + CA), "undefined" != typeof CDN && 0 != CDN.length && (o += "&CDN=" + mac30_escapeStr(CDN)), "undefined" != typeof CDT && 0 != CDT.length && (o += "&CDT=" + mac30_escapeStr(CDT)), "undefined" != typeof CDE && 0 != CDE.length && (o += "&CDE=" + CDE), "undefined" != typeof CDC && 0 != CDC.length && (o += "&CDC=" + CDC), "undefined" != typeof ETC1 && 0 != ETC1.length && (o += "&ETC1=" + ETC1), "undefined" != typeof ETC2 && 0 != ETC2.length && (o += "&ETC2=" + ETC2), "undefined" != typeof ETC3 && 0 != ETC3.length && (o += "&ETC3=" + ETC3), "undefined" != typeof CANCELDIV && 0 != CANCELDIV.length && (o += "&CANCELDIV=" + CANCELDIV), (new Image).src = o
        }
    } catch (m) {}
}

function mac30_btn_convSend(e) {
    var t = e;
    try {
        var a = mac30_getCookieArrayValue(MAC_VISITOR_ORDINAL);
        if ("undefined" == a || "" == a || !a) return;
        var n = "",
            r = "",
            _ = 0;
        if (void 0 !== t && 0 != t.length && "" != t && null != t) {
            var i = mac30_getCookie(mac30_visit_cookie_name);
            if (null == i || "" == i) {
                i = mac30_generatedUniqKey = null == (mac30_generatedUniqKey = mac30_generatedUniqKey.getStr()) || "" == mac30_generatedUniqKey ? mac30_getUniqID(30) : (new Date).getTime().toFixed() + "" + mac30_generatedUniqKey, n = "", r = mac30_getCookieArrayValue(MAC_CURRENT_KEY_ID_ORDINAL);
                var c = mac30_getCookieArrayValue(MAC_LAST_AD_VISIT_ORDINAL);
                if (null != c && "" != c && (_ = Math.round((mac30_nowTime() - c) / 1e3)), "" == n && "" == r) return
            } else if (n = mac30_getCookieArrayValue(MAC_CURRENT_KEY_ID_ORDINAL), r = mac30_getCookieArrayValue(MAC_BEFORE_KEY_ID_ORDINAL), "" == n && "" == r) return;
            var o = self.document.referrer;
            "undefined" == o ? o = "" : o || (o = "");
            var m = self.document.location.href;
            "file" == m.substr(0, 4) ? m = "" : m || (m = "");
            var d = (-1 != m.indexOf("https") ? "https://" : "http://") + mac30_server_domain + "/" + mac30_conv_server_url + "?SITEID=" + mac30_escapeStr(mac30_site_id) + "&VISITID=" + i;
            d += "&VISITORID=" + a + "&RP=" + mac30_escapeStr(o) + "&CP=" + mac30_escapeStr(m) + "&CKID=" + n + "&BKID=" + r, d += "&SV=" + mac30_sv + "&COOKIEDIV=Y&LAST_AD_VISIT_DIFF=" + _, void 0 !== t && 0 != t.length && (d += "&CN=" + mac30_escapeStr(t)), "undefined" != typeof CK && 0 != CK.length && (d += "&CK=" + CK), "undefined" != typeof CA && 0 != CA.length && (d += "&CA=" + CA), "undefined" != typeof CDN && 0 != CDN.length && (d += "&CDN=" + mac30_escapeStr(CDN)), "undefined" != typeof CDT && 0 != CDT.length && (d += "&CDT=" + mac30_escapeStr(CDT)), "undefined" != typeof CDE && 0 != CDE.length && (d += "&CDE=" + CDE), "undefined" != typeof CDC && 0 != CDC.length && (d += "&CDC=" + CDC), "undefined" != typeof ETC1 && 0 != ETC1.length && (d += "&ETC1=" + ETC1), "undefined" != typeof ETC2 && 0 != ETC2.length && (d += "&ETC2=" + ETC2), "undefined" != typeof ETC3 && 0 != ETC3.length && (d += "&ETC3=" + ETC3), "undefined" != typeof CANCELDIV && 0 != CANCELDIV.length && (d += "&CANCELDIV=" + CANCELDIV), (new Image).src = d
        }
    } catch (s) {}
}

function mac30_rankSend() {
    try {
        var e = mac30_getParameter("NVADRANK"),
            t = mac30_getParameter("NVADID"),
            a = mac30_getParameter("n_rank"),
            n = mac30_getParameter("n_keyword_id");
        if (null == e || "" == e)
            if (null == a || "" == a);
            else {
                "file" == (_ = self.document.location.href).substr(0, 4) ? _ = "" : _ || (_ = "");
                var r = (-1 != _.indexOf("https") ? "https://" : "http://") + mac30_server_domain + "/" + mac30_bid_server_url + "?rankValue=" + a + "&adId=" + _nvAdIdRefine(n);
                (new Image).src = r
            } else {
            var _;
            "file" == (_ = self.document.location.href).substr(0, 4) ? _ = "" : _ || (_ = "");
            r = (-1 != _.indexOf("https") ? "https://" : "http://") + mac30_server_domain + "/" + mac30_bid_server_url + "?rankValue=" + e + "&adId=" + _nvAdIdRefine(t);
            (new Image).src = r
        }
    } catch (i) {}
}

function mac30_sendInfo() {
    mac30_visitSend(), "undefined" != typeof CN && 0 != CN.length && "" != CN && null != CN && mac30_convSend(), mac30_rankSend()
}
var mac30_sv = "13.0",
    mac30_server_domain = "mctech.mac20.com",
    mac30_visit_server_url = "pfRawdataVisit.do",
    mac30_conv_server_url = "pfRawdataConv.do",
    mac30_site_id = "NQya4Sgkqqg",
    mac30_site_id_unique_key = "90001",
    mac30_subdomain_enable = "Y",
    mac30_subdomain_url = ".myrealtrip.com",
    mac30_cookie_expire_date = "30",
    mac30_ad_url_delimeter = "mac_ad_key",
    mac30_other_value_cookie_name = "_m_OV" + mac30_site_id,
    mac30_visit_cookie_name = "_m_VI" + mac30_site_id,
    mac30_bid_server_url = "bidRank.do",
    mac30_nv_ad_url_delimeter = "NVADID",
    mac30_new_nv_ad_url_delimeter = "n_keyword_id",
    MAC_VISITOR_ORDINAL = 0,
    MAC_BEFORE_KEY_ID_ORDINAL = 1,
    MAC_CURRENT_KEY_ID_ORDINAL = 2,
    MAC_LAST_AD_VISIT_ORDINAL = 3,
    mac30_generatedUniqKey = new mac30_getUniqKey;
mac30_generatedUniqKey.setType(""), mac30_generatedUniqKey.setStr(12);
var _nvAdIdRefine = function(e) {
    return (e = e.split("+"))[0]
};
mac30_sendInfo();