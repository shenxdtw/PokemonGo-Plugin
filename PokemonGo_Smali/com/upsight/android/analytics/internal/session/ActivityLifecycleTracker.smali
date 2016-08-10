.class public Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V
    .registers 2
    .param p1, "tracker"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .line 30
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->CREATED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 35
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->DESTROYED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 65
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->PAUSED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 50
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->RESUMED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 45
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->SAVE_INSTANCE_STATE:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 60
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STARTED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 40
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STOPPED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 55
    return-void
.end method
