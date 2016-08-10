.class public final Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "UpsightRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final IDENTIFIERS_KEY:Ljava/lang/String; = "identifiers"

.field private static final LOCALE_KEY:Ljava/lang/String; = "locale"

.field private static final OPT_OUT_KEY:Ljava/lang/String; = "opt_out"

.field private static final REQUEST_TS_KEY:Ljava/lang/String; = "request_ts"

.field private static final SESSIONS_KEY:Ljava/lang/String; = "sessions"

.field private static final SESSION_TYPE_ADAPTER:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;->GSON:Lcom/google/gson/Gson;

    .line 111
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session$DefaultTypeAdapter;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session$DefaultTypeAdapter;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;->SESSION_TYPE_ADAPTER:Lcom/google/gson/TypeAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
    .registers 5
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be deserialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)V
    .registers 14
    .param p1, "writer"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 122
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v7

    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->availableKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "key":Ljava/lang/String;
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->getValueFor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 124
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_f

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 126
    sget-object v8, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v8, v6}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_f

    .line 130
    .end local v0    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_32
    const-string v7, "request_ts"

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 131
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mRequestTs:J
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 133
    const-string v7, "opt_out"

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 134
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mOptOut:Z
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Z

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 136
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v4

    .line 137
    .local v4, "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    if-eqz v4, :cond_62

    .line 138
    invoke-virtual {v4}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "nameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 140
    const-string v7, "identifiers"

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 141
    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 145
    .end local v3    # "nameString":Ljava/lang/String;
    :cond_62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 146
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_7a

    .line 147
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "localeString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 149
    const-string v7, "locale"

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 150
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 154
    .end local v2    # "localeString":Ljava/lang/String;
    :cond_7a
    const-string v7, "sessions"

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 155
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 156
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_88
    if-ge v7, v9, :cond_94

    aget-object v5, v8, v7

    .line 157
    .local v5, "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    sget-object v10, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;->SESSION_TYPE_ADAPTER:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v10, p1, v5}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 156
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 159
    .end local v5    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    :cond_94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 161
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 162
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
    .line 108
    check-cast p2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)V

    return-void
.end method
