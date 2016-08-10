.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
.super Ljava/lang/Object;
.source "UpsightRequest.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$DefaultTypeAdapter;
    }
.end annotation


# instance fields
.field private mInstallTs:J

.field private final mJsonParser:Lcom/google/gson/JsonParser;

.field private mOptOut:Z

.field private mRequestTs:J

.field private mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

.field private mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/google/gson/JsonParser;Lcom/upsight/android/analytics/internal/session/Clock;)V
    .registers 9
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    .param p3, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p4, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 74
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mJsonParser:Lcom/google/gson/JsonParser;

    .line 75
    const-string v0, "install_ts"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mInstallTs:J

    .line 76
    iget-object v0, p2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->getSessions(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .line 77
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get(Lcom/upsight/android/UpsightContext;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mOptOut:Z

    .line 78
    invoke-interface {p4}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mRequestTs:J

    .line 79
    iget-object v0, p2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->schema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)J
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mRequestTs:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mOptOut:Z

    return v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    return-object v0
.end method

.method private getSessions(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    .registers 10
    .param p1, "batch"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .prologue
    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v3, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;>;"
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 91
    .local v1, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v0

    .line 92
    .local v0, "event":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .line 94
    .local v2, "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    if-nez v2, :cond_3f

    .line 95
    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .end local v2    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mInstallTs:J

    invoke-direct {v2, v0, v6, v7}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;-><init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;J)V

    .line 96
    .restart local v2    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3f
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mJsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v2, v0, v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->addEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/google/gson/JsonParser;)V

    goto :goto_d

    .line 101
    .end local v0    # "event":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .end local v1    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    .end local v2    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    :cond_45
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    return-object v4
.end method
