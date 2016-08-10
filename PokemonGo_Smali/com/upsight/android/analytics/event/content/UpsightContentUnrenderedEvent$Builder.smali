.class public Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightContentUnrenderedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;",
        "Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private campaignId:Ljava/lang/Integer;

.field private contentProvider:Lcom/google/gson/JsonObject;

.field private id:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "contentProvider"    # Lorg/json/JSONObject;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 142
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->toJsonObject(Lorg/json/JSONObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->contentProvider:Lcom/google/gson/JsonObject;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->contentProvider:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->build()Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;
    .registers 5

    .prologue
    .line 187
    new-instance v0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;

    const-string v1, "upsight.content.unrendered"

    new-instance v2, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .registers 2
    .param p1, "campaignId"    # Ljava/lang/Integer;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->campaignId:Ljava/lang/Integer;

    .line 150
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->id:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .registers 2
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->scope:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .registers 2
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamId:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .registers 2
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 166
    return-object p0
.end method
