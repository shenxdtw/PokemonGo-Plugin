.class Lcom/upsight/android/unity/UpsightPlugin$13;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->recordAttributionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$campaign:Ljava/lang/String;

.field final synthetic val$creative:Ljava/lang/String;

.field final synthetic val$properties:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$campaign:Ljava/lang/String;

    iput-object p3, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$creative:Ljava/lang/String;

    iput-object p4, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$source:Ljava/lang/String;

    iput-object p5, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$properties:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 414
    invoke-static {}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;->createBuilder()Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$campaign:Ljava/lang/String;

    .line 415
    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->setAttributionCampaign(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$creative:Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->setAttributionCreative(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$source:Ljava/lang/String;

    .line 417
    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->setAttributionSource(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$properties:Ljava/lang/String;

    .line 418
    # invokes: Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightPlugin;->access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 419
    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 420
    return-void
.end method
