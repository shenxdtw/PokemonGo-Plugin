.class Lcom/upsight/android/analytics/internal/session/ManualTracker;
.super Ljava/lang/Object;
.source "ManualTracker.java"

# interfaces
.implements Lcom/upsight/android/analytics/UpsightLifeCycleTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/session/ManualTracker$3;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


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

.field private mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/UpsightContext;)V
    .registers 4
    .param p1, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p2, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 43
    invoke-virtual {p2}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private static isPurgeable(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
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
    .line 147
    .local p0, "activitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 150
    .local v0, "activity":Landroid/app/Activity;
    if-eq v0, p1, :cond_1e

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->isPurgeable(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 154
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_22
    return-void
.end method


# virtual methods
.method public track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityState"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
    .param p3, "sessionInitializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    .line 51
    sget-object v1, Lcom/upsight/android/analytics/internal/session/ManualTracker$3;->$SwitchMap$com$upsight$android$analytics$UpsightLifeCycleTracker$ActivityState:[I

    invoke-virtual {p2}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_64

    .line 140
    :cond_b
    :goto_b
    return-void

    .line 54
    :pswitch_c
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 55
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v2, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v3, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;-><init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "activityIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2e

    const-string v1, "pushMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 90
    :cond_2e
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v1, p3}, Lcom/upsight/android/analytics/internal/session/SessionManager;->startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    .line 95
    .end local v0    # "activityIntent":Landroid/content/Intent;
    :cond_33
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 99
    :pswitch_3e
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->removeAndPurge(Ljava/util/Set;Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 104
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v2, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v3, Lcom/upsight/android/analytics/internal/session/ManualTracker$2;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/session/ManualTracker$2;-><init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 136
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/SessionManager;->stopSession()V

    goto :goto_b

    .line 51
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_c
        :pswitch_3e
    .end packed-switch
.end method
