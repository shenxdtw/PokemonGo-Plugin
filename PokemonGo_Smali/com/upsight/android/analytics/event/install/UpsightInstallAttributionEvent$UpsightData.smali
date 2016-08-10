.class Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightInstallAttributionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field attributionCampaign:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attribution_campaign"
    .end annotation
.end field

.field attributionCreative:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attribution_creative"
    .end annotation
.end field

.field attributionSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attribution_source"
    .end annotation
.end field

.field streamId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_id"
    .end annotation
.end field

.field streamStartTs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_start_ts"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionCampaign:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->attributionCampaign:Ljava/lang/String;

    .line 58
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionCreative:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->attributionCreative:Ljava/lang/String;

    .line 59
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionSource:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->attributionSource:Ljava/lang/String;

    .line 60
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 61
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getAttributionCampaign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->attributionCampaign:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionCreative()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->attributionCreative:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->attributionSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
