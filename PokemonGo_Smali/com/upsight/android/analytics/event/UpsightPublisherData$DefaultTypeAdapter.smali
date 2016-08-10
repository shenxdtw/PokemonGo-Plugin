.class public final Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "UpsightPublisherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightPublisherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSON_PARSER:Lcom/google/gson/JsonParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;->JSON_PARSER:Lcom/google/gson/JsonParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .registers 4
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    sget-object v1, Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;->JSON_PARSER:Lcom/google/gson/JsonParser;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-virtual {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .registers 4
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    # getter for: Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;
    invoke-static {p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData;->access$000(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    .line 39
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p2, Lcom/upsight/android/analytics/event/UpsightPublisherData;

    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-void
.end method
