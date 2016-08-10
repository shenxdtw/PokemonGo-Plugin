.class final Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
.super Lrx/Subscriber;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;


# instance fields
.field final buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field emitting:Z

.field maxChildRequested:J

.field maxUpstreamRequested:J

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile producer:Lrx/Producer;

.field final producers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 302
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 304
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;>;",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    .local p2, "buffer":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 329
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    .line 331
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 332
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 333
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 336
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->request(J)V

    .line 337
    return-void
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v3, 0x0

    .line 359
    if-nez p1, :cond_9

    .line 360
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 365
    :cond_9
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 368
    .local v0, "c":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    sget-object v4, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-ne v0, v4, :cond_16

    .line 378
    :goto_15
    return v3

    .line 372
    :cond_16
    array-length v1, v0

    .line 373
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 374
    .local v2, "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    aput-object p1, v2, v1

    .line 377
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 378
    const/4 v3, 0x1

    goto :goto_15
.end method

.method init()V
    .registers 2

    .prologue
    .line 340
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;-><init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->add(Lrx/Subscription;)V

    .line 351
    return-void
.end method

.method manageRequests()V
    .registers 23

    .prologue
    .line 487
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 545
    :cond_6
    :goto_6
    return-void

    .line 490
    :cond_7
    monitor-enter p0

    .line 491
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    .line 492
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 493
    monitor-exit p0

    goto :goto_6

    .line 496
    :catchall_1a
    move-exception v20

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v20

    .line 495
    :cond_1d
    const/16 v20, 0x1

    :try_start_1f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 496
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1a

    .line 499
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v20

    if-nez v20, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 506
    .local v4, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object/from16 v0, p0

    iget-wide v14, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 507
    .local v14, "ri":J
    move-wide v10, v14

    .line 509
    .local v10, "maxTotalRequests":J
    move-object v5, v4

    .local v5, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_40
    if-ge v8, v9, :cond_55

    aget-object v13, v5, v8

    .line 510
    .local v13, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v0, v13, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 509
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 513
    .end local v13    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_55
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    move-wide/from16 v18, v0

    .line 514
    .local v18, "ur":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 516
    .local v12, "p":Lrx/Producer;
    sub-long v6, v10, v14

    .line 517
    .local v6, "diff":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-eqz v20, :cond_b1

    .line 518
    move-object/from16 v0, p0

    iput-wide v10, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 519
    if-eqz v12, :cond_9d

    .line 520
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_99

    .line 521
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 522
    add-long v20, v18, v6

    move-wide/from16 v0, v20

    invoke-interface {v12, v0, v1}, Lrx/Producer;->request(J)V

    .line 542
    :cond_82
    :goto_82
    monitor-enter p0

    .line 543
    :try_start_83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    move/from16 v20, v0

    if-nez v20, :cond_c7

    .line 544
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 545
    monitor-exit p0

    goto/16 :goto_6

    .line 548
    :catchall_96
    move-exception v20

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_83 .. :try_end_98} :catchall_96

    throw v20

    .line 524
    :cond_99
    invoke-interface {v12, v6, v7}, Lrx/Producer;->request(J)V

    goto :goto_82

    .line 528
    :cond_9d
    add-long v16, v18, v6

    .line 529
    .local v16, "u":J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gez v20, :cond_aa

    .line 530
    const-wide v16, 0x7fffffffffffffffL

    .line 532
    :cond_aa
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    goto :goto_82

    .line 536
    .end local v16    # "u":J
    :cond_b1
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_82

    if-eqz v12, :cond_82

    .line 537
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 539
    move-wide/from16 v0, v18

    invoke-interface {v12, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_82

    .line 547
    :cond_c7
    const/16 v20, 0x0

    :try_start_c9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 548
    monitor-exit p0
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_96

    goto/16 :goto_26
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 471
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_12

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 474
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->complete()V

    .line 475
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 477
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 480
    :cond_12
    return-void

    .line 477
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 457
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_12

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 460
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 461
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 463
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 466
    :cond_12
    return-void

    .line 463
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_c

    .line 449
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 452
    :cond_c
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v7, 0x0

    .line 393
    :cond_1
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 395
    .local v0, "c":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    sget-object v5, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-eq v0, v5, :cond_11

    sget-object v5, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-ne v0, v5, :cond_12

    .line 428
    :cond_11
    :goto_11
    return-void

    .line 400
    :cond_12
    const/4 v2, -0x1

    .line 401
    .local v2, "j":I
    array-length v3, v0

    .line 402
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v3, :cond_20

    .line 403
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 404
    move v2, v1

    .line 409
    :cond_20
    if-ltz v2, :cond_11

    .line 416
    const/4 v5, 0x1

    if-ne v3, v5, :cond_33

    .line 417
    sget-object v4, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 427
    .local v4, "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    :goto_27
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_11

    .line 402
    .end local v4    # "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 420
    :cond_33
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 422
    .restart local v4    # "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27
.end method

.method replay()V
    .registers 7

    .prologue
    .line 557
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 558
    .local v0, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v1, v0

    .local v1, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v3, :cond_17

    aget-object v4, v1, v2

    .line 559
    .local v4, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v5, v4}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 561
    .end local v4    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_17
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 5
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 437
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 438
    .local v0, "p0":Lrx/Producer;
    if-eqz v0, :cond_c

    .line 439
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only a single producer can be set on a Subscriber."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_c
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 442
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests()V

    .line 443
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 444
    return-void
.end method
