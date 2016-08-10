.class public Lcom/upsight/mediation/mraid/MRAIDView;
.super Landroid/widget/RelativeLayout;
.source "MRAIDView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;,
        Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;,
        Lcom/upsight/mediation/mraid/MRAIDView$Size;
    }
.end annotation


# static fields
.field private static final CLOSE_REGION_SIZE:I = 0x32

.field private static final STATE_DEFAULT:I = 0x1

.field private static final STATE_EXPANDED:I = 0x2

.field private static final STATE_HIDDEN:I = 0x4

.field private static final STATE_LOADING:I = 0x0

.field private static final STATE_RESIZED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MRAIDView"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private backgroundColor:I

.field private baseUrl:Ljava/lang/String;

.field private closeRegion:Landroid/widget/ImageButton;

.field private contentViewTop:I

.field private context:Landroid/content/Context;

.field private currentPosition:Landroid/graphics/Rect;

.field private currentWebView:Landroid/webkit/WebView;

.field private defaultPosition:Landroid/graphics/Rect;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private expandedView:Landroid/widget/RelativeLayout;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private htmlData:Ljava/lang/String;

.field private isActionBarShowing:Z

.field private isClosing:Z

.field private isExpandingFromDefault:Z

.field private isExpandingPart2:Z

.field private isForcingFullScreen:Z

.field private final isInterstitial:Z

.field private isLaidOut:Z

.field private isPageFinished:Z

.field private isViewable:Z

.field private listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

.field private maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

.field private mraidJs:Ljava/lang/String;

.field private mraidWebChromeClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;

.field private mraidWebViewClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

.field private nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

.field private nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

.field private orientationProperties:Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;

.field private origTitleBarVisibility:I

.field private resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

.field private resizedView:Landroid/widget/RelativeLayout;

.field private rotateMode:I

.field private screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

.field private state:I

.field private titleBar:Landroid/view/View;

.field private useCustomClose:Z

.field private webView:Landroid/webkit/WebView;

