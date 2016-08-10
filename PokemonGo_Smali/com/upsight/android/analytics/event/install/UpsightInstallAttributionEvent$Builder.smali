.class public Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightInstallAttributionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;",
        "Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private attributionCampaign:Ljava/lang/String;

.field private attributionCreative:Ljava/lang/String;

.field private attributionSource:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionCreative:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->build()Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;
    .registers 5

    .prologue
    .line 168
    new-instance v0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;

    const-string v1, "upsight.install.attribution"

    new-instance v2, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setAttributionCampaign(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;
    .registers 2
    .param p1, "attributionCampaign"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionCampaign:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setAttributionCreative(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;
    .registers 2
    .param p1, "attributionCreative"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionCreative:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setAttributionSource(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;
    .registers 2
    .param p1, "attributionSource"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->attributionSource:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;
    .registers 2
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->streamId:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;
    .registers 2
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 155
    return-object p0
.end method
