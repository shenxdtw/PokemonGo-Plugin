.class public Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightContentViewEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent;",
        "Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private ads:Lcom/google/gson/JsonArray;

.field private contentId:Ljava/lang/Integer;

.field private impressionId:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;

.field private testDevice:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .param p1, "streamId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->streamId:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->contentId:Ljava/lang/Integer;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Lcom/google/gson/JsonArray;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->ads:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->testDevice:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->build()Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent;
    .registers 5

    .prologue
    .line 204
    new-instance v0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent;

    const-string v1, "upsight.content.view"

    new-instance v2, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setAds(Lorg/json/JSONArray;)Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;
    .registers 3
    .param p1, "ads"    # Lorg/json/JSONArray;

    .prologue
    .line 166
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->toJsonArray(Lorg/json/JSONArray;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->ads:Lcom/google/gson/JsonArray;

    .line 167
    return-object p0
.end method

.method public setImpressionId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;
    .registers 2
    .param p1, "impressionId"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->impressionId:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;
    .registers 2
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->scope:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;
    .registers 2
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setTestDevice(Ljava/lang/Boolean;)Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;
    .registers 2
    .param p1, "testDevice"    # Ljava/lang/Boolean;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->testDevice:Ljava/lang/Boolean;

    .line 199
    return-object p0
.end method
