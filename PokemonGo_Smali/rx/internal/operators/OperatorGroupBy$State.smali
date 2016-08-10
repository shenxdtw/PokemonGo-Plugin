.class final Lrx/internal/operators/OperatorGroupBy$State;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ACTUAL:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$State;",
            "Lrx/Subscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final CANCELLED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$State;",
            ">;"
        }
    .end annotation
.end field

.field static final ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$State;",
            ">;"
        }
    .end annotation
.end field

.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field volatile actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:I

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile once:I

.field final parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<*TK;TT;>;"
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

.field volatile requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 383
    const-class v0, Lrx/internal/operators/OperatorGroupBy$State;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$State;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 391
    const-class v0, Lrx/internal/operators/OperatorGroupBy$State;

    const-string v1, "cancelled"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$State;->CANCELLED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 396
    const-class v0, Lrx/internal/operators/OperatorGroupBy$State;

    const-class v1, Lrx/Subscriber;

    const-string v2, "actual"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$State;->ACTUAL:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 401
    const-class v0, Lrx/internal/operators/OperatorGroupBy$State;

    const-string v1, "once"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$State;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p2, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<*TK;TT;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    .line 407
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    .line 408
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    .line 409
    iput-boolean p4, p0, Lrx/internal/operators/OperatorGroupBy$State;->delayError:Z

    .line 410
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$State;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 440
    invoke-virtual {p1, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 441
    invoke-virtual {p1, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 442
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$State;->ACTUAL:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 447
    :goto_18
    return-void

    .line 445
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method checkTerminated(ZZLrx/Subscriber;Z)Z
    .registers 9
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x1

    .line 528
    iget v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:I

    if-eqz v2, :cond_12

    .line 529
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 530
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    .line 559
    :goto_11
    return v1

    .line 534
    :cond_12
    if-eqz p1, :cond_37

    .line 535
    if-eqz p4, :cond_24

    .line 536
    if-eqz p2, :cond_37

    .line 537
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 538
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_20

    .line 539
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 541
    :cond_20
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_11

    .line 546
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_24
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 547
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_31

    .line 548
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 549
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 552
    :cond_31
    if-eqz p2, :cond_37

    .line 553
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_11

    .line 559
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_37
    const/4 v1, 0x0

    goto :goto_11
.end method

.method drain()V
    .registers 19

    .prologue
    .line 471
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorGroupBy$State;->getAndIncrement()I

    move-result v15

    if-eqz v15, :cond_7

    .line 525
    :cond_6
    return-void

    .line 474
    :cond_7
    const/4 v8, 0x1

    .line 476
    .local v8, "missed":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    .line 477
    .local v10, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorGroupBy$State;->delayError:Z

    .line 478
    .local v4, "delayError":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Lrx/Subscriber;

    .line 479
    .local v2, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v9

    .line 481
    .local v9, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    :cond_18
    :goto_18
    if-eqz v2, :cond_72

    .line 482
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2, v4}, Lrx/internal/operators/OperatorGroupBy$State;->checkTerminated(ZZLrx/Subscriber;Z)Z

    move-result v15

    if-nez v15, :cond_6

    .line 486
    move-object/from16 v0, p0

    iget-wide v12, v0, Lrx/internal/operators/OperatorGroupBy$State;->requested:J

    .line 487
    .local v12, "r":J
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v15, v12, v16

    if-nez v15, :cond_82

    const/4 v11, 0x1

    .line 488
    .local v11, "unbounded":Z
    :goto_3a
    const-wide/16 v6, 0x0

    .line 490
    .local v6, "e":J
    :goto_3c
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-eqz v15, :cond_57

    .line 491
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 492
    .local v3, "d":Z
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v14

    .line 493
    .local v14, "v":Ljava/lang/Object;
    if-nez v14, :cond_84

    const/4 v5, 0x1

    .line 495
    .local v5, "empty":Z
    :goto_4d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v2, v4}, Lrx/internal/operators/OperatorGroupBy$State;->checkTerminated(ZZLrx/Subscriber;Z)Z

    move-result v15

    if-nez v15, :cond_6

    .line 499
    if-eqz v5, :cond_86

    .line 509
    .end local v3    # "d":Z
    .end local v5    # "empty":Z
    .end local v14    # "v":Ljava/lang/Object;
    :cond_57
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-eqz v15, :cond_72

    .line 510
    if-nez v11, :cond_66

    .line 511
    sget-object v15, Lrx/internal/operators/OperatorGroupBy$State;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 513
    :cond_66
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v15, v15, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    neg-long v0, v6

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 517
    .end local v6    # "e":J
    .end local v11    # "unbounded":Z
    .end local v12    # "r":J
    :cond_72
    neg-int v15, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lrx/internal/operators/OperatorGroupBy$State;->addAndGet(I)I

    move-result v8

    .line 518
    if-eqz v8, :cond_6

    .line 521
    if-nez v2, :cond_18

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Lrx/Subscriber;

    goto :goto_18

    .line 487
    .restart local v12    # "r":J
    :cond_82
    const/4 v11, 0x0

    goto :goto_3a

    .line 493
    .restart local v3    # "d":Z
    .restart local v6    # "e":J
    .restart local v11    # "unbounded":Z
    .restart local v14    # "v":Ljava/lang/Object;
    :cond_84
    const/4 v5, 0x0

    goto :goto_4d

    .line 503
    .restart local v5    # "empty":Z
    :cond_86
    invoke-virtual {v9, v14}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v15}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 505
    const-wide/16 v16, 0x1

    sub-long v12, v12, v16

    .line 506
    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    .line 507
    goto :goto_3c
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 425
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iget v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onComplete()V
    .registers 2

    .prologue
    .line 466
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 467
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 468
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 460
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 462
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 463
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
    .line 450
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_10

    .line 451
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 456
    :goto_c
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 457
    return-void

    .line 454
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    const-wide/16 v2, 0x0

    .line 414
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2b

    .line 418
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$State;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    .line 419
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 421
    :cond_2b
    return-void
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 430
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$State;->CANCELLED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 431
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_17

    .line 432
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    .line 435
    :cond_17
    return-void
.end method
