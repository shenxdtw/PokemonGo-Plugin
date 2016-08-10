.class public abstract Lrx/internal/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/internal/schedulers/SchedulerLifecycle;"
    }
.end annotation


# instance fields
.field final maxSize:I

.field final minSize:I

.field pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final schedulerWorker:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Scheduler$Worker;",
            ">;"
        }
    .end annotation
.end field

.field private final validationInterval:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    const/4 v2, 0x0

    .line 39
    const-wide/16 v0, 0x43

    invoke-direct {p0, v2, v2, v0, v1}, Lrx/internal/util/ObjectPool;-><init>(IIJ)V

    .line 40
    return-void
.end method

.method private constructor <init>(IIJ)V
    .registers 6
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "validationInterval"    # J

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lrx/internal/util/ObjectPool;->minSize:I

    .line 56
    iput p2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    .line 57
    iput-wide p3, p0, Lrx/internal/util/ObjectPool;->validationInterval:J

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    invoke-direct {p0, p1}, Lrx/internal/util/ObjectPool;->initialize(I)V

    .line 62
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->start()V

    .line 63
    return-void
.end method

.method private initialize(I)V
    .registers 6
    .param p1, "min"    # I

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 143
    new-instance v1, Lrx/internal/util/unsafe/MpmcArrayQueue;

    iget v2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Lrx/internal/util/unsafe/MpmcArrayQueue;-><init>(I)V

    iput-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    .line 148
    :goto_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, p1, :cond_2c

    .line 149
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 145
    .end local v0    # "i":I
    :cond_24
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    goto :goto_15

    .line 151
    .restart local v0    # "i":I
    :cond_2c
    return-void
.end method


# virtual methods
.method public borrowObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_c

    .line 74
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v0

    .line 77
    :cond_c
    return-object v0
.end method

.method protected abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public returnObject(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_3

    .line 92
    :goto_2
    return-void

    .line 91
    :cond_3
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler$Worker;

    .line 100
    .local v0, "w":Lrx/Scheduler$Worker;
    if-eqz v0, :cond_e

    .line 101
    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 103
    :cond_e
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 108
    .local v0, "w":Lrx/Scheduler$Worker;
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 109
    new-instance v1, Lrx/internal/util/ObjectPool$1;

    invoke-direct {v1, p0}, Lrx/internal/util/ObjectPool$1;-><init>(Lrx/internal/util/ObjectPool;)V

    iget-wide v2, p0, Lrx/internal/util/ObjectPool;->validationInterval:J

    iget-wide v4, p0, Lrx/internal/util/ObjectPool;->validationInterval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 132
    :goto_1f
    return-void

    .line 130
    :cond_20
    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    goto :goto_1f
.end method
