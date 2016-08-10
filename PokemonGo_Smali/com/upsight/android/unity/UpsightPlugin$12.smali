.class Lcom/upsight/android/unity/UpsightPlugin$12;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->recordGooglePlayPurchase(ILjava/lang/String;DDLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$inAppDataSignature:Ljava/lang/String;

.field final synthetic val$inAppPurchaseData:Ljava/lang/String;

.field final synthetic val$price:D

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$properties:Ljava/lang/String;

.field final synthetic val$quantity:I

.field final synthetic val$reponseCode:I

.field final synthetic val$totalPrice:D


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V
    .registers 13
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$properties:Ljava/lang/String;

    iput p3, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$reponseCode:I

    iput-object p4, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$inAppPurchaseData:Ljava/lang/String;

    iput-object p5, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$inAppDataSignature:Ljava/lang/String;

    iput p6, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$quantity:I

    iput-object p7, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$currency:Ljava/lang/String;

    iput-wide p8, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$price:D

    iput-wide p10, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$totalPrice:D

    iput-object p12, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$product:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 393
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    .line 394
    .local v0, "builder":Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$properties:Ljava/lang/String;

    # invokes: Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightPlugin;->access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 397
    :try_start_e
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v9, "responseData":Landroid/content/Intent;
    const-string v1, "RESPONSE_CODE"

    iget v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$reponseCode:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v1, "INAPP_PURCHASE_DATA"

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$inAppPurchaseData:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "INAPP_DATA_SIGNATURE"

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$inAppDataSignature:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$quantity:I

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$currency:Ljava/lang/String;

    iget-wide v4, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$price:D

    iget-wide v6, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$totalPrice:D

    iget-object v8, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$product:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v10

    invoke-static/range {v1 .. v10}, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;->trackPurchase(Lcom/upsight/android/UpsightContext;ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    :try_end_3d
    .catch Lcom/upsight/android/UpsightException; {:try_start_e .. :try_end_3d} :catch_3e

    .line 406
    .end local v9    # "responseData":Landroid/content/Intent;
    :goto_3d
    return-void

    .line 402
    :catch_3e
    move-exception v11

    .line 403
    .local v11, "e":Lcom/upsight/android/UpsightException;
    const-string v1, "Upsight-Unity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recordGooglePlayPurchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/upsight/android/UpsightException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v11}, Lcom/upsight/android/UpsightException;->printStackTrace()V

    goto :goto_3d
.end method
