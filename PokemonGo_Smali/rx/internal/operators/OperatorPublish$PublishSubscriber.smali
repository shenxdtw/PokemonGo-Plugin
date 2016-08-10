.class final Lrx/internal/operators/OperatorPublish$PublishSubscriber;
.super Lrx/Subscriber;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
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
.field static final EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final producers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/internal/operators/OperatorPublish$InnerProducer;",
            ">;"
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

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile terminalEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 229
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 231
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 247
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    :goto_10
    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    .line 251
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 252
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 253
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 255
    return-void

    .line 247
    :cond_2b
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    goto :goto_10
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorPublish$InnerProducer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const/4 v3, 0x0

    .line 318
    if-nez p1, :cond_9

    .line 319
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 324
    :cond_9
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 327
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v4, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v0, v4, :cond_16

    .line 337
    :goto_15
    return v3

    .line 331
    :cond_16
    array-length v1, v0

    .line 332
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 333
    .local v2, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    aput-object p1, v2, v1

    .line 336
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 337
    const/4 v3, 0x1

    goto :goto_15
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .registers 11
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 403
    if-eqz p1, :cond_60

    .line 405
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 407
    if-eqz p2, :cond_60

    .line 410
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    :try_start_13
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .local v0, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1f
    if-ge v1, v3, :cond_2b

    aget-object v2, v0, v1

    .line 425
    .local v2, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_2f

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 430
    .end local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_2b
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    .line 457
    .end local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :goto_2e
    return v5

    .line 430
    :catchall_2f
    move-exception v5

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    throw v5

    .line 436
    :cond_34
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, p1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .line 439
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    :try_start_3f
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .restart local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_4b
    if-ge v1, v3, :cond_57

    aget-object v2, v0, v1

    .line 445
    .restart local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v6, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_5b

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 450
    .end local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_57
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    goto :goto_2e

    .end local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_5b
    move-exception v5

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    throw v5

    .line 457
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_60
    const/4 v5, 0x0

    goto :goto_2e
.end method

