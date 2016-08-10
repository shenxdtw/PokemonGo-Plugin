.class public Lcom/upsight/android/unity/BillboardHandler;
.super Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;
.source "BillboardHandler.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "UpsightBillboardHandler"

.field private static mCurrentScope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;-><init>(Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method public static getCurrentScope()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onAttach(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
    .registers 4
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onAttach(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;

    move-result-object v0

    .line 38
    .local v0, "params":Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
    if-eqz v0, :cond_d

    .line 39
    sput-object p1, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    .line 40
    const-string v1, "onBillboardAppear"

    invoke-static {v1, p1}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_d
    return-object v0
.end method

.method public onDetach()V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onDetach()V

    .line 49
    const-string v0, "UpsightBillboardHandler"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "onBillboardDismiss"

    sget-object v1, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public onNextView()V
    .registers 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onNextView()V

    .line 59
    const-string v0, "UpsightBillboardHandler"

    const-string v1, "onNextView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onPurchases(Ljava/util/List;)V
    .registers 9
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightPurchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightPurchase;>;"
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onPurchases(Ljava/util/List;)V

    .line 66
    const-string v3, "UpsightBillboardHandler"

    const-string v4, "onPurchases"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/UpsightPurchase;

    .line 70
    .local v2, "p":Lcom/upsight/android/marketing/UpsightPurchase;
    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v1, "json":Lorg/json/JSONObject;
    const-string v4, "productIdentifier"

    invoke-interface {v2}, Lcom/upsight/android/marketing/UpsightPurchase;->getProduct()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v4, "quantity"

    invoke-interface {v2}, Lcom/upsight/android/marketing/UpsightPurchase;->getQuantity()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v4, "billboardScope"

    sget-object v5, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v4, "billboardDidReceivePurchase"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_41} :catch_42

    goto :goto_e

    .line 76
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_42
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "UpsightBillboardHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating JSON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "p":Lcom/upsight/android/marketing/UpsightPurchase;
    :cond_60
    return-void
.end method

.method public onRewards(Ljava/util/List;)V
    .registers 9
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightReward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightReward;>;"
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;->onRewards(Ljava/util/List;)V

    .line 86
    const-string v3, "UpsightBillboardHandler"

    const-string v4, "onRewards"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/UpsightReward;

    .line 90
    .local v2, "r":Lcom/upsight/android/marketing/UpsightReward;
    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v1, "json":Lorg/json/JSONObject;
    const-string v4, "productIdentifier"

    invoke-interface {v2}, Lcom/upsight/android/marketing/UpsightReward;->getProduct()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v4, "quantity"

    invoke-interface {v2}, Lcom/upsight/android/marketing/UpsightReward;->getQuantity()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v4, "signatureData"

    invoke-interface {v2}, Lcom/upsight/android/marketing/UpsightReward;->getSignatureData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v4, "billboardScope"

    sget-object v5, Lcom/upsight/android/unity/BillboardHandler;->mCurrentScope:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v4, "billboardDidReceiveReward"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4a} :catch_4b

    goto :goto_e

    .line 97
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_4b
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "UpsightBillboardHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating JSON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "r":Lcom/upsight/android/marketing/UpsightReward;
    :cond_69
    return-void
.end method
