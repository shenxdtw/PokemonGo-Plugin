.class public Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/iap/InAppBillingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;
    }
.end annotation


# static fields
.field private static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field private static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field private static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field private static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field private static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field private static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field private static final BILLING_RESPONSE_RESULT_NOT_FOUND:I = 0x3e8

.field private static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field private static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field private static final BILLING_SERVICE_VERSION:I = 0x3

.field static final ENABLE_VERBOSE_LOGS:Z = false

.field private static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field private static final PACKAGE_NAME_BASE:Ljava/lang/String; = "com.niantic"

.field private static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field private static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field private static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field private static final UNKNOWN_CURRENCY_STRING:Ljava/lang/String; = "UNKNOWN"

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;


# instance fields
.field private billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private clientConnected:Z

.field private connectionInProgress:Z

.field private final context:Landroid/content/Context;

.field private currentPurchasableItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

.field private itemBeingPurchased:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private purchaseSupported:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private transactionsInProgress:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    .line 118
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;

    const-class v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->log:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 126
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 127
    iput-boolean v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    .line 129
    iput v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 130
    iput-boolean v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 131
    iput-boolean v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 132
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "checkedPackageName":Ljava/lang/String;
    const-string v1, "com.niantic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 367
    const-string v1, "ERROR"

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    .line 372
    :goto_23
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    .line 373
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    .line 374
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    .line 376
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectToBillingService()V

    .line 377
    return-void

    .line 369
    :cond_37
    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    goto :goto_23
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/Collection;)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->notifyPurchasableItemsResult(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Lcom/nianticlabs/nia/iap/PurchaseResult;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    return-void
.end method

.method static synthetic access$500(Landroid/os/Bundle;)I
    .registers 2
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$608(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)I
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    return v0
.end method

.method static synthetic access$700(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    return-void
.end method

.method static synthetic access$900(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    return-void
.end method

.method private connectToBillingService()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 414
    iget-boolean v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    if-eqz v2, :cond_6

    .line 483
    :goto_5
    return-void

    .line 418
    :cond_6
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v2, :cond_e

    .line 421
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    goto :goto_5

    .line 425
    :cond_e
    iput-boolean v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 426
    new-instance v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    invoke-direct {v2, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 474
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    .line 478
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 479
    .local v0, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 480
    :cond_36
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    .line 482
    :cond_39
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_5
.end method

.method private finalizeConnectionResult()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 768
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v1, :cond_11

    .line 769
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-interface {v1, v0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->onConnectionStateChanged(Z)V

    .line 771
    :cond_11
    return-void
.end method

.method private finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    .registers 3
    .param p1, "result"    # Lcom/nianticlabs/nia/iap/PurchaseResult;

    .prologue
    .line 781
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 782
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    .line 786
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v0, :cond_12

    .line 787
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->purchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 791
    :cond_12
    return-void
.end method

.method public static getInstance()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 796
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 799
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getResponseCodeFromObject(Ljava/lang/Object;)I
    .registers 3
    .param p0, "responseObject"    # Ljava/lang/Object;

    .prologue
    .line 802
    if-nez p0, :cond_4

    .line 804
    const/4 v0, 0x0

    .line 814
    .end local p0    # "responseObject":Ljava/lang/Object;
    :goto_3
    return v0

    .line 806
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 807
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "responseObject":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 809
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_f
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1b

    .line 810
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "responseObject":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_3

    .line 814
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_1b
    const/4 v0, 0x6

    goto :goto_3
.end method

.method private handlePurchaseErrorResult(I)Z
    .registers 4
    .param p1, "resultCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 737
    packed-switch p1, :pswitch_data_2e

    .line 761
    :pswitch_4
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 763
    :goto_9
    const/4 v0, 0x1

    :pswitch_a
    return v0

    .line 742
    :pswitch_b
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_9

    .line 746
    :pswitch_11
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_9

    .line 750
    :pswitch_17
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_9

    .line 756
    :pswitch_1d
    new-instance v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    invoke-direct {v1, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 757
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_9

    .line 737
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_11
        :pswitch_17
        :pswitch_4
        :pswitch_4
        :pswitch_1d
    .end packed-switch
.end method

.method private launchPurchaseActivity(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 579
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method private maybeDisconnectBillingService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 494
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    if-gtz v0, :cond_d

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    if-eqz v0, :cond_e

    .line 508
    :cond_d
    :goto_d
    return-void

    .line 502
    :cond_e
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_19

    .line 503
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 505
    :cond_19
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 506
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    goto :goto_d
.end method

.method private notifyPurchasableItemsResult(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticlabs/nia/iap/PurchasableItemDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "purchasableItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nianticlabs/nia/iap/PurchasableItemDetails;>;"
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v0, :cond_9

    .line 776
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->purchasableItemsResult(Ljava/util/Collection;)V

    .line 778
    :cond_9
    return-void
.end method

.method private processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "activityResultCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "purchaseData"    # Ljava/lang/String;
    .param p4, "dataSignature"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3e8

    .line 635
    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 636
    .local v5, "purchasedItem":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 638
    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v6, :cond_c

    .line 710
    :cond_b
    :goto_b
    return-void

    .line 642
    :cond_c
    if-eq p2, v7, :cond_14

    .line 643
    invoke-direct {p0, p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->handlePurchaseErrorResult(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 646
    :cond_14
    if-nez p1, :cond_1c

    .line 648
    sget-object v6, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_b

    .line 651
    :cond_1c
    const/4 v6, -0x1

    if-eq p1, v6, :cond_25

    .line 653
    sget-object v6, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_b

    .line 656
    :cond_25
    if-eq p2, v7, :cond_2b

    if-eqz p3, :cond_2b

    if-nez p4, :cond_31

    .line 663
    :cond_2b
    sget-object v6, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_b

    .line 667
    :cond_31
    const-string v0, "UNKNOWN"

    .line 668
    .local v0, "currency":Ljava/lang/String;
    const/4 v4, 0x0

    .line 669
    .local v4, "productId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 670
    .local v3, "pricePaidE6":I
    if-eqz v5, :cond_4d

    .line 671
    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;

    .line 672
    .local v1, "itemDetails":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    if-eqz v1, :cond_4d

    .line 673
    invoke-virtual {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 674
    invoke-virtual {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-virtual {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getPriceE6()I

    move-result v3

    .line 678
    .end local v1    # "itemDetails":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    :cond_4d
    if-nez v4, :cond_5d

    .line 681
    invoke-static {p3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->fromJson(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;

    move-result-object v2

    .line 682
    .local v2, "parsedPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    if-eqz v2, :cond_59

    .line 683
    invoke-virtual {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 685
    :cond_59
    if-nez v4, :cond_5d

    .line 686
    const-string v4, "unknown"

    .line 703
    .end local v2    # "parsedPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    :cond_5d
    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v6, p3, p4, v0, v3}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->ProcessReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_b
.end method


# virtual methods
.method public forwardedOnActivityResult(ILandroid/content/Intent;)V
    .registers 9
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 610
    if-eqz p2, :cond_1d

    .line 611
    invoke-static {p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 612
    .local v3, "responseCode":I
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, "dataSignature":Ljava/lang/String;
    :goto_12
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 627
    return-void

    .line 616
    .end local v3    # "responseCode":I
    .end local v4    # "purchaseData":Ljava/lang/String;
    .end local v5    # "dataSignature":Ljava/lang/String;
    :cond_1d
    const/16 v3, 0x3e8

    .line 617
    .restart local v3    # "responseCode":I
    const/4 v4, 0x0

    .line 618
    .restart local v4    # "purchaseData":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "dataSignature":Ljava/lang/String;
    goto :goto_12
.end method

.method public getPurchasableItems(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "itemIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->isBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 516
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->notifyPurchasableItemsResult(Ljava/util/Collection;)V

    .line 521
    :goto_d
    return-void

    .line 520
    :cond_e
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d
.end method

.method public isBillingAvailable()Z
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isTransactionInProgress()Z
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 397
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    .line 398
    return-void
.end method

.method public onProcessedGoogleBillingTransaction(ZLjava/lang/String;)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 717
    if-nez p1, :cond_8

    .line 719
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 734
    :goto_7
    return-void

    .line 722
    :cond_8
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_12

    .line 724
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_7

    .line 727
    :cond_12
    if-nez p2, :cond_1a

    .line 729
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_7

    .line 733
    :cond_1a
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;

    invoke-direct {v0, p0, p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 389
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectToBillingService()V

    .line 390
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 531
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 532
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->isBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 534
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 575
    :cond_11
    :goto_11
    return-void

    .line 538
    :cond_12
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 540
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_11

    .line 546
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    const-string v4, "inapp"

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_4b

    move-result-object v6

    .line 558
    .local v6, "buyIntentBundle":Landroid/os/Bundle;
    const-string v0, "BUY_INTENT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 559
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v7

    .line 560
    .local v7, "buyIntentResult":I
    invoke-direct {p0, v7}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->handlePurchaseErrorResult(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 563
    if-nez v9, :cond_52

    .line 565
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_11

    .line 552
    .end local v6    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v7    # "buyIntentResult":I
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_4b
    move-exception v8

    .line 554
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_11

    .line 569
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v6    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v7    # "buyIntentResult":I
    .restart local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_52
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 570
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 574
    :goto_59
    invoke-direct {p0, v9}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->launchPurchaseActivity(Landroid/app/PendingIntent;)V

    goto :goto_11

    .line 572
    :cond_5d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    goto :goto_59
.end method

.method public setDelegate(Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;)V
    .registers 2
    .param p1, "delegate"    # Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    .line 382
    return-void
.end method

.method public startBuyIntent(Landroid/app/Activity;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 589
    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 590
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2719

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 589
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_15
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_15} :catch_16

    .line 600
    :goto_15
    return-void

    .line 594
    :catch_16
    move-exception v7

    .line 596
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    iput-object v8, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 597
    iput-object v8, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 598
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_15
.end method
