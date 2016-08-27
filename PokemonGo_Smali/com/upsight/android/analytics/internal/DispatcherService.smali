.class public Lcom/upsight/android/analytics/internal/DispatcherService;
.super Landroid/app/Service;
.source "DispatcherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final STATUS_CHECK_INTERVAL:J = 0x61a8L

.field private static final STOP_AFTER_DEAD_INTERVALS:I = 0x4


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mDeadIntervalsInARow:I

.field mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mSelfStopTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Lcom/upsight/android/analytics/internal/DispatcherService$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/DispatcherService$1;-><init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)I
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 33
    iget v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    return v0
.end method

.method static synthetic access$102(Lcom/upsight/android/analytics/internal/DispatcherService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    return p1
.end method

.method static synthetic access$108(Lcom/upsight/android/analytics/internal/DispatcherService;)I
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 33
    iget v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    return v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/DispatcherService;Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService;->handle(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V

    return-void
.end method

.method private handle(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .registers 6
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    if-ne v0, v1, :cond_15

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :goto_14
    return-void

    .line 148
    :cond_15
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_14
.end method


# virtual methods
.method public onApplicationStatus(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .registers 2
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService;->handle(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V

    .line 121
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 7

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v1

    .line 82
    .local v1, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v2, "com.upsight.extension.analytics"

    invoke-virtual {v1, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 83
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_5f

    .line 84
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v2, p0}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->inject(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    .line 86
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    .line 87
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 88
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v3, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 92
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->launch()V

    .line 93
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->launch()V

    .line 96
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    const-class v3, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v4, Lcom/upsight/android/analytics/internal/DispatcherService$2;

    invoke-direct {v4, p0}, Lcom/upsight/android/analytics/internal/DispatcherService$2;-><init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    invoke-interface {v2, v3, v4}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 110
    :cond_5f
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    if-eqz v0, :cond_e

    .line 127
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;

    invoke-direct {v1}, Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 130
    :cond_e
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 133
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v1, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDestroy()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 136
    return-void
.end method
