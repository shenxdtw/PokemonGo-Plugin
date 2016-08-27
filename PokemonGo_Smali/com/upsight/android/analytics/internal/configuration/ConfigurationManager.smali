.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    }
.end annotation


# static fields
.field public static final CONFIGURATION_RESPONSE_SUBTYPE:Ljava/lang/String; = "upsight.configuration"

.field public static final CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.configurationManager"

.field private static final LOG_TAG:Ljava/lang/String; = "Configurator"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mIsLaunched:Z

.field private mIsOutOfSync:Z

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

.field private mSyncAction:Lrx/functions/Action0;

.field private final mUpsight:Lcom/upsight/android/UpsightContext;

.field private final mWorker:Lrx/Scheduler$Worker;

.field private mWorkerSubscription:Lrx/Subscription;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;Lrx/Scheduler;Lcom/squareup/otto/Bus;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 9
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p3, "responseParser"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
    .param p4, "managerConfigParser"    # Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .param p6, "bus"    # Lcom/squareup/otto/Bus;
    .param p7, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 227
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    .line 117
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 118
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 119
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    .line 120
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    .line 121
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mBus:Lcom/squareup/otto/Bus;

    .line 122
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 123
    invoke-virtual {p5}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/UpsightContext;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private declared-synchronized applyConfiguration(Ljava/lang/String;)Z
    .registers 16
    .param p1, "jsonConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 189
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v7

    .line 191
    .local v7, "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->isValid()Z

    move-result v0

    if-nez v0, :cond_20

    .line 192
    :cond_11
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Incoming config is invalid"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_9c
    .catchall {:try_start_3 .. :try_end_1d} :catchall_af

    move v0, v10

    .line 220
    .end local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :goto_1e
    monitor-exit p0

    return v0

    .line 196
    .restart local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    invoke-virtual {v7, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 197
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Current config is equals to incoming config, rejecting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    .line 198
    goto :goto_1e

    .line 201
    :cond_36
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_53

    .line 202
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Stop config.expired recording scheduler"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 207
    :cond_53
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    if-eqz v0, :cond_99

    const-wide/16 v2, 0x0

    .line 209
    .local v2, "initialDelay":J
    :goto_59
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule recording of config.expired every "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v12, v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, mIsOutOfSync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    iget-wide v4, v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    .line 215
    iput-object v7, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move v0, v9

    .line 217
    goto :goto_1e

    .line 207
    .end local v2    # "initialDelay":J
    :cond_99
    iget-wide v2, v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_9b} :catch_9c
    .catchall {:try_start_20 .. :try_end_9b} :catchall_af

    goto :goto_59

    .line 218
    .end local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :catch_9c
    move-exception v8

    .line 219
    .local v8, "e":Ljava/io/IOException;
    :try_start_9d
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Could not parse incoming configuration"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ac
    .catchall {:try_start_9d .. :try_end_ac} :catchall_af

    move v0, v10

    .line 220
    goto/16 :goto_1e

    .line 189
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_af
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private applyDefaultConfiguration()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 170
    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/upsight/android/analytics/R$raw;->configurator_config:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "config":Ljava/lang/String;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Configurator"

    const-string v4, "Apply default configurations"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_21

    .line 178
    .end local v0    # "config":Ljava/lang/String;
    :goto_20
    return-void

    .line 175
    :catch_21
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Configurator"

    const-string v4, "Could not read default config"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20
.end method

.method private fetchCurrentConfig()V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v2, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 163
    return-void
.end method


# virtual methods
.method public handle(Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->terminate()V

    .line 286
    return-void
.end method

.method public declared-synchronized launch()V
    .registers 2

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-eqz v0, :cond_7

    .line 305
    :goto_5
    monitor-exit p0

    return-void

    .line 295
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 300
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 302
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 304
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->fetchCurrentConfig()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    goto :goto_5

    .line 292
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEndpointResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .registers 11
    .param p1, "response"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 246
    const-string v3, "upsight.configuration"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 281
    :cond_d
    :goto_d
    return-void

    .line 251
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->parse(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 253
    .local v1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v4, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v5, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;

    invoke-direct {v5, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    invoke-interface {v3, v4, v5}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 267
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 268
    .local v0, "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "upsight.configuration.configurationManager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 269
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Configurator"

    const-string v6, "Apply received configurations"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 272
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v4, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_5b} :catch_5c

    goto :goto_28

    .line 278
    .end local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .end local v1    # "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    :catch_5c
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v4, "Configurator"

    const-string v5, "Could not parse incoming configurations"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 275
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .restart local v1    # "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    :cond_6c
    :try_start_6c
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v4, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_71} :catch_5c

    goto :goto_28
.end method

.method public declared-synchronized terminate()V
    .registers 5

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v0, :cond_12

    .line 314
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 317
    :cond_12
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_2a

    .line 318
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v2, "Stop config.expired recording scheduler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 322
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 325
    monitor-exit p0

    return-void

    .line 311
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
