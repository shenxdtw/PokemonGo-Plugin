.class public Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightCampaignClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent;",
        "Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private adGameId:Ljava/lang/Integer;

.field private adTypeId:Ljava/lang/Integer;

.field private ads:Lcom/google/gson/JsonArray;

.field private campaignId:Ljava/lang/Integer;

.field private contentId:Ljava/lang/Integer;

.field private contentTypeId:Ljava/lang/Integer;

.field private creativeId:Ljava/lang/Integer;

.field private impressionId:Ljava/lang/String;

.field private ordinal:Ljava/lang/Integer;

.field private scope:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;

.field private testDevice:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "streamId"    # Ljava/lang/String;
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .param p3, "creativeId"    # Ljava/lang/Integer;
    .param p4, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->streamId:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->campaignId:Ljava/lang/Integer;

    .line 248
    iput-object p3, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->creativeId:Ljava/lang/Integer;

    .line 249
    iput-object p4, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->contentId:Ljava/lang/Integer;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->ordinal:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->testDevice:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->contentTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Lcom/google/gson/JsonArray;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->ads:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->adTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->adGameId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .registers 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->build()Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent;
    .registers 5

    .prologue
    .line 326
    new-instance v0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent;

    const-string v1, "upsight.campaign.click"

    new-instance v2, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setAdGameId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "adGameId"    # Ljava/lang/Integer;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->adGameId:Ljava/lang/Integer;

    .line 289
    return-object p0
.end method

.method public setAdTypeId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "adTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->adTypeId:Ljava/lang/Integer;

    .line 281
    return-object p0
.end method

.method public setAds(Lorg/json/JSONArray;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 3
    .param p1, "ads"    # Lorg/json/JSONArray;

    .prologue
    .line 272
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->toJsonArray(Lorg/json/JSONArray;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->ads:Lcom/google/gson/JsonArray;

    .line 273
    return-object p0
.end method

.method public setContentTypeId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "contentTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->contentTypeId:Ljava/lang/Integer;

    .line 321
    return-object p0
.end method

.method public setImpressionId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "impressionId"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->impressionId:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public setOrdinal(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "ordinal"    # Ljava/lang/Integer;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->ordinal:Ljava/lang/Integer;

    .line 257
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->scope:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public setTestDevice(Ljava/lang/Boolean;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;
    .registers 2
    .param p1, "testDevice"    # Ljava/lang/Boolean;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->testDevice:Ljava/lang/Boolean;

    .line 313
    return-object p0
.end method
