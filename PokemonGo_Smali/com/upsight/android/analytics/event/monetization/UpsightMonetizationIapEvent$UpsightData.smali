.class Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightMonetizationIapEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;
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
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->product:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->product:Ljava/lang/String;

    .line 90
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->totalPrice:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    .line 91
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 92
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->price:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->price:Ljava/lang/Double;

    .line 93
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->currency:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->currency:Ljava/lang/String;

    .line 94
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->cookie:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->cookie:Ljava/lang/String;

    .line 95
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->iapBundle:Lcom/google/gson/JsonObject;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->iapBundle:Lcom/google/gson/JsonObject;

    .line 96
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 97
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->resolution:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$800(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->resolution:Ljava/lang/String;

    .line 98
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->store:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$900(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->store:Ljava/lang/String;

    .line 99
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->quantity:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$1000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->quantity:Ljava/lang/Integer;

    .line 100
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getIapBundle()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->iapBundle:Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->fromJsonObject(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method
