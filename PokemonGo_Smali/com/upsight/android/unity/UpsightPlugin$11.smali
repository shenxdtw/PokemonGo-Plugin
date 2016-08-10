.class Lcom/upsight/android/unity/UpsightPlugin$11;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->recordMonetizationEvent(DLjava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$price:D

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$properties:Ljava/lang/String;

.field final synthetic val$quantity:I

.field final synthetic val$resolution:Ljava/lang/String;

.field final synthetic val$totalPrice:D


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;I)V
    .registers 11
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-wide p2, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$totalPrice:D

    iput-object p4, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$currency:Ljava/lang/String;

    iput-object p5, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$properties:Ljava/lang/String;

    iput-object p6, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$product:Ljava/lang/String;

    iput-wide p7, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$price:D

    iput-object p9, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$resolution:Ljava/lang/String;

    iput p10, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$quantity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 368
    iget-wide v2, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$totalPrice:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$currency:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;->createBuilder(Ljava/lang/Double;Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    move-result-object v0

    .line 369
    .local v0, "builder":Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$properties:Ljava/lang/String;

    # invokes: Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightPlugin;->access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    .line 371
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$product:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 372
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setProduct(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 374
    :cond_1e
    iget-wide v2, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$price:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2f

    .line 375
    iget-wide v2, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setPrice(Ljava/lang/Double;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 377
    :cond_2f
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$resolution:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 378
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$resolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 380
    :cond_38
    iget v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$quantity:I

    if-lez v1, :cond_45

    .line 381
    iget v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->val$quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setQuantity(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 383
    :cond_45
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$11;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 384
    return-void
.end method