.field private webViewPart2:Landroid/webkit/WebView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDViewListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;Z)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "backgroundColor"    # I
    .param p5, "supportedNativeFeatures"    # [Ljava/lang/String;
    .param p6, "listener"    # Lcom/upsight/mediation/mraid/MRAIDViewListener;
    .param p7, "nativeFeatureListener"    # Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    .param p8, "isInterstitial"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 169
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 135
    const-string v0, "<script language=\"javascript\" type=\"text/javascript\">\n(function() {\n\n\tconsole.log(\"MRAID object loading...\");\n\n\t/***************************************************************************\n\t * console logging helper\n\t **************************************************************************/\n\n\tvar LogLevelEnum = {\n\t\t\"DEBUG\"   : 0,\n\t\t\"INFO\"    : 1,\n\t\t\"WARNING\" : 2,\n\t\t\"ERROR\"   : 3,\n\t\t\"NONE\"    : 4\n\t};\n\n\tvar logLevel = LogLevelEnum.NONE;\n\tvar log = {};\n\n\tlog.d = function(msg) {\n\t\tif (logLevel <= LogLevelEnum.DEBUG) {\n\t\t\tconsole.log(\"(D-mraid.js) \" + msg);\n\t\t}\n\t};\n\n\tlog.i = function(msg) {\n\t\tif (logLevel <= LogLevelEnum.INFO) {\n\t\t\tconsole.log(\"(I-mraid.js) \" + msg);\n\t\t}\n\t};\n\n\tlog.w = function(msg) {\n\t\tif (logLevel <= LogLevelEnum.WARNING) {\n\t\t\tconsole.log(\"(W-mraid.js) \" + msg);\n\t\t}\n\t};\n\n\tlog.e = function(msg) {\n\t\tif (logLevel <= LogLevelEnum.ERROR) {\n\t\t\tconsole.log(\"(E-mraid.js) \" + msg);\n\t\t}\n\t};\n\n\t/***************************************************************************\n\t * MRAID declaration\n\t **************************************************************************/\n\n\tvar mraid = window.mraid = {};\n\n\t/***************************************************************************\n\t * constants\n\t **************************************************************************/\n\n\tvar VERSION = \"2.0\";\n\n\tvar STATES = mraid.STATES = {\n\t\t\"LOADING\" : \"loading\",\n\t\t\"DEFAULT\" : \"default\",\n\t\t\"EXPANDED\" : \"expanded\",\n\t\t\"RESIZED\" : \"resized\",\n\t\t\"HIDDEN\" : \"hidden\"\n\t};\n\n\tvar PLACEMENT_TYPES = mraid.PLACEMENT_TYPES = {\n\t\t\"INLINE\" : \"inline\",\n\t\t\"INTERSTITIAL\" : \"interstitial\"\n\t};\n\n\tvar RESIZE_PROPERTIES_CUSTOM_CLOSE_POSITION = mraid.RESIZE_PROPERTIES_CUSTOM_CLOSE_POSITION = {\n\t\t\"TOP_LEFT\" : \"top-left\",\n\t\t\"TOP_CENTER\" : \"top-center\",\n\t\t\"TOP_RIGHT\" : \"top-right\",\n\t\t\"CENTER\" : \"center\",\n\t\t\"BOTTOM_LEFT\" : \"bottom-left\",\n\t\t\"BOTTOM_CENTER\" : \"bottom-center\",\n\t\t\"BOTTOM_RIGHT\" : \"bottom-right\"\n\t};\n\n\tvar ORIENTATION_PROPERTIES_FORCE_ORIENTATION = mraid.ORIENTATION_PROPERTIES_FORCE_ORIENTATION = {\n\t\t\"PORTRAIT\" : \"portrait\",\n\t\t\"LANDSCAPE\" : \"landscape\",\n\t\t\"NONE\" : \"none\"\n\t};\n\n\tvar EVENTS = mraid.EVENTS = {\n\t\t\"ERROR\" : \"error\",\n\t\t\"READY\" : \"ready\",\n\t\t\"SIZECHANGE\" : \"sizeChange\",\n\t\t\"STATECHANGE\" : \"stateChange\",\n\t\t\"VIEWABLECHANGE\" : \"viewableChange\"\n\t};\n\n\tvar SUPPORTED_FEATURES = mraid.SUPPORTED_FEATURES = {\n\t\t\"SMS\" : \"sms\",\n\t\t\"TEL\" : \"tel\",\n\t\t\"CALENDAR\" : \"calendar\",\n\t\t\"STOREPICTURE\" : \"storePicture\",\n\t\t\"INLINEVIDEO\" : \"inlineVideo\"\n\t};\n\n\t/***************************************************************************\n\t * state\n\t **************************************************************************/\n\n\tvar state = STATES.LOADING;\n\tvar placementType = PLACEMENT_TYPES.INLINE;\n\tvar supportedFeatures = {};\n\tvar isViewable = false;\n\tvar isExpandPropertiesSet = false;\n\tvar isResizeReady = false;\n\n\tvar expandProperties = {\n\t\t\"width\" : 0,\n\t\t\"height\" : 0,\n\t\t\"useCustomClose\" : false,\n\t\t\"isModal\" : true\n\t};\n\n\tvar orientationProperties = {\n\t\t\"allowOrientationChange\" : true,\n\t\t\"forceOrientation\" : ORIENTATION_PROPERTIES_FORCE_ORIENTATION.NONE\n\t};\n\n\tvar resizeProperties = {\n\t\t\"width\" : 0,\n\t\t\"height\" : 0,\n\t\t\"customClosePosition\" : RESIZE_PROPERTIES_CUSTOM_CLOSE_POSITION.TOP_RIGHT,\n\t\t\"offsetX\" : 0,\n\t\t\"offsetY\" : 0,\n\t\t\"allowOffscreen\" : true\n\t};\n\n\tvar currentPosition = {\n\t\t\"x\" : 0,\n\t\t\"y\" : 0,\n\t\t\"width\" : 0,\n\t\t\"height\" : 0\n\t};\n\n\tvar defaultPosition = {\n\t\t\"x\" : 0,\n\t\t\"y\" : 0,\n\t\t\"width\" : 0,\n\t\t\"height\" : 0\n\t};\n\n\tvar maxSize = {\n\t\t\"width\" : 0,\n\t\t\"height\" : 0\n\t};\n\n\tvar screenSize = {\n\t\t\"width\" : 0,\n\t\t\"height\" : 0\n\t};\n\n\tvar currentOrientation = 0;\n\n\tvar listeners = {};\n\n\t/***************************************************************************\n\t * \"official\" API: methods called by creative\n\t **************************************************************************/\n\n\tmraid.addEventListener = function(event, listener) {\n\t\tlog.i(\"mraid.addEventListener \" + event + \": \" + String(listener));\n\t\tif (!event || !listener) {\n\t\t\tmraid.fireErrorEvent(\"Both event and listener are required.\", \"addEventListener\");\n\t\t\treturn;\n\t\t}\n\t\tif (!contains(event, EVENTS)) {\n\t\t\tmraid.fireErrorEvent(\"Unknown MRAID event: \" + event, \"addEventListener\");\n\t\t\treturn;\n\t\t}\n\t\tvar listenersForEvent = listeners[event] = listeners[event] || [];\n\t\t// check to make sure that the listener isn\'t already registered\n\t\tfor (var i = 0; i < listenersForEvent.length; i++) {\n\t\t\tvar str1 = String(listener);\n\t\t\tvar str2 = String(listenersForEvent[i]);\n\t\t\tif (listener === listenersForEvent[i] || str1 === str2) {\n\t\t\t\tlog.i(\"listener \" + str1 + \" is already registered for event \" + event);\n\t\t\t\treturn;\n\t\t\t}\n\t\t}\n\t\tlistenersForEvent.push(listener);\n\t};\n\n\tmraid.createCalendarEvent = function(parameters) {\n\t\tlog.i(\"mraid.createCalendarEvent with \" + parameters);\n\t\tif (supportedFeatures[mraid.SUPPORTED_FEATURES.CALENDAR]) {\n\t\t\tcallNative(\"createCalendarEvent?eventJSON=\"\t+ JSON.stringify(parameters));\n\t\t} else {\n\t\t\tlog.e(\"createCalendarEvent is not supported\");\n\t\t}\n\t};\n\n\tmraid.close = function() {\n\t\tlog.i(\"mraid.close\");\n\t\tif (state === STATES.LOADING\n\t\t\t\t|| (state === STATES.DEFAULT && placementType === PLACEMENT_TYPES.INLINE)\n\t\t\t\t|| state === STATES.HIDDEN) {\n\t\t\t// do nothing\n\t\t\treturn;\n\t\t}\n\t\tcallNative(\"close\");\n\t};\n\n\tmraid.expand = function(url) {\n\t\tif (url === undefined) {\n\t\t\tlog.i(\"mraid.expand (1-part)\");\n\t\t} else {\n\t\t\tlog.i(\"mraid.expand \" + url);\n\t\t}\n\t\t// The only time it is valid to call expand is when the ad is\n\t\t// a banner currently in either default or resized state.\n\t\tif (placementType !== PLACEMENT_TYPES.INLINE\n\t\t\t\t|| (state !== STATES.DEFAULT && state !== STATES.RESIZED)) {\n\t\t\treturn;\n\t\t}\n\t\tif (url === undefined) {\n\t\t\tcallNative(\"expand\");\n\t\t} else {\n\t\t\tcallNative(\"expand?url=\" + encodeURIComponent(url));\n\t\t}\n\t};\n\n\tmraid.getCurrentPosition = function() {\n\t\tlog.i(\"mraid.getCurrentPosition\");\n\t\treturn currentPosition;\n\t};\n\n\tmraid.getDefaultPosition = function() {\n\t\tlog.i(\"mraid.getDefaultPosition\");\n\t\treturn defaultPosition;\n\t};\n\n\tmraid.getExpandProperties = function() {\n\t\tlog.i(\"mraid.getExpandProperties\");\n\t\treturn expandProperties;\n\t};\n\n\tmraid.getMaxSize = function() {\n\t\tlog.i(\"mraid.getMaxSize\");\n\t\treturn maxSize;\n\t};\n\n\tmraid.getOrientationProperties = function() {\n\t\tlog.i(\"mraid.getOrientationProperties\");\n\t\treturn orientationProperties;\n\t};\n\n\tmraid.getPlacementType = function() {\n\t\tlog.i(\"mraid.getPlacementType\");\n\t\treturn placementType;\n\t};\n\n\tmraid.getResizeProperties = function() {\n\t\tlog.i(\"mraid.getResizeProperties\");\n\t\treturn resizeProperties;\n\t};\n\n\tmraid.getScreenSize = function() {\n\t\tlog.i(\"mraid.getScreenSize\");\n\t\treturn screenSize;\n\t};\n\n\tmraid.getState = function() {\n\t\tlog.i(\"mraid.getState\");\n\t\treturn state;\n\t};\n\n\tmraid.getVersion = function() {\n\t\tlog.i(\"mraid.getVersion\");\n\t\treturn VERSION;\n\t};\n\n\tmraid.isViewable = function() {\n\t\tlog.i(\"mraid.isViewable\");\n\t\treturn isViewable;\n\t};\n\n\tmraid.open = function(url) {\n\t\tlog.i(\"mraid.open \" + url);\n\t\tcallNative(\"open?url=\" + encodeURIComponent(url));\n\t};\n\n\tmraid.playVideo = function(url) {\n\t\tlog.i(\"mraid.playVideo \" + url);\n\t\tcallNative(\"playVideo?url=\" + encodeURIComponent(url));\n\t};\n\n\tmraid.removeEventListener = function(event, listener) {\n\t\tlog.i(\"mraid.removeEventListener \" + event + \" : \" + String(listener));\n\t\tif (!event) {\n\t\t\tmraid.fireErrorEvent(\"Event is required.\", \"removeEventListener\");\n\t\t\treturn;\n\t\t}\n\t\tif (!contains(event, EVENTS)) {\n\t\t\tmraid.fireErrorEvent(\"Unknown MRAID event: \" + event, \"removeEventListener\");\n\t\t\treturn;\n\t\t}\n\t\tif (listeners.hasOwnProperty(event)) {\n\t\t\tif (listener) {\n\t\t\t\tvar listenersForEvent = listeners[event];\n\t\t\t\t// try to find the given listener\n\t\t\t\tvar len = listenersForEvent.length;\n\t\t\t\tfor (var i = 0; i < len; i++) {\n\t\t\t\t\tvar registeredListener = listenersForEvent[i];\n\t\t\t\t\tvar str1 = String(listener);\n\t\t\t\t\tvar str2 = String(registeredListener);\n\t\t\t\t\tif (listener === registeredListener || str1 === str2) {\n\t\t\t\t\t\tlistenersForEvent.splice(i, 1);\n\t\t\t\t\t\tbreak;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t\tif (i === len) {\n\t\t\t\t\tlog.i(\"listener \" + str1 + \" not found for event \" + event);\n\t\t\t\t}\n\t\t\t\tif (listenersForEvent.length === 0) {\n\t\t\t\t\tdelete listeners[event];\n\t\t\t\t}\n\t\t\t} else {\n\t\t\t\t// no listener to remove was provided, so remove all listeners\n\t\t\t\t// for given event\n\t\t\t\tdelete listeners[event];\n\t\t\t}\n\t\t} else {\n\t\t\tlog.i(\"no listeners registered for event \" + event);\n\t\t}\n\t};\n\n\tmraid.resize = function() {\n\t\tlog.i(\"mraid.resize\");\n\t\t// The only time it is valid to call resize is when the ad is\n\t\t// a banner currently in either default or resized state.\n\t\t// Trigger an error if the current state is expanded.\n\t\tif (placementType === PLACEMENT_TYPES.INTERSTITIAL || state === STATES.LOADING || state === STATES.HIDDEN) {\n\t\t\t// do nothing\n\t\t\treturn;\n\t\t}\n\t\tif (state === STATES.EXPANDED) {\n\t\t\tmraid.fireErrorEvent(\"mraid.resize called when ad is in expanded state\", \"mraid.resize\");\n\t\t\treturn;\n\t\t}\n\t\tif (!isResizeReady) {\n\t\t\tmraid.fireErrorEvent(\"mraid.resize is not ready to be called\", \"mraid.resize\");\n\t\t\treturn;\n\t\t}\n\t\tcallNative(\"resize\");\n\t};\n\n\tmraid.setExpandProperties = function(properties) {\n\t\tlog.i(\"mraid.setExpandProperties\");\n\n\t\tif (!validate(properties, \"setExpandProperties\")) {\n\t\t\tlog.e(\"failed validation\");\n\t\t\treturn;\n\t\t}\n\n\t\tvar oldUseCustomClose = expandProperties.useCustomClose;\n\n\t\t// expandProperties contains 3 read-write properties: width, height, and useCustomClose;\n\t\t// the isModal property is read-only\n\t\tvar rwProps = [ \"width\", \"height\", \"useCustomClose\" ];\n\t\tfor (var i = 0; i < rwProps.length; i++) {\n\t\t\tvar propname = rwProps[i];\n\t\t\tif (properties.hasOwnProperty(propname)) {\n\t\t\t\texpandProperties[propname] = properties[propname];\n\t\t\t}\n\t\t}\n\n\t\t// In MRAID v2.0, all expanded ads by definition cover the entire screen,\n\t\t// so the only property that the native side has to know about is useCustomClose.\n\t\t// (That is, the width and height properties are not needed by the native code.)\n\t\tif (expandProperties.useCustomClose !== oldUseCustomClose) {\n\t\t\tcallNative(\"useCustomClose?useCustomClose=\"\t+ expandProperties.useCustomClose);\n\t\t}\n\n\t\tisExpandPropertiesSet = true;\n\t};\n\n\tmraid.setOrientationProperties = function(properties) {\n\t\tlog.i(\"mraid.setOrientationProperties\");\n\n\t\tif (!validate(properties, \"setOrientationProperties\")) {\n\t\t\tlog.e(\"failed validation\");\n\t\t\treturn;\n\t\t}\n\n\t\tvar newOrientationProperties = {};\n\t\tnewOrientationProperties.allowOrientationChange = orientationProperties.allowOrientationChange,\n\t\tnewOrientationProperties.forceOrientation = orientationProperties.forceOrientation;\n\n\t\t// orientationProperties contains 2 read-write properties:\n\t\t// allowOrientationChange and forceOrientation\n\t\tvar rwProps = [ \"allowOrientationChange\", \"forceOrientation\" ];\n\t\tfor (var i = 0; i < rwProps.length; i++) {\n\t\t\tvar propname = rwProps[i];\n\t\t\tif (properties.hasOwnProperty(propname)) {\n\t\t\t\tnewOrientationProperties[propname] = properties[propname];\n\t\t\t}\n\t\t}\n\n\t\t// Setting allowOrientationChange to true while setting forceOrientation\n\t\t// to either portrait or landscape\n\t\t// is considered an error condition.\n\t\tif (newOrientationProperties.allowOrientationChange\n\t\t\t\t&& newOrientationProperties.forceOrientation !== mraid.ORIENTATION_PROPERTIES_FORCE_ORIENTATION.NONE) {\n\t\t\tmraid.fireErrorEvent(\n\t\t\t\t\t\"allowOrientationChange is true but forceOrientation is \"\n\t\t\t\t\t+ newOrientationProperties.forceOrientation,\n\t\t\t\t\t\"setOrientationProperties\");\n\t\t\treturn;\n\t\t}\n\n\t\torientationProperties.allowOrientationChange = newOrientationProperties.allowOrientationChange;\n\t\torientationProperties.forceOrientation = newOrientationProperties.forceOrientation;\n\n\t\tvar params = \"allowOrientationChange=\"\n\t\t\t\t+ orientationProperties.allowOrientationChange\n\t\t\t\t+ \"&forceOrientation=\" + orientationProperties.forceOrientation;\n\n\t\tcallNative(\"setOrientationProperties?\" + params);\n\t};\n\n\tmraid.setResizeProperties = function(properties) {\n\t\tlog.i(\"mraid.setResizeProperties\");\n\n\t\tisResizeReady = false;\n\n\t\t// resizeProperties contains 6 read-write properties:\n\t\t// width, height, offsetX, offsetY, customClosePosition, allowOffscreen\n\n\t\t// The properties object passed into this function must contain width, height, offsetX, offsetY.\n\t\t// The remaining two properties are optional.\n\t\tvar requiredProps = [ \"width\", \"height\", \"offsetX\", \"offsetY\" ];\n\t\tfor (var i = 0; i < requiredProps.length; i++) {\n\t\t\tvar propname = requiredProps[i];\n\t\t\tif (!properties.hasOwnProperty(propname)) {\n\t\t\t\tmraid.fireErrorEvent(\n\t\t\t\t\t\t\"required property \" + propname + \" is missing\",\n\t\t\t\t\t\t\"mraid.setResizeProperties\");\n\t\t\t\treturn;\n\t\t\t}\n\t\t}\n\n\t\tif (!validate(properties, \"setResizeProperties\")) {\n\t\t\tmraid.fireErrorEvent(\"failed validation\", \"mraid.setResizeProperties\");\n\t\t\treturn;\n\t\t}\n\n        var adjustments = { \"x\": 0, \"y\": 0 };\n\n\t\tvar allowOffscreen = properties.hasOwnProperty(\"allowOffscreen\") ? properties.allowOffscreen : resizeProperties.allowOffscreen;\n        if (!allowOffscreen) {\n            if (properties.width > maxSize.width || properties.height > maxSize.height) {\n                mraid.fireErrorEvent(\"resize width or height is greater than the maxSize width or height\", \"mraid.setResizeProperties\");\n                return;\n            }\n            adjustments = fitResizeViewOnScreen(properties);\n        } else if (!isCloseRegionOnScreen(properties)) {\n            mraid.fireErrorEvent(\"close event region will not appear entirely onscreen\", \"mraid.setResizeProperties\");\n            return;\n        }\n\n\t\tvar rwProps = [ \"width\", \"height\", \"offsetX\", \"offsetY\", \"customClosePosition\", \"allowOffscreen\" ];\n\t\tfor (var i = 0; i < rwProps.length; i++) {\n\t\t\tvar propname = rwProps[i];\n\t\t\tif (properties.hasOwnProperty(propname)) {\n\t\t\t\tresizeProperties[propname] = properties[propname];\n\t\t\t}\n\t\t}\n\n\t\tvar params =\n\t\t\t\"width=\" + resizeProperties.width +\n\t\t\t\"&height=\" + resizeProperties.height +\n\t        \"&offsetX=\" + (resizeProperties.offsetX + adjustments.x) +\n\t        \"&offsetY=\" + (resizeProperties.offsetY + adjustments.y) +\n\t\t\t\"&customClosePosition=\" + resizeProperties.customClosePosition +\n\t\t\t\"&allowOffscreen=\" + resizeProperties.allowOffscreen;\n\n\t\tcallNative(\"setResizeProperties?\" + params);\n\n\t\tisResizeReady = true;\n\t};\n\n\tmraid.storePicture = function(url) {\n\t\tlog.i(\"mraid.storePicture \" + url);\n\t\tif (supportedFeatures[mraid.SUPPORTED_FEATURES.STOREPICTURE]) {\n\t\t\tcallNative(\"storePicture?url=\" + encodeURIComponent(url));\n\t\t} else {\n\t\t\tlog.e(\"storePicture is not supported\");\n\t\t}\n\t};\n\n\tmraid.supports = function(feature) {\n\t\tlog.i(\"mraid.supports \" + feature + \" \" + supportedFeatures[feature]);\n\t\tvar retval = supportedFeatures[feature];\n\t\tif (typeof retval === \"undefined\") {\n\t\t\tretval = false;\n\t\t}\n\t\treturn retval;\n\t};\n\n\tmraid.useCustomClose = function(isCustomClose) {\n\t\tlog.i(\"mraid.useCustomClose \" + isCustomClose);\n\t\tif (expandProperties.useCustomClose !== isCustomClose) {\n\t\t\texpandProperties.useCustomClose = isCustomClose;\n\t\t\tcallNative(\"useCustomClose?useCustomClose=\"\n\t\t\t\t\t+ expandProperties.useCustomClose);\n\t\t}\n\t};\n\n\tmraid.rewardComplete = function() {\n\t\tlog.i(\"mraid.rewardComplete\");\n\t\tcallNative(\"rewardComplete\");\n\t}\n\n\t/***************************************************************************\n\t * helper methods called by SDK\n\t **************************************************************************/\n\n\t// setters to change state\n\tmraid.setCurrentPosition = function(x, y, width, height) {\n\t\tlog.i(\"mraid.setCurrentPosition \" + x + \",\" + y + \",\" + width + \",\"\t+ height);\n\n\t\tvar previousSize = {};\n\t\tpreviousSize.width = currentPosition.width;\n\t\tpreviousSize.height = currentPosition.height;\n\t\tlog.i(\"previousSize \" + previousSize.width + \",\" + previousSize.height);\n\n\t\tcurrentPosition.x = x;\n\t\tcurrentPosition.y = y;\n\t\tcurrentPosition.width = width;\n\t\tcurrentPosition.height = height;\n\n\t\tif (width !== previousSize.width || height !== previousSize.height) {\n\t\t\tmraid.fireSizeChangeEvent(width, height);\n\t\t}\n\t};\n\n\tmraid.setDefaultPosition = function(x, y, width, height) {\n\t\tlog.i(\"mraid.setDefaultPosition \" + x + \",\" + y + \",\" + width + \",\"\t+ height);\n\t\tdefaultPosition.x = x;\n\t\tdefaultPosition.y = y;\n\t\tdefaultPosition.width = width;\n\t\tdefaultPosition.height = height;\n\t};\n\n\tmraid.setExpandSize = function(width, height) {\n\t\tlog.i(\"mraid.setExpandSize \" + width + \"x\" + height);\n\t\texpandProperties.width = width;\n\t\texpandProperties.height = height;\n\t};\n\n\tmraid.setMaxSize = function(width, height) {\n\t\tlog.i(\"mraid.setMaxSize \" + width + \"x\" + height);\n\t\tmaxSize.width = width;\n\t\tmaxSize.height = height;\n\t};\n\n\tmraid.setPlacementType = function(pt) {\n\t\tlog.i(\"mraid.setPlacementType \" + pt);\n\t\tplacementType = pt;\n\t};\n\n\tmraid.setScreenSize = function(width, height) {\n\t\tlog.i(\"mraid.setScreenSize \" + width + \"x\" + height);\n\t\tscreenSize.width = width;\n\t\tscreenSize.height = height;\n\t\tif (!isExpandPropertiesSet) {\n\t\t\texpandProperties.width = width;\n\t\t\texpandProperties.height = height;;\n\t\t}\n\t};\n\n\tmraid.setSupports = function(feature, supported) {\n\t\tlog.i(\"mraid.setSupports \" + feature + \" \" + supported);\n\t\tsupportedFeatures[feature] = supported;\n\t};\n\n\t// methods to fire events\n\n\tmraid.fireErrorEvent = function(message, action) {\n\t\tlog.i(\"mraid.fireErrorEvent \" + message + \" \" + action);\n\t\tfireEvent(mraid.EVENTS.ERROR, message, action);\n\t};\n\n\tmraid.fireReadyEvent = function() {\n\t\tlog.i(\"mraid.fireReadyEvent\");\n\t\tfireEvent(mraid.EVENTS.READY);\n\t};\n\n\tmraid.fireSizeChangeEvent = function(width, height) {\n\t\tlog.i(\"mraid.fireSizeChangeEvent \" + width + \"x\" + height);\n\t\tif (state !== mraid.STATES.LOADING) {\n\t\t\tfireEvent(mraid.EVENTS.SIZECHANGE, width, height);\n\t\t}\n\t};\n\n\tmraid.fireStateChangeEvent = function(newState) {\n\t\tlog.i(\"mraid.fireStateChangeEvent \" + newState);\n\t\tif (state !== newState) {\n\t\t\tstate = newState;\n\t\t\tfireEvent(mraid.EVENTS.STATECHANGE, state);\n\t\t}\n\t};\n\n\tmraid.fireViewableChangeEvent = function(newIsViewable) {\n\t\tlog.i(\"mraid.fireViewableChangeEvent \" + newIsViewable);\n\t\tif (isViewable !== newIsViewable) {\n\t\t\tisViewable = newIsViewable;\n\t\t\tfireEvent(mraid.EVENTS.VIEWABLECHANGE, isViewable);\n\t\t}\n\t};\n\n\t/***************************************************************************\n\t * internal helper methods\n\t **************************************************************************/\n\n\tfunction callNative(command) {\n\t\tvar iframe = document.createElement(\"IFRAME\");\n\t\tiframe.setAttribute(\"src\", \"mraid://\" + command);\n\t\tdocument.documentElement.appendChild(iframe);\n\t\tiframe.parentNode.removeChild(iframe);\n\t\tiframe = null;\n\t};\n\n\tfunction fireEvent(event) {\n\t\tvar args = Array.prototype.slice.call(arguments);\n\t\targs.shift();\n\t\tlog.i(\"fireEvent \" + event + \" [\" + args.toString() + \"]\");\n\t\tvar eventListeners = listeners[event];\n\t\tif (eventListeners) {\n\t\t\tvar len = eventListeners.length;\n\t\t\tlog.i(len + \" listener(s) found\");\n\t\t\tfor (var i = 0; i < len; i++) {\n\t\t\t\teventListeners[i].apply(null, args);\n\t\t\t}\n\t\t} else {\n\t\t\tlog.i(\"no listeners found\");\n\t\t}\n\t};\n\n\tfunction contains(value, array) {\n\t\tfor ( var i in array) {\n\t\t\tif (array[i] === value) {\n\t\t\t\treturn true;\n\t\t\t}\n\t\t}\n\t\treturn false;\n\t};\n\n\tmnRewardUser = function(mnType, mnValue) {\n\t\tlog.i(\"mnRewardUser\");\n\t\tmraid.rewardComplete();\n\t};\n\n\t// The action parameter is a string which is the name of the setter function\n\t// which called this function\n\t// (in other words, setExpandPropeties, setOrientationProperties, or\n\t// setResizeProperties).\n\t// It serves both as the key to get the the appropriate set of validating\n\t// functions from the allValidators object\n\t// as well as the action parameter of any error event that may be thrown.\n\tfunction validate(properties, action) {\n\t\tvar retval = true;\n\t\tvar validators = allValidators[action];\n\t\tfor (var prop in properties) {\n\t\t\tvar validator = validators[prop];\n\t\t\tvar value = properties[prop];\n\t\t\tif (validator && !validator(value)) {\n\t\t\t\tmraid.fireErrorEvent(\"Value of property \" + prop + \" (\" + value\t+ \") is invalid\", \"mraid.\" + action);\n\t\t\t\tretval = false;\n\t\t\t}\n\t\t}\n\t\treturn retval;\n\t};\n\n\tvar allValidators = {\n\t\t\"setExpandProperties\" : {\n\t\t\t// In MRAID 2.0, the only property in expandProperties we actually care about is useCustomClose.\n\t\t\t// Still, we\'ll do a basic sanity check on the width and height properties, too.\n\t\t\t\"width\" : function(width) {\n\t\t\t\treturn !isNaN(width);\n\t\t\t},\n\t\t\t\"height\" : function(height) {\n\t\t\t\treturn !isNaN(height);\n\t\t\t},\n\t\t\t\"useCustomClose\" : function(useCustomClose) {\n\t\t\t\treturn (typeof useCustomClose === \"boolean\");\n\t\t\t}\n\t\t},\n\t\t\"setOrientationProperties\" : {\n\t\t\t\"allowOrientationChange\" : function(allowOrientationChange) {\n\t\t\t\treturn (typeof allowOrientationChange === \"boolean\");\n\t\t\t},\n\t\t\t\"forceOrientation\" : function(forceOrientation) {\n\t\t\t\tvar validValues = [ \"portrait\", \"landscape\", \"none\" ];\n\t\t\t\treturn (typeof forceOrientation === \"string\" && validValues.indexOf(forceOrientation) !== -1);\n\t\t\t}\n\t\t},\n\t\t\"setResizeProperties\" : {\n\t\t\t\"width\" : function(width) {\n\t\t\t\treturn !isNaN(width) && 50 <= width;\n\t\t\t},\n\t\t\t\"height\" : function(height) {\n\t\t\t\treturn !isNaN(height) && 50 <= height;\n\t\t\t},\n\t\t\t\"offsetX\" : function(offsetX) {\n\t\t\t\treturn !isNaN(offsetX);\n\t\t\t},\n\t\t\t\"offsetY\" : function(offsetY) {\n\t\t\t\treturn !isNaN(offsetY);\n\t\t\t},\n\t\t\t\"customClosePosition\" : function(customClosePosition) {\n\t\t\t\tvar validPositions = [ \"top-left\", \"top-center\", \"top-right\",\n\t\t\t\t                       \"center\",\n\t\t\t\t                       \"bottom-left\", \"bottom-center\",\t\"bottom-right\" ];\n\t\t\t\treturn (typeof customClosePosition === \"string\" && validPositions.indexOf(customClosePosition) !== -1);\n\t\t\t},\n\t\t\t\"allowOffscreen\" : function(allowOffscreen) {\n\t\t\t\treturn (typeof allowOffscreen === \"boolean\");\n\t\t\t}\n\t\t}\n\t};\n\n    function isCloseRegionOnScreen(properties) {\n        log.d(\"isCloseRegionOnScreen\");\n        log.d(\"defaultPosition \" + defaultPosition.x + \" \" + defaultPosition.y);\n        log.d(\"offset \" + properties.offsetX + \" \" + properties.offsetY);\n\n        var resizeRect = {};\n        resizeRect.x = defaultPosition.x + properties.offsetX;\n        resizeRect.y = defaultPosition.y + properties.offsetY;\n        resizeRect.width = properties.width;\n        resizeRect.height = properties.height;\n        printRect(\"resizeRect\", resizeRect);\n\n\t\tvar customClosePosition = properties.hasOwnProperty(\"customClosePosition\") ?\n\t\t\t\tproperties.customClosePosition : resizeProperties.customClosePosition;\n        log.d(\"customClosePosition \" + customClosePosition);\n\n        var closeRect = { \"width\": 50, \"height\": 50 };\n\n        if (customClosePosition.search(\"left\") !== -1) {\n            closeRect.x = resizeRect.x;\n        } else if (customClosePosition.search(\"center\") !== -1) {\n            closeRect.x = resizeRect.x + (resizeRect.width / 2) - 25;\n        } else if (customClosePosition.search(\"right\") !== -1) {\n            closeRect.x = resizeRect.x + resizeRect.width - 50;\n        }\n\n        if (customClosePosition.search(\"top\") !== -1) {\n            closeRect.y = resizeRect.y;\n        } else if (customClosePosition === \"center\") {\n            closeRect.y = resizeRect.y + (resizeRect.height / 2) - 25;\n        } else if (customClosePosition.search(\"bottom\") !== -1) {\n            closeRect.y = resizeRect.y + resizeRect.height - 50;\n        }\n\n        var maxRect = { \"x\": 0, \"y\": 0 };\n        maxRect.width = maxSize.width;\n        maxRect.height = maxSize.height;\n\n        return isRectContained(maxRect, closeRect);\n    }\n\n    function fitResizeViewOnScreen(properties) {\n        log.d(\"fitResizeViewOnScreen\");\n        log.d(\"defaultPosition \" + defaultPosition.x + \" \" + defaultPosition.y);\n        log.d(\"offset \" + properties.offsetX + \" \" + properties.offsetY);\n\n        var resizeRect = {};\n        resizeRect.x = defaultPosition.x + properties.offsetX;\n        resizeRect.y = defaultPosition.y + properties.offsetY;\n        resizeRect.width = properties.width;\n        resizeRect.height = properties.height;\n        printRect(\"resizeRect\", resizeRect);\n\n        var maxRect = { \"x\": 0, \"y\": 0 };\n        maxRect.width = maxSize.width;\n        maxRect.height = maxSize.height;\n\n        var adjustments = { \"x\": 0, \"y\": 0 };\n\n        if (isRectContained(maxRect, resizeRect)) {\n            log.d(\"no adjustment necessary\");\n            return adjustments;\n        }\n\n        if (resizeRect.x < maxRect.x) {\n            adjustments.x = maxRect.x - resizeRect.x;\n        } else if ((resizeRect.x + resizeRect.width) > (maxRect.x + maxRect.width)) {\n            adjustments.x = (maxRect.x + maxRect.width) - (resizeRect.x + resizeRect.width);\n        }\n        log.d(\"adjustments.x \" + adjustments.x);\n\n        if (resizeRect.y < maxRect.y) {\n            adjustments.y = maxRect.y - resizeRect.y;\n        } else if ((resizeRect.y + resizeRect.height) > (maxRect.y + maxRect.height)) {\n            adjustments.y = (maxRect.y + maxRect.height) - (resizeRect.y + resizeRect.height);\n        }\n        log.d(\"adjustments.y \" + adjustments.y);\n\n        resizeRect.x = defaultPosition.x + properties.offsetX + adjustments.x;\n        resizeRect.y = defaultPosition.y + properties.offsetY + adjustments.y;\n        printRect(\"adjusted resizeRect\", resizeRect);\n\n        return adjustments;\n    }\n\n    function isRectContained(containingRect, containedRect) {\n        log.d(\"isRectContained\");\n        printRect(\"containingRect\", containingRect);\n        printRect(\"containedRect\", containedRect);\n        return (containedRect.x >= containingRect.x &&\n            (containedRect.x + containedRect.width) <= (containingRect.x + containingRect.width) &&\n            containedRect.y >= containingRect.y &&\n            (containedRect.y + containedRect.height) <= (containingRect.y + containingRect.height));\n    }\n\n    function printRect(label, rect) {\n        log.d(label +\n            \" [\" + rect.x + \",\" + rect.y + \"]\" +\n            \",[\" + (rect.x + rect.width) + \",\" + (rect.y + rect.height) + \"]\" +\n            \" (\" + rect.width + \"x\" + rect.height + \")\");\n    }\n\n\tmraid.dumpListeners = function() {\n\t\tvar nEvents = Object.keys(listeners).length;\n\t\tlog.i(\"dumping listeners (\" + nEvents + \" events)\");\n\t\tfor ( var event in listeners) {\n\t\t\tvar eventListeners = listeners[event];\n\t\t\tlog.i(\"  \" + event + \" contains \" + eventListeners.length + \" listeners\");\n\t\t\tfor (var i = 0; i < eventListeners.length; i++) {\n\t\t\t\tlog.i(\"    \" + eventListeners[i]);\n\t\t\t}\n\t\t}\n\t};\nmraid.success = function()\n{\nlog.i(\"mraid.success\");\n    if (state === STATES.LOADING ||\n        (state === STATES.DEFAULT && placementType === PLACEMENT_TYPES.INLINE) ||\n        state === STATES.HIDDEN) {\n        // do nothing\n        return;\n    }\n    callNative(\"success\");\n}\nmraid.replay = function()\n{\nlog.i(\"mraid.replay\");\ncallNative(\"replay\");\n};\n\tconsole.log(\"MRAID object loaded\");\n\n})();\n</script>"

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    .line 173
    iput-boolean p8, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    .line 174
    iput p4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->backgroundColor:I

    .line 176
    iput v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    .line 177
    iput-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z

    .line 178
    iput-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->useCustomClose:Z

    .line 179
    new-instance v0, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;

    invoke-direct {v0}, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->orientationProperties:Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;

    .line 180
    new-instance v0, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    invoke-direct {v0}, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    .line 181
    new-instance v0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    .line 183
    iput-object p6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    .line 184
    iput-object p7, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    .line 186
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 187
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDView$Size;

    invoke-direct {v0, p0, v5}, Lcom/upsight/mediation/mraid/MRAIDView$Size;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Lcom/upsight/mediation/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    .line 192
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDView$Size;

    invoke-direct {v0, p0, v5}, Lcom/upsight/mediation/mraid/MRAIDView$Size;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Lcom/upsight/mediation/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    .line 195
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/upsight/mediation/mraid/MRAIDView$1;

    invoke-direct {v2, p0}, Lcom/upsight/mediation/mraid/MRAIDView$1;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-direct {v0, p0, v5}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Lcom/upsight/mediation/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidWebChromeClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;

    .line 205
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {v0, p0, v5}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Lcom/upsight/mediation/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidWebViewClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    .line 207
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    .line 208
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    .line 211
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/mediation/mraid/internal/MRAIDHtmlProcessor;->processRawHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->htmlData:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->htmlData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDViewListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "supportedNativeFeatures"    # [Ljava/lang/String;
    .param p5, "listener"    # Lcom/upsight/mediation/mraid/MRAIDViewListener;
    .param p6, "nativeFeatureListener"    # Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    .prologue
    const/4 v4, 0x0

    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/upsight/mediation/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDViewListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;Z)V

    .line 158
    return-void
