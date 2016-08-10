.class public Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightPartnerImpressionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;",
        "Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private ads:Lcom/google/gson/JsonArray;

.field private contentId:Ljava/lang/Integer;

.field private impressionId:Ljava/lang/String;

.field private partnerId:Ljava/lang/Integer;

.field private partnerName:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;

.field private testDevice:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "partnerId"    # Ljava/lang/Integer;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "streamId"    # Ljava/lang/String;
    .param p4, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerId:Ljava/lang/Integer;

    .line 191
    iput-object p2, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->scope:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamId:Ljava/lang/String;

    .line 193
    iput-object p4, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->contentId:Ljava/lang/Integer;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Lcom/google/gson/JsonArray;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->ads:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->testDevice:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->build()Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;
    .registers 5

    .prologue
    .line 238
    new-instance v0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;

    const-string v1, "upsight.partner.impression"

    new-instance v2, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setAds(Lorg/json/JSONArray;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
    .registers 3
    .param p1, "ads"    # Lorg/json/JSONArray;

    .prologue
    .line 200
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->toJsonArray(Lorg/json/JSONArray;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->ads:Lcom/google/gson/JsonArray;

    .line 201
    return-object p0
.end method

.method public setImpressionId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
    .registers 2
    .param p1, "impressionId"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->impressionId:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setPartnerName(Ljava/lang/String;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
    .registers 2
    .param p1, "partnerName"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerName:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
    .registers 2
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setTestDevice(Ljava/lang/Boolean;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
    .registers 2
    .param p1, "testDevice"    # Ljava/lang/Boolean;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->testDevice:Ljava/lang/Boolean;

    .line 233
    return-object p0
.end method
