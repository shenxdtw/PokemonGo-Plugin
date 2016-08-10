.class Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightMonetizationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field cookie:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cookie"
    .end annotation
.end field

.field currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field iapBundle:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iap_bundle"
    .end annotation
.end field

.field price:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field product:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product"
    .end annotation
.end field

.field quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quantity"
    .end annotation
.end field

.field resolution:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution"
    .end annotation
.end field

.field store:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "store"
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

.field totalPrice:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_price"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->product:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->product:Ljava/lang/String;

    .line 85
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->totalPrice:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    .line 86
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 87
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->price:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->price:Ljava/lang/Double;

    .line 88
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->currency:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->currency:Ljava/lang/String;

    .line 89
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->cookie:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->cookie:Ljava/lang/String;

    .line 90
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->iapBundle:Lcom/google/gson/JsonObject;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->iapBundle:Lcom/google/gson/JsonObject;

    .line 91
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 92
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->resolution:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$800(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->resolution:Ljava/lang/String;

    .line 93
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->store:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$900(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->store:Ljava/lang/String;

    .line 94
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->quantity:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$1000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->quantity:Ljava/lang/Integer;

    .line 95
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getIapBundle()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->iapBundle:Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->fromJsonObject(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method
