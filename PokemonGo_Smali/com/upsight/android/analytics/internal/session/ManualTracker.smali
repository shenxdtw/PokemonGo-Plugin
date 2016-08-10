.class Lcom/upsight/android/analytics/internal/session/ManualTracker;
.super Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
.source "ManualTracker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBus:Lcom/squareup/otto/Bus;

.field private mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mIsTaskRootStopped:Z

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/upsight/android/analytics/internal/session/ManualTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/UpsightContext;)V
    .registers 4
    .param p1, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p2, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mIsTaskRootStopped:Z

    .line 52
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 53
    invoke-virtual {p2}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 54
    invoke-virtual {p2}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mBus:Lcom/squareup/otto/Bus;

    .line 55
    invoke-virtual {p2}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/logger/UpsightLogger;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method private static isPurgeable(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 210
    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static removeAndPurge(Ljava/util/Set;Landroid/app/Activity;)V
    .registers 5
    .param p1, "reference"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "activitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 198
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 200
    .local v0, "activity":Landroid/app/Activity;
    if-eq v0, p1, :cond_1e

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->isPurgeable(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 204
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_22
    return-void
.end method


# virtual methods
.method public track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityState"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
    .param p3, "sessionInitializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    const/4 v5, 0x0

    .line 64
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 190
    :cond_5
    :goto_5
    return-void

    .line 69
    :cond_6
    sget-object v1, Lcom/upsight/android/analytics/internal/session/ManualTracker$3;->$SwitchMap$com$upsight$android$analytics$UpsightLifeCycleTracker$ActivityState:[I

    invoke-virtual {p2}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_fa

    .line 189
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;

    invoke-direct {v2, p1, p2}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;-><init>(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_5

    .line 71
    :pswitch_1c
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Track starting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isTaskRoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 75
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v2, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v3, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;-><init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 115
    .local v0, "activityIntent":Landroid/content/Intent;
    if-eqz v0, :cond_68

    const-string v1, "pushMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 116
    :cond_68
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v1, p3}, Lcom/upsight/android/analytics/internal/session/SessionManager;->startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    .line 118
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Request to start new Upsight session"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .end local v0    # "activityIntent":Landroid/content/Intent;
    :cond_78
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 127
    :pswitch_83
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Track stopping of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->removeAndPurge(Ljava/util/Set;Landroid/app/Activity;)V

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mIsTaskRootStopped:Z

    .line 136
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clear task root stopped condition with task root Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_c9
    iget-boolean v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mIsTaskRootStopped:Z

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 142
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v2, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v3, Lcom/upsight/android/analytics/internal/session/ManualTracker$2;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/session/ManualTracker$2;-><init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 180
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/SessionManager;->stopSession()V

    .line 182
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Request to stop current Upsight session"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 69
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_83
    .end packed-switch
.end method
