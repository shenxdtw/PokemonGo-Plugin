.class final Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedWorkerPool"
.end annotation


# instance fields
.field private final allWorkers:Lrx/subscriptions/CompositeSubscription;

.field private final evictorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final evictorTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/schedulers/CachedThreadScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveTime:J


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p1, "keepAliveTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p3, :cond_3b

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    :goto_9
    iput-wide v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    .line 54
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v7, 0x0

    .line 59
    .local v7, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p3, :cond_36

    .line 60
    const/4 v1, 0x1

    sget-object v2, Lrx/schedulers/CachedThreadScheduler;->EVICTOR_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 62
    new-instance v1, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;

    invoke-direct {v1, p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;-><init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    iget-wide v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    iget-wide v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 71
    :cond_36
    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    iput-object v7, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    .line 73
    return-void

    .line 53
    .end local v0    # "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v7    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_3b
    const-wide/16 v2, 0x0

    goto :goto_9
.end method


# virtual methods
.method evictExpiredWorkers()V
    .registers 7

    .prologue
    .line 100
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 101
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    .line 103
    .local v0, "currentTimestamp":J
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 104
    .local v3, "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    invoke-virtual {v3}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_34

    .line 105
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 106
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v3}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_12

    .line 115
    .end local v0    # "currentTimestamp":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_34
    return-void
.end method

.method get()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    .registers 4

    .prologue
    .line 76
    iget-object v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 77
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 89
    :goto_a
    return-object v0

    .line 79
    :cond_b
    iget-object v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 80
    iget-object v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 81
    .local v0, "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    if-eqz v0, :cond_b

    goto :goto_a

    .line 87
    .end local v0    # "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_1e
    new-instance v1, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    sget-object v2, Lrx/schedulers/CachedThreadScheduler;->WORKER_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    invoke-direct {v1, v2}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 88
    .local v1, "w":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    iget-object v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    move-object v0, v1

    .line 89
    goto :goto_a
.end method

.method now()J
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method release(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .registers 6
    .param p1, "threadWorker"    # Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .prologue
    .line 94
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->setExpirationTime(J)V

    .line 96
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method shutdown()V
    .registers 3

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_a

    .line 124
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 126
    :cond_a
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    .line 127
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    .line 130
    :cond_13
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 132
    return-void

    .line 130
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    throw v0
.end method
