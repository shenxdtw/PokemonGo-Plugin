.class public Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightMonetizationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;",
        "Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private cookie:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private iapBundle:Lcom/google/gson/JsonObject;

.field private price:Ljava/lang/Double;

.field private product:Ljava/lang/String;

.field private quantity:Ljava/lang/Integer;

.field private resolution:Ljava/lang/String;

.field private store:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;

.field private totalPrice:Ljava/lang/Double;


# direct methods
.method protected constructor <init>(Ljava/lang/Double;Ljava/lang/String;)V
    .registers 3
    .param p1, "totalPrice"    # Ljava/lang/Double;
    .param p2, "currency"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->totalPrice:Ljava/lang/Double;

    .line 224
    iput-object p2, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->currency:Ljava/lang/String;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->product:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->price:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->iapBundle:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->store:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->build()Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;
    .registers 5

    .prologue
    .line 310
    new-instance v0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;

    const-string v1, "upsight.monetization"

    new-instance v2, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->cookie:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public setIapBundle(Lorg/json/JSONObject;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 3
    .param p1, "iapBundle"    # Lorg/json/JSONObject;

    .prologue
    .line 272
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->toJsonObject(Lorg/json/JSONObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->iapBundle:Lcom/google/gson/JsonObject;

    .line 273
    return-object p0
.end method

.method public setPrice(Ljava/lang/Double;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->price:Ljava/lang/Double;

    .line 248
    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->product:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setQuantity(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->quantity:Ljava/lang/Integer;

    .line 305
    return-object p0
.end method

.method public setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->resolution:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public setStore(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "store"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->store:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamId:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .registers 2
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 281
    return-object p0
.end method
