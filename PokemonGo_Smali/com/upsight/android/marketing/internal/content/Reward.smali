.class public final Lcom/upsight/android/marketing/internal/content/Reward;
.super Ljava/lang/Object;
.source "Reward.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightReward;


# instance fields
.field product:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product"
    .end annotation
.end field

.field quantity:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quantity"
    .end annotation
.end field

.field signatureData:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature_data"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static from(Lcom/google/gson/JsonElement;Lcom/google/gson/Gson;)Lcom/upsight/android/marketing/UpsightReward;
    .registers 5
    .param p0, "json"    # Lcom/google/gson/JsonElement;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    const-class v2, Lcom/upsight/android/marketing/internal/content/Reward;

    invoke-virtual {p1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/UpsightReward;
    :try_end_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_8} :catch_9

    .line 52
    .local v1, "object":Lcom/upsight/android/marketing/UpsightReward;
    return-object v1

    .line 49
    .end local v1    # "object":Lcom/upsight/android/marketing/UpsightReward;
    :catch_9
    move-exception v0

    .line 50
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getProduct()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/Reward;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/upsight/android/marketing/internal/content/Reward;->quantity:I

    return v0
.end method

.method public getSignatureData()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/Reward;->signatureData:Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->fromJsonObject(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
