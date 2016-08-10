.class public final Lcom/upsight/android/marketing/internal/content/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightPurchase;


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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static from(Lcom/google/gson/JsonElement;Lcom/google/gson/Gson;)Lcom/upsight/android/marketing/UpsightPurchase;
    .registers 5
    .param p0, "json"    # Lcom/google/gson/JsonElement;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    const-class v2, Lcom/upsight/android/marketing/internal/content/Purchase;

    invoke-virtual {p1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/UpsightPurchase;
    :try_end_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_8} :catch_9

    .line 44
    .local v1, "object":Lcom/upsight/android/marketing/UpsightPurchase;
    return-object v1

    .line 41
    .end local v1    # "object":Lcom/upsight/android/marketing/UpsightPurchase;
    :catch_9
    move-exception v0

    .line 42
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getProduct()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/Purchase;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/upsight/android/marketing/internal/content/Purchase;->quantity:I

    return v0
.end method
