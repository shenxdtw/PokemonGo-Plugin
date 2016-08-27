.class public Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;


# static fields
.field public static final CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.dispatcher"

.field static final DISPATCHER_CONFIGURATION_MAX_SESSIONS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Dispatcher"


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field private mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

.field private mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

.field private volatile mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mExpiredRouters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLaunched:Z

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mPendingRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

.field private mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

.field private mUnroutedRecords:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/AnalyticsContext;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/squareup/otto/Bus;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 10
    .param p1, "context"    # Lcom/upsight/android/analytics/internal/AnalyticsContext;
    .param p2, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p3, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p4, "configParser"    # Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;
    .param p5, "routerBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;
    .param p6, "schemaSelectorBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .param p7, "bus"    # Lcom/squareup/otto/Bus;
    .param p8, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 119
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

    .line 120
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 121
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 122
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

    .line 123
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    .line 124
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    .line 125
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mBus:Lcom/squareup/otto/Bus;

    .line 126
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private applyConfiguration(Ljava/lang/String;)Z
    .registers 13
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;

    move-result-object v0

    .line 260
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    if-nez v0, :cond_9

    .line 295
    :goto_8
    return v6

    .line 264
    :cond_9
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->isValid()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 265
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v8, "Dispatcher"

    const-string v9, "Incoming configuration is not valid"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 269
    :cond_1b
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    invoke-virtual {v0, v6}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    move v6, v7

    .line 270
    goto :goto_8

    .line 272
    :cond_25
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 274
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 275
    .local v2, "expiredRouters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 276
    .local v1, "currentRouter":Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;
    if-eqz v2, :cond_35

    if-eqz v1, :cond_35

    .line 277
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishRouting()V

    .line 281
    :cond_35
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getIdentifierConfig()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->buildSelectorByName(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    move-result-object v3

    .line 282
    .local v3, "selectorByName":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getIdentifierConfig()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->buildSelectorByType(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    move-result-object v4

    .line 283
    .local v4, "selectorByType":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getRoutingConfig()Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    move-result-object v8

    invoke-virtual {v6, v8, v3, v4, p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;->build(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;)Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    move-result-object v6

    iput-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 285
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 286
    .local v5, "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v5, :cond_6d

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    if-eqz v6, :cond_6d

    .line 287
    :goto_5d
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6d

    .line 288
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    invoke-direct {p0, v6}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    goto :goto_5d

    .line 293
    :cond_6d
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCreatedRecords()V

    move v6, v7

    .line 295
    goto :goto_8
.end method

.method private applyDefaultConfiguration()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/AnalyticsContext;->getDefaultDispatcherConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    .line 249
    return-void
.end method

.method private fetchCreatedRecords()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 147
    return-void
.end method

.method private fetchCurrentConfig()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 221
    return-void
.end method

.method private isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z
    .registers 4
    .param p1, "configuration"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Session;->getSessionNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getSessionNumberCreated()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .registers 9
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

    invoke-virtual {v2, p1}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 311
    :goto_7
    return-object v0

    .line 308
    :catch_8
    move-exception v1

    .line 309
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Dispatcher"

    const-string v4, "Could not apply incoming config"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .registers 7
    .param p1, "storedRecord"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 166
    sget-object v3, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->Created:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getAction()Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 167
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v3, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 184
    :cond_11
    :goto_11
    return-void

    .line 172
    :cond_12
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 173
    .local v0, "currentRouter":Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 174
    .local v1, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-nez v0, :cond_24

    .line 175
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 176
    .local v2, "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 177
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 179
    .end local v2    # "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    :cond_24
    if-eqz v1, :cond_11

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 180
    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->routeEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 181
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method


# virtual methods
.method public handle(Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->terminate()V

    .line 385
    return-void
.end method

.method public hasPendingRecords()Z
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 379
    .local v0, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public launch()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    if-eqz v0, :cond_6

    .line 406
    :goto_5
    return-void

    .line 394
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 397
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 398
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 399
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 400
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 401
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 402
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 403
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 405
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCurrentConfig()V

    goto :goto_5
.end method

.method public onConfigurationCreated(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)V
    .registers 4
    .param p1, "config"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 225
    const-string v0, "upsight.configuration.dispatcher"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 226
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 227
    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    .line 229
    :cond_19
    return-void
.end method

.method public onDataStoreRecordCreated(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .registers 2
    .param p1, "storedRecord"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    .line 158
    return-void
.end method

.method public onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V
    .registers 9
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "isSuccessful"    # Z
    .param p3, "isTrashed"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 325
    if-eqz p2, :cond_25

    .line 326
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->fromSuccess(Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    move-result-object v1

    .line 331
    .local v1, "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    :goto_a
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v2, v1, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 343
    if-nez p2, :cond_18

    if-eqz p3, :cond_1d

    .line 344
    :cond_18
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v2, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 347
    :cond_1d
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 348
    .local v0, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v0, :cond_24

    .line 349
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 351
    :cond_24
    return-void

    .line 328
    .end local v0    # "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    .end local v1    # "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    :cond_25
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->fromFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    move-result-object v1

    .restart local v1    # "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    goto :goto_a
.end method

.method public onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .registers 4
    .param p1, "response"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$4;

    invoke-direct {v1, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$4;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, p1, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 366
    return-void
.end method

.method public onRoutingFinished(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V
    .registers 3
    .param p1, "rm"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 317
    .local v0, "expiredRouters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;>;"
    if-eqz v0, :cond_7

    .line 318
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 320
    :cond_7
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    if-eqz v0, :cond_11

    .line 415
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishRouting()V

    .line 416
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 418
    :cond_11
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v0, :cond_1c

    .line 419
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 420
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 422
    :cond_1c
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 423
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 424
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 425
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 426
    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 429
    return-void
.end method