.end method

.method static synthetic access$1000(Lcom/upsight/mediation/mraid/MRAIDView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->closeFromExpanded(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/upsight/mediation/mraid/MRAIDView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->closeFromResized(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/upsight/mediation/mraid/MRAIDView;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->removeResizeView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->injectMraidJs(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/upsight/mediation/mraid/MRAIDView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/upsight/mediation/mraid/MRAIDView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingPart2:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/upsight/mediation/mraid/MRAIDView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingPart2:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->expandHelper()V

    return-void
.end method

.method static synthetic access$2300(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireStateChangeEvent()V

    return-void
.end method

.method static synthetic access$2400(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDViewListener;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->close()V

    return-void
.end method

.method static synthetic access$2600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/upsight/mediation/mraid/MRAIDView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setSupportedServices()V

    return-void
.end method

.method static synthetic access$2900(Lcom/upsight/mediation/mraid/MRAIDView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isLaidOut:Z

    return v0
.end method

.method static synthetic access$300(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;ZIIII)V
    .registers 7
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/upsight/mediation/mraid/MRAIDView;->onLayoutWebView(Landroid/webkit/WebView;ZIIII)V

    return-void
.end method

.method static synthetic access$3000(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setScreenSize()V

    return-void
.end method

.method static synthetic access$3100(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setMaxSize()V

    return-void
.end method

.method static synthetic access$3200(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setCurrentPosition()V

    return-void
.end method

.method static synthetic access$3300(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setDefaultPosition()V

    return-void
.end method

.method static synthetic access$3400(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireReadyEvent()V

    return-void
.end method

.method static synthetic access$3500(Lcom/upsight/mediation/mraid/MRAIDView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireViewableChangeEvent()V

    return-void
.end method

.method static synthetic access$3700(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/upsight/mediation/mraid/MRAIDView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->parseCommandUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/mediation/mraid/MRAIDView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setResizedViewPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/util/DisplayMetrics;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 52
    invoke-static {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/mediation/mraid/MRAIDView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 52
    iget v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    return v0
.end method

.method static synthetic access$902(Lcom/upsight/mediation/mraid/MRAIDView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    return p1
.end method

.method private addCloseRegion(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, -0x1000000

    const/4 v8, 0x0

    .line 935
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    .line 936
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 937
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    new-instance v4, Lcom/upsight/mediation/mraid/MRAIDView$10;

    invoke-direct {v4, p0}, Lcom/upsight/mediation/mraid/MRAIDView$10;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 944
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    new-instance v4, Lcom/upsight/mediation/mraid/MRAIDView$11;

    invoke-direct {v4, p0}, Lcom/upsight/mediation/mraid/MRAIDView$11;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 953
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v3, :cond_6f

    iget-boolean v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->useCustomClose:Z

    if-nez v3, :cond_6f

    .line 955
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    const-string v4, "/assets/drawable/close_button_normal.png"

    const-string v5, "close_button_normal"

    invoke-static {v3, v4, v5, v9}, Lcom/upsight/mediation/mraid/MRaidDrawables;->getDrawableForImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 956
    .local v0, "closeButtonNormalDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    const-string v4, "/assets/drawable/close_button_pressed.png"

    const-string v5, "close_button_pressed"

    invoke-static {v3, v4, v5, v9}, Lcom/upsight/mediation/mraid/MRaidDrawables;->getDrawableForImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 958
    .local v1, "closeButtonPressedDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 959
    .local v2, "states":Landroid/graphics/drawable/StateListDrawable;
    new-array v3, v10, [I

    const v4, -0x10100a7

    aput v4, v3, v8

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 960
    new-array v3, v10, [I

    const v4, 0x10100a7

    aput v4, v3, v8

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 962
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 963
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 966
    .end local v0    # "closeButtonNormalDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "closeButtonPressedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "states":Landroid/graphics/drawable/StateListDrawable;
    :cond_6f
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 967
    return-void
.end method

.method private applyOrientationProperties()V
    .registers 1

    .prologue
    .line 1531
    return-void
.end method

.method private calculateMaxSize()V
    .registers 10

    .prologue
    .line 1411
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1412
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 1413
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1414
    const-string v6, "MRAIDView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateMaxSize frame ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1415
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1414
    invoke-static {v6, v7}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 1417
    .local v2, "statusHeight":I
    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->contentViewTop:I

    .line 1418
    iget v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->contentViewTop:I

    sub-int v3, v6, v2

    .line 1419
    .local v3, "titleHeight":I
    const-string v6, "MRAIDView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateMaxSize statusHeight "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v6, "MRAIDView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateMaxSize titleHeight "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v6, "MRAIDView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateMaxSize contentViewTop "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/upsight/mediation/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1423
    .local v4, "width":I
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v6, v6, Lcom/upsight/mediation/mraid/MRAIDView$Size;->height:I

    iget v7, p0, Lcom/upsight/mediation/mraid/MRAIDView;->contentViewTop:I

    sub-int v1, v6, v7

    .line 1424
    .local v1, "height":I
    const-string v6, "MRAIDView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateMaxSize max size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v6, v6, Lcom/upsight/mediation/mraid/MRAIDView$Size;->width:I

    if-ne v4, v6, :cond_10b

    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v6, v6, Lcom/upsight/mediation/mraid/MRAIDView$Size;->height:I

    if-eq v1, v6, :cond_11a

    .line 1426
    :cond_10b
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iput v4, v6, Lcom/upsight/mediation/mraid/MRAIDView$Size;->width:I

    .line 1427
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iput v1, v6, Lcom/upsight/mediation/mraid/MRAIDView$Size;->height:I

    .line 1428
    iget-boolean v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v6, :cond_11a

    .line 1429
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setMaxSize()V

    .line 1432
    :cond_11a
    return-void
.end method

.method private calculatePosition(Z)V
    .registers 13
    .param p1, "isCurrentWebView"    # Z

    .prologue
    .line 1436
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 1438
    .local v1, "location":[I
    if-eqz p1, :cond_8d

    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    .line 1439
    .local v4, "view":Landroid/view/View;
    :goto_7
    if-eqz p1, :cond_90

    const-string v2, "current"

    .line 1442
    .local v2, "name":Ljava/lang/String;
    :goto_b
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1443
    const/4 v8, 0x0

    aget v6, v1, v8

    .line 1444
    .local v6, "x":I
    const/4 v8, 0x1

    aget v7, v1, v8

    .line 1445
    .local v7, "y":I
    const-string v8, "MRAIDView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculatePosition "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " locationOnScreen ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string v8, "MRAIDView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculatePosition "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " contentViewTop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/upsight/mediation/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget v8, p0, Lcom/upsight/mediation/mraid/MRAIDView;->contentViewTop:I

    if-ge v7, v8, :cond_94

    .line 1452
    const-string v8, "MRAIDView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculatePosition "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " y < contentViewTop, returning"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_8c
    :goto_8c
    return-void

    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_8d
    move-object v4, p0

    .line 1438
    goto/16 :goto_7

    .line 1439
    .restart local v4    # "view":Landroid/view/View;
    :cond_90
    const-string v2, "default"

    goto/16 :goto_b

    .line 1455
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    :cond_94
    iget v8, p0, Lcom/upsight/mediation/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v7, v8

    .line 1456
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1457
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1459
    .local v0, "height":I
    const-string v8, "MRAIDView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculatePosition "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " position ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    if-eqz p1, :cond_115

    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 1463
    .local v3, "position":Landroid/graphics/Rect;
    :goto_e9
    iget v8, v3, Landroid/graphics/Rect;->left:I

    if-ne v6, v8, :cond_fd

    iget v8, v3, Landroid/graphics/Rect;->top:I

    if-ne v7, v8, :cond_fd

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ne v5, v8, :cond_fd

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-eq v0, v8, :cond_8c

    .line 1464
    :cond_fd
    if-eqz p1, :cond_118

    .line 1465
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v6, v5

    add-int v10, v7, v0

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 1469
    :goto_10a
    iget-boolean v8, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v8, :cond_8c

    .line 1470
    if-eqz p1, :cond_124

    .line 1471
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setCurrentPosition()V

    goto/16 :goto_8c

    .line 1461
    .end local v3    # "position":Landroid/graphics/Rect;
    :cond_115
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_e9

    .line 1467
    .restart local v3    # "position":Landroid/graphics/Rect;
    :cond_118
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v6, v5

    add-int v10, v7, v0

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_10a

    .line 1473
    :cond_124
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setDefaultPosition()V

    goto/16 :goto_8c
.end method

.method private calculateScreenSize()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 1394
    invoke-virtual {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1395
    .local v2, "orientation":I
    if-ne v2, v1, :cond_6f

    .line 1396
    .local v1, "isPortrait":Z
    :goto_d
    const-string v5, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateScreenSize orientation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_71

    const-string v4, "portrait"

    :goto_1e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1398
    .local v3, "width":I
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1399
    .local v0, "height":I
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateScreenSize screen size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v4, v4, Lcom/upsight/mediation/mraid/MRAIDView$Size;->width:I

    if-ne v3, v4, :cond_5f

    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v4, v4, Lcom/upsight/mediation/mraid/MRAIDView$Size;->height:I

    if-eq v0, v4, :cond_6e

    .line 1401
    :cond_5f
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iput v3, v4, Lcom/upsight/mediation/mraid/MRAIDView$Size;->width:I

    .line 1402
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iput v0, v4, Lcom/upsight/mediation/mraid/MRAIDView$Size;->height:I

    .line 1403
    iget-boolean v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v4, :cond_6e

    .line 1404
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setScreenSize()V

    .line 1407
    :cond_6e
    return-void

    .line 1395
    .end local v0    # "height":I
    .end local v1    # "isPortrait":Z
    .end local v3    # "width":I
    :cond_6f
    const/4 v1, 0x0

    goto :goto_d

    .line 1396
    .restart local v1    # "isPortrait":Z
    :cond_71
    const-string v4, "landscape"

    goto :goto_1e
.end method

.method private close()V
    .registers 2

    .prologue
    .line 415
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->close(Z)V

    .line 416
    return-void
.end method

.method private close(Z)V
    .registers 5
    .param p1, "sendCallback"    # Z

    .prologue
    .line 398
    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDView$4;

    invoke-direct {v1, p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView$4;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    return-void
.end method

.method private closeFromExpanded(Z)V
    .registers 7
    .param p1, "sendCallback"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 793
    iget v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-ne v1, v4, :cond_49

    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v1, :cond_49

    .line 794
    const/4 v1, 0x4

    iput v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    .line 795
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->pauseWebView(Landroid/webkit/WebView;)V

    .line 799
    :cond_12
    :goto_12
    iput-boolean v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isClosing:Z

    .line 801
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 803
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 804
    .local v0, "rootView":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 805
    iput-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    .line 806
    iput-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    .line 807
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->restoreOriginalOrientation()V

    .line 808
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->restoreOriginalScreenState()V

    .line 810
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    if-nez v1, :cond_56

    .line 812
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 823
    :goto_3e
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/upsight/mediation/mraid/MRAIDView$8;

    invoke-direct {v2, p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView$8;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 832
    return-void

    .line 796
    .end local v0    # "rootView":Landroid/widget/FrameLayout;
    :cond_49
    iget v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_53

    iget v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 797
    :cond_53
    iput v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    goto :goto_12

    .line 815
    .restart local v0    # "rootView":Landroid/widget/FrameLayout;
    :cond_56
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 816
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 817
    iput-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    .line 818
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidWebChromeClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 819
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidWebViewClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 820
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    goto :goto_3e
.end method

.method private closeFromResized(Z)V
    .registers 4
    .param p1, "sendCallback"    # Z

    .prologue
    const/4 v0, 0x1

    .line 835
    iput v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    .line 836
    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isClosing:Z

    .line 837
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->removeResizeView()V

    .line 838
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 839
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDView$9;

    invoke-direct {v1, p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView$9;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 848
    return-void
.end method

.method private createCalendarEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "eventJSON"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCalendarEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_21

    .line 434
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V

    .line 436
    :cond_21
    return-void
.end method

.method private createWebView()Landroid/webkit/WebView;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 227
    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDView$2;

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/upsight/mediation/mraid/MRAIDView$2;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/content/Context;)V

    .line 268
    .local v1, "wv":Landroid/webkit/WebView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 273
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 274
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 275
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 276
    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 277
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 278
    new-instance v2, Lcom/upsight/mediation/mraid/MRAIDView$3;

    invoke-direct {v2, p0}, Lcom/upsight/mediation/mraid/MRAIDView$3;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 295
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 296
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 297
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_79

    .line 298
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/databases/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 300
    :cond_79
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidWebChromeClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 301
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidWebViewClient:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 309
    return-object v1
.end method

.method private expand(Ljava/lang/String;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 440
    const-string v3, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expand "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_32

    move-object v2, p1

    :goto_12
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-nez v2, :cond_31

    :cond_25
    iget-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-nez v2, :cond_35

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-eq v2, v5, :cond_35

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-eq v2, v6, :cond_35

    .line 509
    :cond_31
    :goto_31
    return-void

    .line 440
    :cond_32
    const-string v2, "(1-part)"

    goto :goto_12

    .line 452
    :cond_35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 453
    iget-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-nez v2, :cond_43

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-ne v2, v5, :cond_4c

    .line 454
    :cond_43
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2}, Lcom/upsight/mediation/mraid/MRAIDView;->removeView(Landroid/view/View;)V

    .line 458
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->expandHelper()V

    goto :goto_31

    .line 455
    :cond_4c
    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-ne v2, v6, :cond_48

    .line 456
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->removeResizeView()V

    goto :goto_48

    .line 467
    :cond_54
    :try_start_54
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_59} :catch_8e

    move-result-object p1

    .line 474
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 478
    :cond_7d
    move-object v1, p1

    .line 481
    .local v1, "finalUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/upsight/mediation/mraid/MRAIDView$6;

    invoke-direct {v3, p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView$6;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;Ljava/lang/String;)V

    const-string v4, "2-part-content"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_31

    .line 468
    .end local v1    # "finalUrl":Ljava/lang/String;
    :catch_8e
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_31
.end method

.method private expandHelper()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 734
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_8

    .line 735
    const/4 v0, 0x2

    iput v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    .line 739
    :cond_8
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->applyOrientationProperties()V

    .line 740
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->forceFullScreen()V

    .line 741
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    .line 742
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 743
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->useCustomClose:Z

    if-nez v0, :cond_2c

    .line 744
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    .line 745
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    .line 747
    :cond_2c
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingFromDefault:Z

    .line 750
    return-void
.end method

.method private fireReadyEvent()V
    .registers 3

    .prologue
    .line 1047
    const-string v0, "MRAIDView"

    const-string v1, "fireReadyEvent"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v0, "mraid.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method private fireStateChangeEvent()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 1056
    const-string v1, "MRAIDView"

    const-string v2, "fireStateChangeEvent"

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "loading"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "expanded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "resized"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hidden"

    aput-object v2, v0, v1

    .line 1058
    .local v0, "stateArray":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.fireStateChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method private fireViewableChangeEvent()V
    .registers 3

    .prologue
    .line 1062
    const-string v0, "MRAIDView"

    const-string v1, "fireViewableChangeEvent"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1064
    return-void
.end method

.method private forceFullScreen()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 859
    const-string v3, "MRAIDView"

    const-string v4, "forceFullScreen"

    invoke-static {v3, v4}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 866
    .local v1, "activity":Landroid/app/Activity;
    const/16 v3, -0x9

    iput v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->origTitleBarVisibility:I

    .line 870
    :try_start_10
    const-class v3, Landroid/app/Activity;

    const-string v4, "getActionBar"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 871
    .local v2, "getActionBarMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2c

    .line 872
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 873
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2c

    .line 874
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v3

    iput-boolean v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isActionBarShowing:Z

    .line 875
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_67

    .line 897
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "getActionBarMethod":Ljava/lang/reflect/Method;
    :cond_2c
    :goto_2c
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isActionBarShowing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isActionBarShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "origTitleBarVisibility "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/upsight/mediation/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-static {v5}, Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iput-boolean v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isForcingFullScreen:Z

    .line 905
    return-void

    .line 891
    :catch_67
    move-exception v3

    goto :goto_2c
.end method

.method private static getOrientationString(I)Ljava/lang/String;
    .registers 2
    .param p0, "orientation"    # I

    .prologue
    .line 1484
    packed-switch p0, :pswitch_data_10

    .line 1488
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 1485
    :pswitch_6
    const-string v0, "UNSPECIFIED"

    goto :goto_5

    .line 1486
    :pswitch_9
    const-string v0, "LANDSCAPE"

    goto :goto_5

    .line 1487
    :pswitch_c
    const-string v0, "PORTRAIT"

    goto :goto_5

    .line 1484
    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "fileURL"    # Ljava/lang/String;

    .prologue
    .line 701
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 702
    .local v2, "mLine":Ljava/lang/StringBuffer;
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, "urlElements":[Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v4, v5

    const-string v6, "android_asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 705
    :try_start_18
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    .line 706
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x4

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 709
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    :goto_36
    if-eqz v1, :cond_60

    .line 712
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_3f} :catch_40

    goto :goto_36

    .line 717
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_40
    move-exception v0

    .line 718
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error fetching file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 721
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    :goto_5f
    return-object v5

    .line 716
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_60
    :try_start_60
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_40

    goto :goto_5b

    .line 723
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_64
    const-string v5, "Unknown location to fetch file content"

    invoke-static {v5}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 726
    const-string v5, ""

    goto :goto_5f
.end method

.method private getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 661
    const-string v9, "file:///"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 662
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 696
    :cond_c
    :goto_c
    return-object v2

    .line 665
    :cond_d
    const/4 v2, 0x0

    .line 666
    .local v2, "content":Ljava/lang/String;
    const/4 v6, 0x0

    .line 668
    .local v6, "is":Ljava/io/InputStream;
    :try_start_f
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 669
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 670
    .local v7, "responseCode":I
    const-string v9, "MRAIDView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "response code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_bb

    .line 672
    const-string v9, "MRAIDView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getContentLength "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 674
    const/16 v9, 0x5dc

    new-array v0, v9, [B

    .line 676
    .local v0, "buf":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    .local v8, "sb":Ljava/lang/StringBuilder;
    :goto_63
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_9b

    .line 678
    new-instance v4, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v4, v0, v9, v3}, Ljava/lang/String;-><init>([BII)V

    .line 679
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_73} :catch_74
    .catchall {:try_start_f .. :try_end_73} :catchall_c8

    goto :goto_63

    .line 685
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v4    # "data":Ljava/lang/String;
    .end local v7    # "responseCode":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catch_74
    move-exception v5

    .line 686
    .local v5, "e":Ljava/io/IOException;
    :try_start_75
    const-string v9, "MRAIDView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStringFromUrl failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_75 .. :try_end_91} :catchall_c8

    .line 689
    if-eqz v6, :cond_c

    .line 690
    :try_start_93
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_98

    goto/16 :goto_c

    .line 692
    :catch_98
    move-exception v9

    goto/16 :goto_c

    .line 681
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v7    # "responseCode":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_9b
    :try_start_9b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    const-string v9, "MRAIDView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStringFromUrl ok, length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .end local v0    # "buf":[B
    .end local v3    # "count":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_bb
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_be} :catch_74
    .catchall {:try_start_9b .. :try_end_be} :catchall_c8

    .line 689
    if-eqz v6, :cond_c

    .line 690
    :try_start_c0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c5

    goto/16 :goto_c

    .line 692
    :catch_c5
    move-exception v9

    goto/16 :goto_c

    .line 688
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    :catchall_c8
    move-exception v9

    .line 689
    if-eqz v6, :cond_ce

    .line 690
    :try_start_cb
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 694
    :cond_ce
    :goto_ce
    throw v9

    .line 692
    :catch_cf
    move-exception v10

    goto :goto_ce
.end method

.method private static getVisibilityString(I)Ljava/lang/String;
    .registers 2
    .param p0, "visibility"    # I

    .prologue
    .line 924
    sparse-switch p0, :sswitch_data_10

    .line 928
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 925
    :sswitch_6
    const-string v0, "GONE"

    goto :goto_5

    .line 926
    :sswitch_9
    const-string v0, "INVISIBLE"

    goto :goto_5

    .line 927
    :sswitch_c
    const-string v0, "VISIBLE"

    goto :goto_5

    .line 924
    nop

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_c
        0x4 -> :sswitch_9
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method private injectMraidJs(Landroid/webkit/WebView;)V
    .registers 5
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    .line 1032
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectMraidJs ok "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method private onLayoutWebView(Landroid/webkit/WebView;ZIIII)V
    .registers 13
    .param p1, "wv"    # Landroid/webkit/WebView;
    .param p2, "changed"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1342
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    if-ne p1, v3, :cond_71

    move v0, v1

    .line 1343
    .local v0, "isCurrent":Z
    :goto_7
    const-string v4, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLayoutWebView "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-ne p1, v3, :cond_73

    const-string v3, "1 "

    :goto_1a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    if-nez v0, :cond_76

    .line 1346
    const-string v1, "MRAIDView"

    const-string v2, "onLayoutWebView ignored, not current"

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_70
    :goto_70
    return-void

    .end local v0    # "isCurrent":Z
    :cond_71
    move v0, v2

    .line 1342
    goto :goto_7

    .line 1343
    .restart local v0    # "isCurrent":Z
    :cond_73
    const-string v3, "2 "

    goto :goto_1a

    .line 1349
    :cond_76
    iget-boolean v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isForcingFullScreen:Z

    if-eqz v3, :cond_84

    .line 1350
    const-string v1, "MRAIDView"

    const-string v3, "onLayoutWebView ignored, isForcingFullScreen"

    invoke-static {v1, v3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iput-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isForcingFullScreen:Z

    goto :goto_70

    .line 1354
    :cond_84
    iget v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-eqz v3, :cond_8c

    iget v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-ne v3, v1, :cond_92

    .line 1355
    :cond_8c
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->calculateScreenSize()V

    .line 1356
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->calculateMaxSize()V

    .line 1360
    :cond_92
    iget-boolean v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isClosing:Z

    if-nez v3, :cond_b3

    .line 1361
    invoke-direct {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->calculatePosition(Z)V

    .line 1362
    iget-boolean v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v3, :cond_b3

    .line 1364
    iget-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b3

    .line 1365
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 1366
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setDefaultPosition()V

    .line 1371
    :cond_b3
    iget-boolean v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingFromDefault:Z

    if-eqz v3, :cond_70

    .line 1372
    iput-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingFromDefault:Z

    .line 1373
    iget-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v2, :cond_c1

    .line 1374
    iput v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    .line 1375
    iput-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isLaidOut:Z

    .line 1377
    :cond_c1
    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingPart2:Z

    if-nez v1, :cond_cf

    .line 1378
    const-string v1, "MRAIDView"

    const-string v2, "calling fireStateChangeEvent 1"

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1381
    :cond_cf
    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v1, :cond_dd

    .line 1382
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireReadyEvent()V

    .line 1383
    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z

    if-eqz v1, :cond_dd

    .line 1384
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireViewableChangeEvent()V

    .line 1387
    :cond_dd
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    if-eqz v1, :cond_70

    .line 1388
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    invoke-interface {v1, p0}, Lcom/upsight/mediation/mraid/MRAIDViewListener;->mraidViewExpand(Lcom/upsight/mediation/mraid/MRAIDView;)V

    goto :goto_70
.end method

.method private open(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 514
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_2f

    .line 517
    const-string v1, "sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 518
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v1, p1}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureSendSms(Ljava/lang/String;)V

    .line 528
    :cond_2f
    :goto_2f
    return-void

    .line 519
    :cond_30
    const-string v1, "tel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 520
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v1, p1}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCallTel(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_2f

    .line 525
    :catch_3e
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2f

    .line 522
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v1, p1}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureOpenBrowser(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_48} :catch_3e

    goto :goto_2f
.end method

.method private parseCommandUrl(Ljava/lang/String;)V
    .registers 16
    .param p1, "commandUrl"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v10, "MRAIDView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseCommandUrl "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v8, Lcom/upsight/mediation/mraid/internal/MRAIDParser;

    invoke-direct {v8}, Lcom/upsight/mediation/mraid/internal/MRAIDParser;-><init>()V

    .line 342
    .local v8, "parser":Lcom/upsight/mediation/mraid/internal/MRAIDParser;
    invoke-virtual {v8, p1}, Lcom/upsight/mediation/mraid/internal/MRAIDParser;->parseCommandUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 344
    .local v1, "commandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "command"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "command":Ljava/lang/String;
    const/4 v10, 0x5

    new-array v3, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "close"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const-string v11, "resize"

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const-string v11, "success"

    aput-object v11, v3, v10

    const/4 v10, 0x3

    const-string v11, "rewardComplete"

    aput-object v11, v3, v10

    const/4 v10, 0x4

    const-string v11, "replay"

    aput-object v11, v3, v10

    .line 354
    .local v3, "commandsWithNoParam":[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "createCalendarEvent"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "expand"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "open"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "playVideo"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "storePicture"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "useCustomClose"

    aput-object v11, v4, v10

    .line 363
    .local v4, "commandsWithString":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "setOrientationProperties"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "setResizeProperties"

    aput-object v11, v2, v10

    .line 369
    .local v2, "commandsWithMap":[Ljava/lang/String;
    :try_start_73
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v10, v0, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 371
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_8e
    :goto_8e
    return-void

    .line 372
    :cond_8f
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v0, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 375
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    const-string v10, "createCalendarEvent"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 376
    const-string v6, "eventJSON"

    .line 382
    .local v6, "key":Ljava/lang/String;
    :goto_b3
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 383
    .local v9, "val":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v7, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_c2} :catch_c3

    goto :goto_8e

    .line 388
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "val":Ljava/lang/String;
    :catch_c3
    move-exception v5

    .line 389
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8e

    .line 377
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    :cond_c8
    :try_start_c8
    const-string v10, "useCustomClose"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 378
    const-string v6, "useCustomClose"

    .restart local v6    # "key":Ljava/lang/String;
    goto :goto_b3

    .line 380
    .end local v6    # "key":Ljava/lang/String;
    :cond_d3
    const-string v6, "url"

    .restart local v6    # "key":Ljava/lang/String;
    goto :goto_b3

    .line 384
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_d6
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/util/Map;

    aput-object v13, v11, v12

    invoke-virtual {v10, v0, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 386
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v7, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_f9} :catch_c3

    goto :goto_8e
.end method

.method private pauseWebView(Landroid/webkit/WebView;)V
    .registers 5
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 1115
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_26

    .line 1119
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 1124
    :goto_25
    return-void

    .line 1121
    :cond_26
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_25
.end method

.method private playVideo(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 534
    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_27

    .line 536
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v1, p1}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_27} :catch_28

    .line 541
    :cond_27
    :goto_27
    return-void

    .line 538
    :catch_28
    move-exception v0

    .line 539
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_27
.end method

.method private px2dip(I)I
    .registers 4
    .param p1, "pixels"    # I

    .prologue
    .line 1067
    mul-int/lit16 v0, p1, 0xa0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v0, v1

    return v0
.end method

.method private removeCloseRegion(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 971
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 972
    return-void
.end method

.method private removeResizeView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 851
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 852
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 853
    .local v0, "rootView":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 854
    iput-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    .line 855
    iput-object v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    .line 856
    return-void
.end method

.method private replay()V
    .registers 2

    .prologue
    .line 1546
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->close(Z)V

    .line 1547
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDViewListener;->mraidReplayVideoPressed(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1548
    return-void
.end method

.method private resize()V
    .registers 9

    .prologue
    .line 545
    const-string v0, "MRAIDView-JS callback"

    const-string v1, "resize"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    if-nez v0, :cond_c

    .line 581
    :cond_b
    :goto_b
    return-void

    .line 551
    :cond_c
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v2, v1, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v3, v1, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v4, v1, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v5, v1, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->offsetY:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/upsight/mediation/mraid/MRAIDViewListener;->mraidViewResize(Lcom/upsight/mediation/mraid/MRAIDView;IIII)Z

    move-result v6

    .line 553
    .local v6, "isResizeOK":Z
    if-eqz v6, :cond_b

    .line 557
    const/4 v0, 0x3

    iput v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    .line 559
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5a

    .line 560
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    .line 561
    invoke-virtual {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->removeAllViews()V

    .line 562
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 563
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->useCustomClose:Z

    if-nez v0, :cond_48

    .line 564
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    .line 566
    :cond_48
    invoke-virtual {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 567
    .local v7, "rootView":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 569
    .end local v7    # "rootView":Landroid/widget/FrameLayout;
    :cond_5a
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->useCustomClose:Z

    if-nez v0, :cond_63

    .line 570
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    .line 572
    :cond_63
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setResizedViewSize()V

    .line 573
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setResizedViewPosition()V

    .line 575
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDView$7;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/mraid/MRAIDView$7;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private restoreOriginalOrientation()V
    .registers 1

    .prologue
    .line 1535
    return-void
.end method

.method private restoreOriginalScreenState()V
    .registers 5

    .prologue
    .line 908
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 915
    .local v1, "activity":Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isActionBarShowing:Z

    if-eqz v2, :cond_10

    .line 916
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 917
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 921
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_f
    :goto_f
    return-void

    .line 918
    :cond_10
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->titleBar:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 919
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->titleBar:Landroid/view/View;

    iget v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f
.end method

.method private rewardComplete()V
    .registers 4

    .prologue
    .line 419
    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewardComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDView$5;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/mraid/MRAIDView$5;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method private setCloseRegionPosition(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    .line 977
    const/4 v2, 0x1

    const/high16 v3, 0x42480000    # 50.0f

    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 978
    .local v1, "size":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 983
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v2, :cond_23

    .line 984
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 985
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1021
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    return-void

    .line 986
    :cond_23
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-ne p1, v2, :cond_1d

    .line 988
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v2, v2, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch v2, :pswitch_data_56

    .line 1004
    :goto_2e
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v2, v2, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch v2, :pswitch_data_68

    goto :goto_1d

    .line 1008
    :pswitch_36
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1d

    .line 991
    :pswitch_3a
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2e

    .line 996
    :pswitch_40
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2e

    .line 1000
    :pswitch_46
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2e

    .line 1011
    :pswitch_4a
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1d

    .line 1016
    :pswitch_50
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1d

    .line 988
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_40
        :pswitch_46
    .end packed-switch

    .line 1004
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_4a
        :pswitch_50
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method private setCurrentPosition()V
    .registers 8

    .prologue
    .line 1072
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 1073
    .local v2, "x":I
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1074
    .local v3, "y":I
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1075
    .local v1, "width":I
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1076
    .local v0, "height":I
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentPosition ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mraid.setCurrentPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method private setDefaultPosition()V
    .registers 8

    .prologue
    .line 1081
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 1082
    .local v2, "x":I
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1083
    .local v3, "y":I
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1084
    .local v1, "width":I
    iget-object v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1085
    .local v0, "height":I
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultPosition ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mraid.setDefaultPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method private setMaxSize()V
    .registers 6

    .prologue
    .line 1090
    const-string v2, "MRAIDView"

    const-string v3, "setMaxSize"

    invoke-static {v2, v3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v1, v2, Lcom/upsight/mediation/mraid/MRAIDView$Size;->width:I

    .line 1092
    .local v1, "width":I
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->maxSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v0, v2, Lcom/upsight/mediation/mraid/MRAIDView$Size;->height:I

    .line 1093
    .local v0, "height":I
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setMaxSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method private setOrientationProperties(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "allowOrientationChange"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 586
    .local v0, "allowOrientationChange":Z
    const-string v2, "forceOrientation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    .local v1, "forceOrientation":Ljava/lang/String;
    const-string v2, "MRAIDView-JS callback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOrientationProperties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->orientationProperties:Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v2, v2, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    if-ne v2, v0, :cond_46

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->orientationProperties:Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;

    iget v2, v2, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    .line 591
    invoke-static {v1}, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_5e

    .line 592
    :cond_46
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->orientationProperties:Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;

    iput-boolean v0, v2, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    .line 593
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->orientationProperties:Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;

    .line 594
    invoke-static {v1}, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    .line 595
    iget-boolean v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z

    if-nez v2, :cond_5b

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5e

    .line 596
    :cond_5b
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->applyOrientationProperties()V

    .line 599
    :cond_5e
    return-void
.end method

.method private setResizeProperties(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "width"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 604
    .local v5, "width":I
    const-string v6, "height"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 605
    .local v2, "height":I
    const-string v6, "offsetX"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 606
    .local v3, "offsetX":I
    const-string v6, "offsetY"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 607
    .local v4, "offsetY":I
    const-string v6, "customClosePosition"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 608
    .local v1, "customClosePosition":Ljava/lang/String;
    const-string v6, "allowOffscreen"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 609
    .local v0, "allowOffscreen":Z
    const-string v6, "MRAIDView-JS callback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setResizeProperties "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iput v5, v6, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->width:I

    .line 614
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iput v2, v6, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->height:I

    .line 615
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iput v3, v6, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->offsetX:I

    .line 616
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iput v4, v6, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->offsetY:I

    .line 617
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    .line 618
    invoke-static {v1}, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->customClosePositionFromString(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    .line 619
    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iput-boolean v0, v6, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->allowOffscreen:Z

    .line 620
    return-void
.end method

.method private setResizedViewPosition()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 764
    const-string v11, "MRAIDView"

    const-string v12, "setResizedViewPosition"

    invoke-static {v11, v12}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v11, :cond_d

    .line 790
    :cond_c
    :goto_c
    return-void

    .line 769
    :cond_d
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v8, v11, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->width:I

    .line 770
    .local v8, "widthInDip":I
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v1, v11, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->height:I

    .line 771
    .local v1, "heightInDip":I
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v3, v11, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->offsetX:I

    .line 772
    .local v3, "offsetXInDip":I
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v5, v11, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->offsetY:I

    .line 773
    .local v5, "offsetYInDip":I
    int-to-float v11, v8

    iget-object v12, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v7, v11

    .line 774
    .local v7, "width":I
    int-to-float v11, v1

    iget-object v12, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v0, v11

    .line 775
    .local v0, "height":I
    int-to-float v11, v3

    iget-object v12, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v2, v11

    .line 776
    .local v2, "offsetX":I
    int-to-float v11, v5

    iget-object v12, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v4, v11

    .line 777
    .local v4, "offsetY":I
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int v9, v11, v2

    .line 778
    .local v9, "x":I
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v10, v11, v4

    .line 779
    .local v10, "y":I
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 780
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 781
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 782
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    if-ne v9, v11, :cond_76

    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    if-ne v10, v11, :cond_76

    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-ne v7, v11, :cond_76

    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eq v0, v11, :cond_c

    .line 784
    :cond_76
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 785
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v10, v11, Landroid/graphics/Rect;->top:I

    .line 786
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int v12, v9, v7

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 787
    iget-object v11, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int v12, v10, v0

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 788
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setCurrentPosition()V

    goto/16 :goto_c
.end method

.method private setResizedViewSize()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 753
    const-string v5, "MRAIDView"

    const-string v6, "setResizedViewSize"

    invoke-static {v5, v6}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v5, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v4, v5, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->width:I

    .line 755
    .local v4, "widthInDip":I
    iget-object v5, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizeProperties:Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;

    iget v1, v5, Lcom/upsight/mediation/mraid/properties/MRAIDResizeProperties;->height:I

    .line 756
    .local v1, "heightInDip":I
    const-string v5, "MRAIDView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setResizedViewSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    int-to-float v5, v4

    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 758
    .local v3, "width":I
    int-to-float v5, v1

    iget-object v6, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v0, v5

    .line 759
    .local v0, "height":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 760
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    return-void
.end method

.method private setScreenSize()V
    .registers 6

    .prologue
    .line 1098
    const-string v2, "MRAIDView"

    const-string v3, "setScreenSize"

    invoke-static {v2, v3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v1, v2, Lcom/upsight/mediation/mraid/MRAIDView$Size;->width:I

    .line 1100
    .local v1, "width":I
    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->screenSize:Lcom/upsight/mediation/mraid/MRAIDView$Size;

    iget v0, v2, Lcom/upsight/mediation/mraid/MRAIDView$Size;->height:I

    .line 1101
    .local v0, "height":I
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScreenSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setScreenSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->px2dip(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method private setSupportedServices()V
    .registers 3

    .prologue
    .line 1106
    const-string v0, "MRAIDView"

    const-string v1, "setSupportedServices"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->isCalendarSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->isInlineVideoSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->isStorePictureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method private setViewable(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 1292
    if-nez p1, :cond_15

    const/4 v0, 0x1

    .line 1293
    .local v0, "isCurrentlyViewable":Z
    :goto_3
    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z

    if-eq v0, v1, :cond_14

    .line 1294
    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z

    .line 1295
    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isLaidOut:Z

    if-eqz v1, :cond_14

    .line 1296
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireViewableChangeEvent()V

    .line 1299
    :cond_14
    return-void

    .line 1292
    .end local v0    # "isCurrentlyViewable":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private storePicture(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 625
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 626
    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePicture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_27

    .line 628
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v1, p1}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_27} :catch_28

    .line 633
    :cond_27
    :goto_27
    return-void

    .line 630
    :catch_28
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_27
.end method

.method private success()V
    .registers 2

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDViewListener;->mraidViewAcceptPressed(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1541
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->close()V

    .line 1542
    return-void
.end method

.method private useCustomClose(Ljava/lang/String;)V
    .registers 5
    .param p1, "useCustomCloseString"    # Ljava/lang/String;

    .prologue
    .line 637
    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useCustomClose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->useCustomClose:Z

    .line 643
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->useCustomClose:Z

    if-eqz v0, :cond_2b

    .line 644
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2c

    .line 645
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->removeCloseRegion(Landroid/view/View;)V

    .line 650
    :cond_2b
    :goto_2b
    return-void

    .line 646
    :cond_2c
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2b

    .line 647
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->removeCloseRegion(Landroid/view/View;)V

    goto :goto_2b
.end method


# virtual methods
.method public injectJavaScript(Ljava/lang/String;)V
    .registers 5
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 1040
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1041
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1043
    :cond_1e
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1265
    const-string v0, "MRAIDView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1267
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1258
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1259
    const-string v1, "MRAIDView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_34

    const-string v0, "portrait"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1261
    return-void

    .line 1259
    :cond_34
    const-string v0, "landscape"

    goto :goto_17
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1271
    const-string v0, "MRAIDView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1273
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1304
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1305
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isForcingFullScreen:Z

    if-eqz v0, :cond_5e

    .line 1308
    const-string v0, "MRAIDView"

    const-string v1, "onLayout ignored"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_5d
    :goto_5d
    return-void

    .line 1311
    :cond_5e
    iget v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_67

    iget v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-ne v0, v5, :cond_6d

    .line 1312
    :cond_67
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->calculateScreenSize()V

    .line 1313
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->calculateMaxSize()V

    .line 1315
    :cond_6d
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isClosing:Z

    if-eqz v0, :cond_a9

    .line 1316
    iput-boolean v3, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isClosing:Z

    .line 1317
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 1318
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->setCurrentPosition()V

    .line 1322
    :goto_7f
    iget v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-ne v0, v5, :cond_8f

    if-eqz p1, :cond_8f

    .line 1323
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDView$12;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/mraid/MRAIDView$12;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1330
    :cond_8f
    iput-boolean v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isLaidOut:Z

    .line 1331
    iget v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_5d

    .line 1332
    iput v4, p0, Lcom/upsight/mediation/mraid/MRAIDView;->state:I

    .line 1333
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1334
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireReadyEvent()V

    .line 1335
    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z

    if-eqz v0, :cond_5d

    .line 1336
    invoke-direct {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->fireViewableChangeEvent()V

    goto :goto_5d

    .line 1320
    :cond_a9
    invoke-direct {p0, v3}, Lcom/upsight/mediation/mraid/MRAIDView;->calculatePosition(Z)V

    goto :goto_7f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 315
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 317
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1277
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1278
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-direct {p0, p2}, Lcom/upsight/mediation/mraid/MRAIDView;->setViewable(I)V

    .line 1280
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 1284
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 1285
    invoke-virtual {p0}, Lcom/upsight/mediation/mraid/MRAIDView;->getVisibility()I

    move-result v0

    .line 1286
    .local v0, "actualVisibility":I
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1287
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1286
    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->setViewable(I)V

    .line 1289
    return-void
.end method

.method public setOrientationConfig(I)V
    .registers 2
    .param p1, "rotateMode"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->rotateMode:I

    .line 222
    return-void
.end method

.method protected showAsInterstitial()V
    .registers 2

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->expand(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public updateContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "currentActivity":Landroid/app/Activity;
    move-object v1, p1

    .line 324
    check-cast v1, Landroid/app/Activity;

    .line 327
    .local v1, "newActivity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;

    .line 328
    return-void
.end method