.method dispatch()V
    .registers 27

    .prologue
    .line 468
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    monitor-enter p0

    .line 469
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 470
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 471
    monitor-exit p0

    .line 637
    :cond_12
    :goto_12
    return-void

    .line 474
    :cond_13
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 475
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 476
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_52

    .line 485
    const/16 v16, 0x0

    .line 496
    .local v16, "skipFinal":Z
    :cond_26
    :goto_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 503
    .local v18, "term":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 507
    .local v6, "empty":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_d1

    move-result v22

    if-eqz v22, :cond_55

    .line 508
    const/16 v16, 0x1

    .line 633
    if-nez v16, :cond_12

    .line 635
    monitor-enter p0

    .line 636
    const/16 v22, 0x0

    :try_start_47
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 637
    monitor-exit p0

    goto :goto_12

    :catchall_4f
    move-exception v22

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_4f

    throw v22

    .line 476
    .end local v6    # "empty":Z
    .end local v16    # "skipFinal":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_52
    move-exception v22

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v22

    .line 515
    .restart local v6    # "empty":Z
    .restart local v16    # "skipFinal":Z
    .restart local v18    # "term":Ljava/lang/Object;
    :cond_55
    if-nez v6, :cond_12f

    .line 519
    :try_start_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 521
    .local v11, "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    array-length v9, v11

    .line 523
    .local v9, "len":I
    const-wide v12, 0x7fffffffffffffffL

    .line 525
    .local v12, "maxRequested":J
    const/16 v19, 0x0

    .line 530
    .local v19, "unsubscribed":I
    move-object v4, v11

    .local v4, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_6e
    if-ge v7, v10, :cond_8c

    aget-object v8, v4, v7

    .line 531
    .local v8, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v14

    .line 534
    .local v14, "r":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-ltz v22, :cond_83

    .line 535
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 530
    :cond_80
    :goto_80
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e

    .line 538
    :cond_83
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v22, v14, v22

    if-nez v22, :cond_80

    .line 539
    add-int/lit8 v19, v19, 0x1

    goto :goto_80

    .line 546
    .end local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v14    # "r":J
    :cond_8c
    move/from16 v0, v19

    if-ne v9, v0, :cond_df

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 551
    .local v20, "v":Ljava/lang/Object;
    if-nez v20, :cond_c3

    const/16 v22, 0x1

    :goto_a4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_ad
    .catchall {:try_start_57 .. :try_end_ad} :catchall_d1

    move-result v22

    if-eqz v22, :cond_c6

    .line 552
    const/16 v16, 0x1

    .line 633
    if-nez v16, :cond_12

    .line 635
    monitor-enter p0

    .line 636
    const/16 v22, 0x0

    :try_start_b7
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 637
    monitor-exit p0

    goto/16 :goto_12

    :catchall_c0
    move-exception v22

    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c0

    throw v22

    .line 551
    :cond_c3
    const/16 v22, 0x0

    goto :goto_a4

    .line 556
    :cond_c6
    const-wide/16 v22, 0x1

    :try_start_c8
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_d1

    goto/16 :goto_26

    .line 633
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v6    # "empty":Z
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v18    # "term":Ljava/lang/Object;
    .end local v19    # "unsubscribed":I
    .end local v20    # "v":Ljava/lang/Object;
    :catchall_d1
    move-exception v22

    if-nez v16, :cond_de

    .line 635
    monitor-enter p0

    .line 636
    const/16 v23, 0x0

    :try_start_d7
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 637
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_d7 .. :try_end_de} :catchall_1ac

    :cond_de
    throw v22

    .line 563
    .restart local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .restart local v6    # "empty":Z
    .restart local v7    # "i$":I
    .restart local v9    # "len":I
    .restart local v10    # "len$":I
    .restart local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v12    # "maxRequested":J
    .restart local v18    # "term":Ljava/lang/Object;
    .restart local v19    # "unsubscribed":I
    :cond_df
    const/4 v5, 0x0

    .line 564
    .local v5, "d":I
    :goto_e0
    int-to-long v0, v5

    move-wide/from16 v22, v0

    cmp-long v22, v22, v12

    if-gez v22, :cond_11b

    .line 565
    :try_start_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 567
    .restart local v20    # "v":Ljava/lang/Object;
    if-nez v20, :cond_117

    const/4 v6, 0x1

    .line 569
    :goto_fa
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_101
    .catchall {:try_start_e7 .. :try_end_101} :catchall_d1

    move-result v22

    if-eqz v22, :cond_119

    .line 570
    const/16 v16, 0x1

    .line 633
    if-nez v16, :cond_12

    .line 635
    monitor-enter p0

    .line 636
    const/16 v22, 0x0

    :try_start_10b
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 637
    monitor-exit p0

    goto/16 :goto_12

    :catchall_114
    move-exception v22

    monitor-exit p0
    :try_end_116
    .catchall {:try_start_10b .. :try_end_116} :catchall_114

    throw v22

    .line 567
    :cond_117
    const/4 v6, 0x0

    goto :goto_fa

    .line 574
    :cond_119
    if-eqz v6, :cond_154

    .line 603
    .end local v20    # "v":Ljava/lang/Object;
    :cond_11b
    if-lez v5, :cond_127

    .line 604
    int-to-long v0, v5

    move-wide/from16 v22, v0

    :try_start_120
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V

    .line 609
    :cond_127
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_12f

    if-eqz v6, :cond_26

    .line 616
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v5    # "d":I
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v19    # "unsubscribed":I
    :cond_12f
    monitor-enter p0
    :try_end_130
    .catchall {:try_start_120 .. :try_end_130} :catchall_d1

    .line 620
    :try_start_130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    move/from16 v22, v0

    if-nez v22, :cond_19e

    .line 622
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 624
    const/16 v16, 0x1

    .line 625
    monitor-exit p0
    :try_end_143
    .catchall {:try_start_130 .. :try_end_143} :catchall_1a9

    .line 633
    if-nez v16, :cond_12

    .line 635
    monitor-enter p0

    .line 636
    const/16 v22, 0x0

    :try_start_148
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 637
    monitor-exit p0

    goto/16 :goto_12

    :catchall_151
    move-exception v22

    monitor-exit p0
    :try_end_153
    .catchall {:try_start_148 .. :try_end_153} :catchall_151

    throw v22

    .line 578
    .restart local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .restart local v5    # "d":I
    .restart local v7    # "i$":I
    .restart local v9    # "len":I
    .restart local v10    # "len$":I
    .restart local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v12    # "maxRequested":J
    .restart local v19    # "unsubscribed":I
    .restart local v20    # "v":Ljava/lang/Object;
    :cond_154
    :try_start_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 580
    .local v21, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v11

    array-length v10, v4

    const/4 v7, 0x0

    :goto_165
    if-ge v7, v10, :cond_19a

    aget-object v8, v4, v7

    .line 585
    .restart local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J
    :try_end_16c
    .catchall {:try_start_154 .. :try_end_16c} :catchall_d1

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_185

    .line 587
    :try_start_173
    iget-object v0, v8, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_17e
    .catch Ljava/lang/Throwable; {:try_start_173 .. :try_end_17e} :catch_188
    .catchall {:try_start_173 .. :try_end_17e} :catchall_d1

    .line 595
    const-wide/16 v22, 0x1

    :try_start_180
    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lrx/internal/operators/OperatorPublish$InnerProducer;->produced(J)J

    .line 580
    :cond_185
    :goto_185
    add-int/lit8 v7, v7, 0x1

    goto :goto_165

    .line 588
    :catch_188
    move-exception v17

    .line 590
    .local v17, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->unsubscribe()V

    .line 591
    iget-object v0, v8, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V
    :try_end_199
    .catchall {:try_start_180 .. :try_end_199} :catchall_d1

    goto :goto_185

    .line 599
    .end local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_19a
    add-int/lit8 v5, v5, 0x1

    .line 600
    goto/16 :goto_e0

    .line 628
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v5    # "d":I
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v19    # "unsubscribed":I
    .end local v20    # "v":Ljava/lang/Object;
    .end local v21    # "value":Ljava/lang/Object;, "TT;"
    :cond_19e
    const/16 v22, 0x0

    :try_start_1a0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 629
    monitor-exit p0

    goto/16 :goto_26

    :catchall_1a9
    move-exception v22

    monitor-exit p0
    :try_end_1ab
    .catchall {:try_start_1a0 .. :try_end_1ab} :catchall_1a9

    :try_start_1ab
    throw v22
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_d1

    .line 637
    .end local v6    # "empty":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_1ac
    move-exception v22

    :try_start_1ad
    monitor-exit p0
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    throw v22
.end method

.method init()V
    .registers 2

    .prologue
    .line 259
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;-><init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->add(Lrx/Subscription;)V

    .line 268
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 303
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 304
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 307
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 309
    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 293
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 298
    :cond_f
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
    .line 280
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 281
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 287
    :goto_16
    return-void

    .line 285
    :cond_17
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    goto :goto_16
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V

    .line 275
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorPublish$InnerProducer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const/4 v7, 0x0

    .line 352
    :cond_1
    iget-object v5, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 354
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v5, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-eq v0, v5, :cond_11

    sget-object v5, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v0, v5, :cond_12

    .line 387
    :cond_11
    :goto_11
    return-void

    .line 359
    :cond_12
    const/4 v2, -0x1

    .line 360
    .local v2, "j":I
    array-length v3, v0

    .line 361
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v3, :cond_20

    .line 362
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 363
    move v2, v1

    .line 368
    :cond_20
    if-ltz v2, :cond_11

    .line 375
    const/4 v5, 0x1

    if-ne v3, v5, :cond_33

    .line 376
    sget-object v4, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 386
    .local v4, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :goto_27
    iget-object v5, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_11

    .line 361
    .end local v4    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 379
    :cond_33
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 381
    .restart local v4    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27
.end method
