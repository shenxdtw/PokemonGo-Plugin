.class public final Lrx/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/schedulers/AndroidSchedulers$MainThreadSchedulerHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static mainThread()Lrx/Scheduler;
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Lrx/android/plugins/RxAndroidPlugins;->getInstance()Lrx/android/plugins/RxAndroidPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/android/plugins/RxAndroidPlugins;->getSchedulersHook()Lrx/android/plugins/RxAndroidSchedulersHook;

    move-result-object v1

    invoke-virtual {v1}, Lrx/android/plugins/RxAndroidSchedulersHook;->getMainThreadScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 39
    .local v0, "scheduler":Lrx/Scheduler;
    if-eqz v0, :cond_f

    .end local v0    # "scheduler":Lrx/Scheduler;
    :goto_e
    return-object v0

    .restart local v0    # "scheduler":Lrx/Scheduler;
    :cond_f
    sget-object v0, Lrx/android/schedulers/AndroidSchedulers$MainThreadSchedulerHolder;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    goto :goto_e
.end method
