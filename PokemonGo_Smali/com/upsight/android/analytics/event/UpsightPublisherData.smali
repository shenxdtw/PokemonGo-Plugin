.class public Lcom/upsight/android/analytics/event/UpsightPublisherData;
.super Ljava/lang/Object;
.source "UpsightPublisherData.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    using = Lcom/upsight/android/analytics/event/UpsightPublisherData$Deserializer;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    using = Lcom/upsight/android/analytics/event/UpsightPublisherData$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/UpsightPublisherData$1;,
        Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;,
        Lcom/upsight/android/analytics/event/UpsightPublisherData$Deserializer;,
        Lcom/upsight/android/analytics/event/UpsightPublisherData$Serializer;
    }
.end annotation


# instance fields
.field private final mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    # getter for: Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->access$200(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;Lcom/upsight/android/analytics/event/UpsightPublisherData$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;-><init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-ne p0, p1, :cond_5

    .line 225
    :cond_4
    :goto_4
    return v1

    .line 219
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 220
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 223
    check-cast v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .line 225
    .local v0, "eventData":Lcom/upsight/android/analytics/event/UpsightPublisherData;
    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v4, v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v3, :cond_24

    goto :goto_4
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
