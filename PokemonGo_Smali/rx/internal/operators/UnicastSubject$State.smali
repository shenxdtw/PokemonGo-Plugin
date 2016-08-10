.class final Lrx/internal/operators/UnicastSubject$State;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "UnicastSubject.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;
.implements Lrx/functions/Action0;
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TT;>;",
        "Lrx/functions/Action0;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d831d73a4227baaL


# instance fields
.field volatile caughtUp:Z

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final subscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Subscriber",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILrx/functions/Action0;)V
    .registers 5
    .param p1, "capacityHint"    # I
    .param p2, "onTerminated"    # Lrx/functions/Action0;

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 143
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    .line 144
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    if-eqz p2, :cond_2a

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :goto_17
    iput-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 148
    const/4 v1, 0x1

    if-le p1, v1, :cond_32

    .line 149
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    .line 157
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_27
    iput-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 158
    return-void

    .line 145
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2a
    const/4 v1, 0x0

    goto :goto_17

    .line 149
    :cond_2c
    new-instance v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    goto :goto_27

    .line 153
    :cond_32
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_3d
    goto :goto_27

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3e
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    goto :goto_3d
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 331
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->doTerminate()V

    .line 333
    iput-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 334
    monitor-enter p0

    .line 335
    :try_start_7
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    if-eqz v0, :cond_d

    .line 336
    monitor-exit p0

    .line 341
    :goto_c
    return-void

    .line 338
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    .line 339
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_17

    .line 340
    iget-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_c

    .line 339
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/UnicastSubject$State;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 253
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 254
    invoke-virtual {p1, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 258
    :goto_13
    return-void

    .line 256
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single subscriber is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method checkTerminated(ZZLrx/Subscriber;)Z
    .registers 7
    .param p1, "done"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    .local p3, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x1

    .line 351
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 352
    iget-object v2, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 367
    :goto_c
    return v1

    .line 355
    :cond_d
    if-eqz p1, :cond_22

    .line 356
    iget-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 357
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1c

    .line 358
    iget-object v2, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 359
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 362
    :cond_1c
    if-eqz p2, :cond_22

    .line 363
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_c

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22
    const/4 v1, 0x0

    goto :goto_c
.end method

.method doTerminate()V
    .registers 4

    .prologue
    .line 374
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 375
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/functions/Action0;>;"
    if-eqz v1, :cond_16

    .line 376
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/functions/Action0;

    .line 377
    .local v0, "a":Lrx/functions/Action0;
    if-eqz v0, :cond_16

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 378
    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 381
    .end local v0    # "a":Lrx/functions/Action0;
    :cond_16
    return-void
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const/4 v1, 0x1

    .line 213
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-nez v2, :cond_1b

    .line 215
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->doTerminate()V

    .line 217
    iput-boolean v1, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 218
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_21

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "stillReplay":Z
    monitor-enter p0

    .line 221
    :try_start_10
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_1c

    move v0, v1

    .line 222
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1e

    .line 223
    if-eqz v0, :cond_21

    .line 224
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 230
    .end local v0    # "stillReplay":Z
    :cond_1b
    :goto_1b
    return-void

    .line 221
    .restart local v0    # "stillReplay":Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_15

    .line 222
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    .line 228
    .end local v0    # "stillReplay":Z
    :cond_21
    iget-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1b
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const/4 v1, 0x1

    .line 192
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-nez v2, :cond_1d

    .line 194
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->doTerminate()V

    .line 196
    iput-object p1, p0, Lrx/internal/operators/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 197
    iput-boolean v1, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 198
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_23

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "stillReplay":Z
    monitor-enter p0

    .line 201
    :try_start_12
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_1e

    move v0, v1

    .line 202
    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_20

    .line 203
    if-eqz v0, :cond_23

    .line 204
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 210
    .end local v0    # "stillReplay":Z
    :cond_1d
    :goto_1d
    return-void

    .line 201
    .restart local v0    # "stillReplay":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17

    .line 202
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 208
    .end local v0    # "stillReplay":Z
    :cond_23
    iget-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-nez v3, :cond_20

    .line 163
    iget-boolean v3, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_24

    .line 164
    const/4 v2, 0x0

    .line 171
    .local v2, "stillReplay":Z
    monitor-enter p0

    .line 172
    :try_start_a
    iget-boolean v3, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_1a

    .line 173
    iget-object v3, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    iget-object v4, p0, Lrx/internal/operators/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    const/4 v2, 0x1

    .line 176
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_21

    .line 177
    if-eqz v2, :cond_24

    .line 178
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 189
    .end local v2    # "stillReplay":Z
    :cond_20
    :goto_20
    return-void

    .line 176
    .restart local v2    # "stillReplay":Z
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v3

    .line 182
    .end local v2    # "stillReplay":Z
    :cond_24
    iget-object v3, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    .line 184
    .local v1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_2c
    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    .line 185
    :catch_30
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_20
.end method

.method replay()V
    .registers 15

    .prologue
    .line 263
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    monitor-enter p0

    .line 264
    :try_start_1
    iget-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    if-eqz v12, :cond_a

    .line 265
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->missed:Z

    .line 266
    monitor-exit p0

    .line 318
    :cond_9
    :goto_9
    return-void

    .line 268
    :cond_a
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    .line 269
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_72

    .line 270
    iget-object v5, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 272
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_10
    iget-object v12, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/Subscriber;

    .line 273
    .local v8, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v9, 0x0

    .line 274
    .local v9, "unlimited":Z
    if-eqz v8, :cond_5a

    .line 275
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 276
    .local v0, "d":Z
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 278
    .local v1, "empty":Z
    invoke-virtual {p0, v0, v1, v8}, Lrx/internal/operators/UnicastSubject$State;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 281
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->get()J

    move-result-wide v6

    .line 282
    .local v6, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v6, v12

    if-nez v12, :cond_75

    const/4 v9, 0x1

    .line 283
    :goto_35
    const-wide/16 v2, 0x0

    .line 285
    .local v2, "e":J
    :goto_37
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_4e

    .line 286
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 287
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 288
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_77

    const/4 v1, 0x1

    .line 289
    :goto_46
    invoke-virtual {p0, v0, v1, v8}, Lrx/internal/operators/UnicastSubject$State;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 292
    if-eqz v1, :cond_79

    .line 307
    .end local v10    # "v":Ljava/lang/Object;
    :cond_4e
    if-nez v9, :cond_5a

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_5a

    .line 308
    neg-long v12, v2

    invoke-virtual {p0, v12, v13}, Lrx/internal/operators/UnicastSubject$State;->addAndGet(J)J

    .line 312
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v6    # "r":J
    :cond_5a
    monitor-enter p0

    .line 313
    :try_start_5b
    iget-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->missed:Z

    if-nez v12, :cond_99

    .line 314
    if-eqz v9, :cond_6a

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 315
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    .line 317
    :cond_6a
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    .line 318
    monitor-exit p0

    goto :goto_9

    .line 321
    :catchall_6f
    move-exception v12

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_6f

    throw v12

    .line 269
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v8    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v9    # "unlimited":Z
    :catchall_72
    move-exception v12

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v12

    .line 282
    .restart local v0    # "d":Z
    .restart local v1    # "empty":Z
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "r":J
    .restart local v8    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v9    # "unlimited":Z
    :cond_75
    const/4 v9, 0x0

    goto :goto_35

    .line 288
    .restart local v2    # "e":J
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_77
    const/4 v1, 0x0

    goto :goto_46

    .line 295
    :cond_79
    iget-object v12, p0, Lrx/internal/operators/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v12, v10}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 297
    .local v11, "value":Ljava/lang/Object;, "TT;"
    :try_start_7f
    invoke-virtual {v8, v11}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_89

    .line 304
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 305
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 306
    goto :goto_37

    .line 298
    :catch_89
    move-exception v4

    .line 299
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 300
    invoke-static {v4}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 301
    invoke-static {v4, v11}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v8, v12}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 320
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v6    # "r":J
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;, "TT;"
    :cond_99
    const/4 v12, 0x0

    :try_start_9a
    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->missed:Z

    .line 321
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_6f

    goto/16 :goto_10
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const-wide/16 v2, 0x0

    .line 234
    cmp-long v0, p1, v2

    if-gez v0, :cond_e

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_e
    cmp-long v0, p1, v2

    if-lez v0, :cond_19

    .line 238
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 239
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 244
    :cond_18
    :goto_18
    return-void

    .line 241
    :cond_19
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-eqz v0, :cond_18

    .line 242
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    goto :goto_18
.end method
