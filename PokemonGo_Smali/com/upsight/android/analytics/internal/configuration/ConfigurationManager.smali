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
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;Lrx/Scheduler;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 8
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p3, "responseParser"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
    .param p4, "managerConfigParser"    # Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .param p6, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 239
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    .line 112
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 113
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 114
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    .line 115
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    .line 116
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 117
    invoke-virtual {p5}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/UpsightContext;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private declared-synchronized applyConfiguration(Ljava/lang/String;)Z
    .registers 16
    .param p1, "jsonConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 201
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v7

    .line 203
    .local v7, "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->isValid()Z

    move-result v0

    if-nez v0, :cond_20

    .line 204
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

    .line 232
    .end local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :goto_1e
    monitor-exit p0

    return v0

    .line 208
    .restart local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    invoke-virtual {v7, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 209
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Current config is equals to incoming config, rejecting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    .line 210
    goto :goto_1e

    .line 213
    :cond_36
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_53

    .line 214
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v4, "Stop config.expired recording scheduler"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 219
    :cond_53
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    if-eqz v0, :cond_99

    const-wide/16 v2, 0x0

    .line 221
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

    .line 223
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    iget-wide v4, v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    .line 227
    iput-object v7, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move v0, v9

    .line 229
    goto :goto_1e

    .line 219
    .end local v2    # "initialDelay":J
    :cond_99
    iget-wide v2, v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_9b} :catch_9c
    .catchall {:try_start_20 .. :try_end_9b} :catchall_af

    goto :goto_59

    .line 230
    .end local v7    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :catch_9c
    move-exception v8

    .line 231
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

    .line 232
    goto/16 :goto_1e

    .line 201
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

    .line 182
    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/upsight/android/analytics/R$raw;->configurator_config:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "config":Ljava/lang/String;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Configurator"

    const-string v4, "Apply default configurations"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_21

    .line 190
    .end local v0    # "config":Ljava/lang/String;
    :goto_20
    return-void

    .line 187
    :catch_21
    move-exception v1

    .line 188
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
    .line 143
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v2, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 175
    return-void
.end method


# virtual methods
.method public declared-synchronized launch()V
    .registers 2

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 136
    :goto_5
    monitor-exit p0

    return-void

    .line 127
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsOutOfSync:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 132
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 135
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->fetchCurrentConfig()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1f

    goto :goto_5

    .line 124
    :catchall_1f
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

    .line 258
    const-string v3, "upsight.configuration"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 293
    :cond_d
    :goto_d
    return-void

    .line 263
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->parse(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 265
    .local v1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v4, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v5, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;

    invoke-direct {v5, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    invoke-interface {v3, v4, v5}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 279
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

    .line 280
    .local v0, "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "upsight.configuration.configurationManager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 281
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Configurator"

    const-string v6, "Apply received configurations"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 284
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v4, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_5b} :catch_5c

    goto :goto_28

    .line 290
    .end local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .end local v1    # "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    :catch_5c
    move-exception v2

    .line 291
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v4, "Configurator"

    const-string v5, "Could not parse incoming configurations"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 287
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
    .line 299
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v0, :cond_d

    .line 300
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 303
    :cond_d
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_25

    .line 304
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configurator"

    const-string v2, "Stop config.expired recording scheduler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 308
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 311
    monitor-exit p0

    return-void

    .line 299
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
