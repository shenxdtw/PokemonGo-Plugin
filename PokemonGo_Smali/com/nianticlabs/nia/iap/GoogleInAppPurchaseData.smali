.class final Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
.super Ljava/lang/Object;
.source "GoogleInAppPurchaseData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleInAppPurchaseData"


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private purchaseState:Ljava/lang/String;

.field private purchaseTime:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromJson(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    .registers 7
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v2, "jObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;

    invoke-direct {v1}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;-><init>()V

    .line 20
    .local v1, "googleInAppPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    const-string v3, "orderId"

    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->stringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->orderId:Ljava/lang/String;

    .line 21
    const-string v3, "packageName"

    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->stringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->packageName:Ljava/lang/String;

    .line 22
    const-string v3, "productId"

    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->stringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->productId:Ljava/lang/String;

    .line 23
    const-string v3, "purchaseTime"

    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->longFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseTime:J

    .line 24
    const-string v3, "purchaseState"

    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->stringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseState:Ljava/lang/String;

    .line 25
    const-string v3, "developerPayload"

    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->stringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->developerPayload:Ljava/lang/String;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 30
    .end local v1    # "googleInAppPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    :goto_3a
    return-object v1

    .line 27
    :catch_3b
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "GoogleInAppPurchaseData"

    const-string v4, "Failed to parse GoogleInAppPurchaseData: %s"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method private static longFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 6
    .param p0, "jObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v2

    .line 45
    :goto_4
    return-wide v2

    .line 44
    :catch_5
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    const-wide/16 v2, 0x0

    goto :goto_4
.end method

.method private static stringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "jObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 37
    :goto_4
    return-object v1

    .line 36
    :catch_5
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, ""

    goto :goto_4
.end method


# virtual methods
.method getDeveloperPayload()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method getOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->productId:Ljava/lang/String;

    return-object v0
.end method

.method getPurchaseState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseState:Ljava/lang/String;

    return-object v0
.end method

.method getPurchaseTime()J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseTime:J

    return-wide v0
.end method
