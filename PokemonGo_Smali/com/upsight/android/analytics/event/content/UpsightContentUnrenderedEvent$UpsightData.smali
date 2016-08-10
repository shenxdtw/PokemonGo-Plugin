.class Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightContentUnrenderedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field campaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "campaign_id"
    .end annotation
.end field

.field contentProvider:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_provider"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field scope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
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
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->contentProvider:Lcom/google/gson/JsonObject;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->contentProvider:Lcom/google/gson/JsonObject;

    .line 64
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->campaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    .line 65
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 66
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 67
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->scope:Ljava/lang/String;

    .line 68
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->id:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentProvider()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->contentProvider:Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->fromJsonObject(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
