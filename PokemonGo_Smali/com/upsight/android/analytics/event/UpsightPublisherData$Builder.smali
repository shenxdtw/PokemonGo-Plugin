.class public Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
.super Ljava/lang/Object;
.source "UpsightPublisherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightPublisherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mDataMap:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/google/gson/JsonObject;)V
    .registers 2
    .param p1, "objectNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    .line 60
    return-void
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .registers 3

    .prologue
    .line 183
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;-><init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;Lcom/upsight/android/analytics/event/UpsightPublisherData$1;)V

    return-object v0
.end method

.method public put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 7
    .param p1, "data"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 169
    if-eqz p1, :cond_2c

    .line 170
    # getter for: Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;->access$000(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    iget-object v4, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-virtual {v4, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_e

    .line 176
    .end local v0    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    :cond_2c
    return-object p0
.end method

.method public put(Ljava/lang/String;C)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 141
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_f
    return-object p0
.end method

.method public put(Ljava/lang/String;D)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 127
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 129
    :cond_f
    return-object p0
.end method

.method public put(Ljava/lang/String;F)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 115
    :cond_f
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 85
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 87
    :cond_f
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 99
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 101
    :cond_f
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_11

    .line 155
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_11
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 71
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    :cond_f
    return-object p0
.end method
