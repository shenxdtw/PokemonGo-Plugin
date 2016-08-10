.class final Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>(I)V
    .registers 6
    .param p1, "maxThreads"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 64
    new-array v1, p1, [Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    iput-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, p1, :cond_1a

    .line 66
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v2, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    sget-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    invoke-direct {v2, v3}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 68
    :cond_1a
    return-void
.end method


# virtual methods
.method public getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    .registers 7

    .prologue
    .line 71
    iget v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 72
    .local v0, "c":I
    if-nez v0, :cond_7

    .line 73
    sget-object v1, Lrx/internal/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 76
    :goto_6
    return-object v1

    :cond_7
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    iget-wide v2, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v2, v2

    aget-object v1, v1, v2

    goto :goto_6
.end method

.method public shutdown()V
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .local v0, "arr$":[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 81
    .local v3, "w":Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    invoke-virtual {v3}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->unsubscribe()V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 83
    .end local v3    # "w":Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    :cond_e
    return-void
.end method
