.class public Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final KEY_GCM:Ljava/lang/String; = "com.upsight.gcm"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com.upsight.android.googleadvertisingid.internal.registration"

.field private static final PROPERTY_LAST_PUSH_TOKEN_REGISTRATION_TIME:Ljava/lang/String; = "lastPushTokenRegistrationTime"

.field private static final PROPERTY_REG_ID:Ljava/lang/String; = "gcmRegistrationId"

.field static final PUSH_SCOPE:Ljava/lang/String; = "com_upsight_push_scope"


# instance fields
.field private final mComputationScheduler:Lrx/Scheduler;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mPendingRegisterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingUnregisterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

.field private mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

.field private mRegistrationIsInProgress:Z

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private mUnregistrationIsInProgress:Z

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V
    .registers 6
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "pushConfigManager"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 83
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .line 84
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 86
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    .line 92
    :goto_1f
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mComputationScheduler:Lrx/Scheduler;

    .line 94
    iput-boolean v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    .line 95
    iput-boolean v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;

    .line 100
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-string v1, "com.upsight.android.googleadvertisingid.internal.registration"

    invoke-virtual {v0, v1, v2}, Lcom/upsight/android/UpsightContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    return-void

    .line 89
    :cond_46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    goto :goto_1f
.end method

.method static synthetic access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->registerPushToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->removeRegistrationInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$602(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)J
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getLastPushTokenRegistrationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->storeRegistrationInfo(Ljava/lang/String;J)V

    return-void
.end method

.method private getLastPushTokenRegistrationTime()J
    .registers 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "lastPushTokenRegistrationTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRegistrationId()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "gcmRegistrationId"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "registrationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v0, v1

    .line 371
    .end local v0    # "registrationId":Ljava/lang/String;
    :cond_10
    return-object v0
.end method

.method private hasPlayServices()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 344
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 345
    .local v0, "resultCode":I
    if-eqz v0, :cond_1c

    .line 346
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Google play service is not available: "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-interface {v3, v4, v5, v2}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    goto :goto_1b
.end method

.method private isRegistered()Z
    .registers 2

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private registerInBackground(Ljava/lang/String;)V
    .registers 5
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    .line 168
    new-instance v1, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;

    invoke-direct {v1, p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 185
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mComputationScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    .line 186
    invoke-static {v2}, Lrx/android/schedulers/HandlerScheduler;->from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;

    invoke-direct {v2, p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V

    .line 187
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 227
    return-void
.end method

.method private registerPushToken(Ljava/lang/String;)V
    .registers 8
    .param p1, "pushToken"    # Ljava/lang/String;

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-virtual {v1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->fetchCurrentConfigObservable()Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 323
    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 324
    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->observeOnScheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;

    invoke-direct {v2, p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 338
    :goto_2a
    return-void

    .line 335
    :catch_2b
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to fetch push configurations"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a
.end method

.method private removeRegistrationInfo()V
    .registers 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 398
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gcmRegistrationId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    const-string v1, "lastPushTokenRegistrationTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 401
    return-void
.end method

.method private storeRegistrationInfo(Ljava/lang/String;J)V
    .registers 6
    .param p1, "registrationId"    # Ljava/lang/String;
    .param p2, "currentTimeS"    # J

    .prologue
    .line 387
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gcmRegistrationId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    const-string v1, "lastPushTokenRegistrationTime"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    return-void
.end method

.method private unregisterInBackground()V
    .registers 4

    .prologue
    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    .line 258
    new-instance v1, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$3;

    invoke-direct {v1, p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$3;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 270
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mComputationScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUiThreadHandler:Landroid/os/Handler;

    .line 271
    invoke-static {v2}, Lrx/android/schedulers/HandlerScheduler;->from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;

    invoke-direct {v2, p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;-><init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V

    .line 272
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 313
    return-void
.end method


# virtual methods
.method public declared-synchronized createPushBillboard(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;
    .registers 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "handler"    # Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    if-eqz v0, :cond_d

    .line 408
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    invoke-virtual {v0}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 411
    :cond_d
    const-string v0, "com_upsight_push_scope"

    invoke-static {p1, v0, p2}, Lcom/upsight/android/marketing/UpsightBillboard;->create(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 412
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 407
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V
    .registers 13
    .param p1, "listener"    # Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;

    .prologue
    .line 105
    monitor-enter p0

    if-nez p1, :cond_e

    .line 106
    :try_start_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Listener could not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 105
    :catchall_b
    move-exception v6

    monitor-exit p0

    throw v6

    .line 109
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->hasPlayServices()Z

    move-result v6

    if-nez v6, :cond_23

    .line 110
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Google Play Services are not available"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_b

    .line 158
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 114
    :cond_23
    :try_start_23
    iget-boolean v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    if-eqz v6, :cond_35

    .line 115
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Unregistration is in progress, try later"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_b

    goto :goto_21

    .line 119
    :cond_35
    const/4 v3, 0x0

    .line 120
    .local v3, "gcmAuthority":Ljava/lang/String;
    const/4 v4, 0x0

    .line 122
    .local v4, "gcmSenderId":Ljava/lang/String;
    :try_start_37
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 123
    invoke-virtual {v7}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    .line 122
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 124
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 125
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_70

    .line 126
    const-string v6, "com.upsight.gcm"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "gcm":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_70

    .line 130
    const/4 v6, 0x0

    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 131
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_6f} :catch_e4
    .catchall {:try_start_37 .. :try_end_6f} :catchall_b

    move-result-object v4

    .line 138
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "gcm":Ljava/lang/String;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_70
    :goto_70
    :try_start_70
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 139
    :cond_82
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Registration aborted, wrong or no value for com.upsight.gcm was defined"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a6

    .line 142
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Check that the package name of your application is specified correctly"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_a6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 145
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Check that your GCM sender id is specified correctly"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_b8
    new-instance v6, Lcom/upsight/android/UpsightException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GCM properties must be set in the Android Manifest with <meta-data android:name=\"com.upsight.gcm\" android:value=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 149
    invoke-virtual {v8}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".GCM_SENDER_ID\" />"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-interface {p1, v6}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto/16 :goto_21

    .line 134
    :catch_e4
    move-exception v1

    .line 135
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v7, "Upsight"

    const-string v8, "Unexpected error: Package name missing!?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_70

    .line 153
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_f6
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-boolean v6, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    if-nez v6, :cond_21

    .line 156
    invoke-direct {p0, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->registerInBackground(Ljava/lang/String;)V
    :try_end_102
    .catchall {:try_start_70 .. :try_end_102} :catchall_b

    goto/16 :goto_21
.end method

.method public declared-synchronized unregister(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .prologue
    .line 231
    monitor-enter p0

    if-nez p1, :cond_e

    .line 232
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener could not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 231
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_23

    .line 236
    new-instance v0, Lcom/upsight/android/UpsightException;

    const-string v1, "Application is not registered to pushes yet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_b

    .line 250
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 240
    :cond_23
    :try_start_23
    iget-boolean v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z

    if-eqz v0, :cond_35

    .line 241
    new-instance v0, Lcom/upsight/android/UpsightException;

    const-string v1, "Registration is in progress, try later"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto :goto_21

    .line 245
    :cond_35
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    iget-boolean v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z

    if-nez v0, :cond_21

    .line 248
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->unregisterInBackground()V
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_b

    goto :goto_21
.end method
