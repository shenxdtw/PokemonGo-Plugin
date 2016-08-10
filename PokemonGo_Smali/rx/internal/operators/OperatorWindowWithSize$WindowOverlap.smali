.class final Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowOverlap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final cancel:Lrx/Subscription;

.field volatile done:Z

.field final drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

.field error:Ljava/lang/Throwable;

.field index:I

.field produced:I

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final size:I

.field final skip:I

.field final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 8
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 314
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->actual:Lrx/Subscriber;

    .line 315
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->size:I

    .line 316
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    .line 317
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    .line 319
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 321
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->cancel:Lrx/Subscription;

    .line 322
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->cancel:Lrx/Subscription;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->add(Lrx/Subscription;)V

    .line 323
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->request(J)V

    .line 324
    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, p2

    div-int v0, v1, p3

    .line 325
    .local v0, "maxWindows":I
    new-instance v1, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->queue:Ljava/util/Queue;

    .line 326
    return-void
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->request(J)V

    return-void
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 398
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b

    .line 399
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->unsubscribe()V

    .line 401
    :cond_b
    return-void
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .registers 8
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-",
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;",
            "Ljava/util/Queue",
            "<",
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/subjects/Subject<TT;TT;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/subjects/Subject<TT;TT;>;>;"
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 456
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 471
    :goto_a
    return v1

    .line 459
    :cond_b
    if-eqz p1, :cond_1e

    .line 460
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->error:Ljava/lang/Throwable;

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_18

    .line 462
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 463
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 466
    :cond_18
    if-eqz p2, :cond_1e

    .line 467
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_a

    .line 471
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 393
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;)V

    return-object v0
.end method

.method drain()V
    .registers 15

    .prologue
    .line 404
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    .local v2, "dw":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_9

    .line 452
    :cond_8
    :goto_8
    return-void

    .line 409
    :cond_9
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->actual:Lrx/Subscriber;

    .line 410
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/subjects/Subject<TT;TT;>;>;"
    iget-object v7, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->queue:Ljava/util/Queue;

    .line 412
    .local v7, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/subjects/Subject<TT;TT;>;>;"
    const/4 v6, 0x1

    .line 416
    .local v6, "missed":I
    :cond_e
    iget-object v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 417
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 419
    .local v4, "e":J
    :goto_16
    cmp-long v11, v4, v8

    if-eqz v11, :cond_2d

    .line 420
    iget-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    .line 421
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/subjects/Subject;

    .line 422
    .local v10, "v":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v10, :cond_5a

    const/4 v3, 0x1

    .line 424
    .local v3, "empty":Z
    :goto_25
    invoke-virtual {p0, v1, v3, v0, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 428
    if-eqz v3, :cond_5c

    .line 437
    .end local v1    # "d":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_2d
    cmp-long v11, v4, v8

    if-nez v11, :cond_3d

    .line 438
    iget-boolean v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v0, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 443
    :cond_3d
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_52

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_52

    .line 444
    iget-object v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 447
    :cond_52
    neg-int v11, v6

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 448
    if-nez v6, :cond_e

    goto :goto_8

    .line 422
    .restart local v1    # "d":Z
    .restart local v10    # "v":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_5a
    const/4 v3, 0x0

    goto :goto_25

    .line 432
    .restart local v3    # "empty":Z
    :cond_5c
    invoke-virtual {v0, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 434
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 435
    goto :goto_16
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 383
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/Subject;

    .line 384
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v1}, Lrx/subjects/Subject;->onCompleted()V

    goto :goto_6

    .line 386
    .end local v1    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_16
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    .line 389
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drain()V

    .line 390
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 371
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/Subject;

    .line 372
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v1, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 374
    .end local v1    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_16
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->error:Ljava/lang/Throwable;

    .line 377
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    .line 378
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drain()V

    .line 379
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->index:I

    .line 332
    .local v0, "i":I
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    .line 334
    .local v3, "q":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lrx/subjects/Subject<TT;TT;>;>;"
    if-nez v0, :cond_24

    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->actual:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_24

    .line 335
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 337
    const/16 v5, 0x10

    invoke-static {v5, p0}, Lrx/internal/operators/UnicastSubject;->create(ILrx/functions/Action0;)Lrx/internal/operators/UnicastSubject;

    move-result-object v4

    .line 338
    .local v4, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 340
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->queue:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drain()V

    .line 344
    .end local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_24
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/Subject;

    .line 345
    .restart local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v4, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_2a

    .line 348
    .end local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_3a
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->produced:I

    add-int/lit8 v2, v5, 0x1

    .line 350
    .local v2, "p":I
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->size:I

    if-ne v2, v5, :cond_5d

    .line 351
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    sub-int v5, v2, v5

    iput v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->produced:I

    .line 353
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/Subject;

    .line 354
    .restart local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v4, :cond_53

    .line 355
    invoke-virtual {v4}, Lrx/subjects/Subject;->onCompleted()V

    .line 361
    .end local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    .line 362
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    if-ne v0, v5, :cond_60

    .line 363
    const/4 v5, 0x0

    iput v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->index:I

    .line 367
    :goto_5c
    return-void

    .line 358
    :cond_5d
    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->produced:I

    goto :goto_53

    .line 365
    :cond_60
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->index:I

    goto :goto_5c
.end method
