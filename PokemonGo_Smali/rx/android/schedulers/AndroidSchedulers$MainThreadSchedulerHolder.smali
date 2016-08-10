.class Lrx/android/schedulers/AndroidSchedulers$MainThreadSchedulerHolder;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/schedulers/AndroidSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadSchedulerHolder"
.end annotation


# static fields
.field static final MAIN_THREAD_SCHEDULER:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    new-instance v0, Lrx/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lrx/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lrx/android/schedulers/AndroidSchedulers$MainThreadSchedulerHolder;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
