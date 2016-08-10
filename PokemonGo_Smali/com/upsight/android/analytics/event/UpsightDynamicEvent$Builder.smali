.class public final Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
.super Ljava/lang/Object;
.source "UpsightDynamicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final JSON_PARSER:Lcom/google/gson/JsonParser;


# instance fields
.field private identifiers:Ljava/lang/String;

.field private publisherData:Lcom/google/gson/JsonObject;

.field private final type:Ljava/lang/String;

.field private upsightData:Lcom/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->JSON_PARSER:Lcom/google/gson/JsonParser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->publisherData:Lcom/google/gson/JsonObject;

    .line 28
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    .line 33
    iput-object p1, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->type:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/UpsightDynamicEvent$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/upsight/android/analytics/event/UpsightDynamicEvent$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private build()Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
    .registers 6

    .prologue
    .line 80
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent;

    iget-object v1, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->identifiers:Ljava/lang/String;

    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->publisherData:Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method private deepCopy(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .registers 4
    .param p1, "source"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "jsonString":Ljava/lang/String;
    sget-object v1, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->JSON_PARSER:Lcom/google/gson/JsonParser;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public putPublisherData(Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .registers 3
    .param p1, "jsonNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->deepCopy(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->publisherData:Lcom/google/gson/JsonObject;

    .line 57
    return-object p0
.end method

.method public putUpsightData(Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .registers 3
    .param p1, "jsonNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->deepCopy(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    .line 68
    return-object p0
.end method

.method public final record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
    .registers 5
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->build()Lcom/upsight/android/analytics/event/UpsightDynamicEvent;

    move-result-object v1

    .line 73
    .local v1, "result":Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
    const-string v2, "com.upsight.extension.analytics"

    .line 74
    invoke-virtual {p1, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 75
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V

    .line 76
    return-object v1
.end method

.method public setDynamicIdentifiers(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;->identifiers:Ljava/lang/String;

    .line 46
    return-object p0
.end method
