.class final Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;"
    }
.end annotation


# instance fields
.field private final baseCapacity:Ljava/lang/Long;

.field private final capacity:Ljava/util/concurrent/atomic/AtomicLong;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final manager:Lrx/internal/util/BackpressureDrainManager;

.field private final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final onOverflow:Lrx/functions/Action0;

.field private final overflowStrategy:Lrx/BackpressureOverflow$Strategy;

.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final saturated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Long;Lrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V
    .registers 9
    .param p2, "capacity"    # Ljava/lang/Long;
    .param p3, "onOverflow"    # Lrx/functions/Action0;
    .param p4, "overflowStrategy"    # Lrx/BackpressureOverflow$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/Long;",
            "Lrx/functions/Action0;",
            "Lrx/BackpressureOverflow$Strategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 124
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    .line 125
    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->baseCapacity:Ljava/lang/Long;

    .line 126
    if-eqz p2, :cond_35

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_27
    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->onOverflow:Lrx/functions/Action0;

    .line 128
    new-instance v0, Lrx/internal/util/BackpressureDrainManager;

    invoke-direct {v0, p0}, Lrx/internal/util/BackpressureDrainManager;-><init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    .line 129
    iput-object p4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->overflowStrategy:Lrx/BackpressureOverflow$Strategy;

    .line 130
    return-void

    .line 126
    :cond_35
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private assertCapacity()Z
    .registers 11

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v6, :cond_7

    .line 221
    :goto_6
    return v4

    .line 192
    :cond_7
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 193
    .local v0, "currCapacity":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_4f

    .line 194
    const/4 v3, 0x0

    .line 197
    .local v3, "hasCapacity":Z
    :try_start_14
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->overflowStrategy:Lrx/BackpressureOverflow$Strategy;

    invoke-interface {v6}, Lrx/BackpressureOverflow$Strategy;->mayAttemptDrop()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->poll()Ljava/lang/Object;
    :try_end_1f
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_14 .. :try_end_1f} :catch_32

    move-result-object v6

    if-eqz v6, :cond_30

    move v3, v4

    .line 204
    :cond_23
    :goto_23
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->onOverflow:Lrx/functions/Action0;

    if-eqz v6, :cond_2c

    .line 206
    :try_start_27
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->onOverflow:Lrx/functions/Action0;

    invoke-interface {v6}, Lrx/functions/Action0;->call()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2c} :catch_44

    .line 215
    :cond_2c
    if-nez v3, :cond_4f

    move v4, v5

    .line 216
    goto :goto_6

    :cond_30
    move v3, v5

    .line 197
    goto :goto_23

    .line 198
    :catch_32
    move-exception v2

    .line 199
    .local v2, "e":Lrx/exceptions/MissingBackpressureException;
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 200
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->unsubscribe()V

    .line 201
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v6, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 207
    .end local v2    # "e":Lrx/exceptions/MissingBackpressureException;
    :catch_44
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 209
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v4, v2}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    move v4, v5

    .line 212
    goto :goto_6

    .line 220
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "hasCapacity":Z
    :cond_4f
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    invoke-virtual {v6, v0, v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_6
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    if-eqz p1, :cond_8

    .line 167
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 171
    :goto_7
    return-void

    .line 169
    :cond_8
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_7
.end method

.method protected manager()Lrx/Producer;
    .registers 2

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    return-object v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain()V

    .line 142
    :cond_d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 147
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, p1}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    .line 149
    :cond_d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->assertCapacity()Z

    move-result v0

    if-nez v0, :cond_7

    .line 158
    :goto_6
    return-void

    .line 156
    :cond_7
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_6
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->request(J)V

    .line 135
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 179
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 180
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 182
    :cond_11
    return-object v0
.end method
