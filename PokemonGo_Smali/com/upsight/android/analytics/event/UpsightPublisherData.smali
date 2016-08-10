.class public Lcom/upsight/android/analytics/event/UpsightPublisherData;
.super Ljava/lang/Object;
.source "UpsightPublisherData.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;,
        Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;
    }
.end annotation


# instance fields
.field private final mDataMap:Lcom/google/gson/JsonObject;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    # getter for: Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->access$200(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;Lcom/upsight/android/analytics/event/UpsightPublisherData$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;-><init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    if-ne p0, p1, :cond_5

    .line 208
    :cond_4
    :goto_4
    return v1

    .line 202
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 203
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 206
    check-cast v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .line 208
    .local v0, "eventData":Lcom/upsight/android/analytics/event/UpsightPublisherData;
    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    iget-object v4, v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    if-nez v3, :cond_24

    goto :goto_4
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
