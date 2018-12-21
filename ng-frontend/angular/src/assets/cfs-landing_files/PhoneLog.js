PhoneLog_JS_Already_Loaded = false;

String.prototype.replaceAll = function (search, replacement) {
    var target = this;
    return target.replace(new RegExp(search, 'g'), replacement);
};

if (!(typeof PHONE_LOG_LOADED === "undefined")) {
    PhoneLog_JS_Already_Loaded = PHONE_LOG_LOADED;
}

PHONE_LOG_LOADED = true

if (!PhoneLog_JS_Already_Loaded) {
    arrayPhoneNumbers = new Array();
}
else {
    console.log("PhoneLog_JS_Already_Loaded: " + PhoneLog_JS_Already_Loaded);
}

function findPhoneNumbers(reg, text) {
    var m;

    do {
        m = reg.exec(text);

        if (m) {
            arrayPhoneNumbers[arrayPhoneNumbers.length] = m[0];
        }
    } while (m);
}

function PhoneLog_GetBodyText() {
    var text = "";
    var hasjQuery = !(typeof jQuery === "undefined");

    if (hasjQuery) {
        $(".phoneLogging.encoded").each(function (index) {
            $span = $(this);
            $span.html($span.html().replace("-", "@@").replace(" ", "^^"))
        });

        $("input[type='text']").each(function (index) {
            $textBox = $(this);
            newVal = $textBox.val().replace("-", "@_@").replace(" ", "^_^");
            $textBox.attr("data-newVal", newVal).attr("value", "");
        });

        $("iframe").each(function (index) {
            $iframe = $(this);

            if ($iframe.data("src")) {
                newSrc = $iframe.data("src").replaceAll("-", "@_@").replaceAll(" ", "^_^");
                
                $iframe.removeAttr("data-src");
                $iframe.attr("data-src", newSrc);
            }
        });
    }

    if (hasjQuery) {
        text = $("body:first").html();
    }
    else {
        bodyTags = document.getElementsByTagName("body")

        if (bodyTags.length > 0) {
            text = bodyTags[0].innerHTML
        }
    }

    if (hasjQuery) {
        $(".phoneLogging.encoded").each(function (index) {
            $span = $(this);
            $span.html($span.html().replace("@@", "-").replace("^^", " "))
        });

        $("input[type='text']").each(function (index) {
            $textBox = $(this);
            newVal = $textBox.attr("data-newVal").replace("@_@", "-").replace("^_^", " ");
            $textBox.removeAttr("data-newVal").attr("value", newVal);
        });

        $("iframe").each(function (index) {
            $iframe = $(this);

            if ($iframe.data("src")) {
                newSrc = $iframe.data("src").replaceAll("@_@", "-").replaceAll("^_^", " ");
                $iframe.attr("src", newSrc);
                $iframe.data("src", "");
            }
        });
    }

    return text;
}

function PhoneLog_ParsePhoneNumbersOnLoad() {

    var text = PhoneLog_GetBodyText();

    arrayPhoneNumbers = new Array();

    var reg = /\(\d{3}\) \d{3}-\d{4}/g;
    findPhoneNumbers(reg, text);

    var reg = /\(\d{3}\) \d{3} \d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\d{3} \d{3} \d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\d{3}-\d{3}-\d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\d{3}\.\d{3}\.\d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\d{3} \d{3}-\d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\d{2} \d{4} \d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\(\d{2}\) \d{4}-\d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\(\d{2}\) \d{4} \d{4}/g;
    findPhoneNumbers(reg, text);

    reg = /\(\d{2} \d{2}\) \d{4} \d{4}/g;
    findPhoneNumbers(reg, text);

    //console.log(document.location.href);
    //console.log(arrayPhoneNumbers);

    isDebug = (document.location.href.indexOf("debugj=1") > 1);

    if (isDebug) {
        alert(arrayPhoneNumbers);

        if (!(typeof jQuery === "undefined")) {
            alert("jQuery...")
        }
    }

    if (arrayPhoneNumbers.length > 0) {
        callType = "iframe";

        if (!(typeof jQuery === "undefined")) {
            callType = "ajax";
        }

        currentURL = document.location.href;

        ajaxURL = "/phone_log_ajax.asp?callType=" + callType + "&url=" + encodeURIComponent(currentURL) + "&phoneNumbers=" + arrayPhoneNumbers

        if (typeof (Phone_Log_Ignore_Phone) !== "undefined") {
            ajaxURL = ajaxURL + "&ignorePhoneNumber=" + Phone_Log_Ignore_Phone
        }

        if (callType == "ajax") {
            customerGroupId = $(".data-field[data-field-name='CustomerGroupID']").data("field-val");

            if (customerGroupId) {
                ajaxURL = ajaxURL + "&customerGroupId=" + customerGroupId
            }
        }

        if (currentURL.indexOf("localhost") >= 0 || currentURL.indexOf("spin.systemadmin.com") >= 0) {
            ajaxURL = "/credit" + ajaxURL;
        }

        //console.log(ajaxURL);

        if (isDebug) {
            alert(ajaxURL);
        }

        if (callType == "ajax") {
            jQuery.get(ajaxURL, function () {
            });
        }
        else {
            var iframeElement = document.createElement('iframe');
            iframeElement.style.cssText = "display:none;"
            iframeElement.src = ajaxURL;
            document.body.appendChild(iframeElement);
        }
    }
}

if (!PhoneLog_JS_Already_Loaded) {
    if (window.addEventListener) {
        window.addEventListener('load', PhoneLog_ParsePhoneNumbersOnLoad)
    } else {
        window.attachEvent('onload', PhoneLog_ParsePhoneNumbersOnLoad)
    } 
}

function PhoneLog_LogSpecialNumbers($parent) {
    if (!(typeof jQuery === "undefined")) {
        phoneNumbers = "";

        $parent.find(".phoneLogging").each(function (index) {
            $phone = $(this).html();

            if ($phone != "") {
                $phone = $phone.replaceAll("&nbsp;", " ");
                $phone = $phone.replaceAll("&#45;", "-");
                $phone = $phone.replaceAll("&#46;", ".");

                if (phoneNumbers == "") {
                    phoneNumbers = $phone;
                }
                else {
                    phoneNumbers = phoneNumbers + "," + $phone;
                }
            }
        });

        if (phoneNumbers != "") {
            currentURL = document.location.href;
            callType = "ajax";
            ajaxURL = "/phone_log_ajax.asp?noPageBlock=1&callType=" + callType + "&url=" + encodeURIComponent(currentURL) + "&phoneNumbers=" + phoneNumbers

            if (callType == "ajax") {
                customerGroupId = $(".data-field[data-field-name='CustomerGroupID']").data("field-val");

                if (customerGroupId) {
                    ajaxURL = ajaxURL + "&customerGroupId=" + customerGroupId
                }
            }

            if (currentURL.indexOf("localhost") >= 0 || currentURL.indexOf("spin.systemadmin.com") >= 0) {
                ajaxURL = "/credit" + ajaxURL;
            }
            
            jQuery.get(ajaxURL, function () {
            });
        }
    }
}
