.class final Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncOuterManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field private static final IS_UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field concatProducer:Lrx/Producer;

.field emitting:Z

.field expectedDelivery:J

.field private hasTerminated:Z

.field private volatile isUnsubscribed:I

.field private final merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private onNextCalled:Z

.field private final parent:Lrx/observables/AsyncOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final serializedSubscriber:Lrx/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedObserver",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final subscriptions:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 354
    const-class v0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    const-string v1, "isUnsubscribed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->IS_UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/observables/AsyncOnSubscribe;Ljava/lang/Object;Lrx/observables/AsyncOnSubscribe$UnicastSubject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;TS;",
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject",
            "<",
            "Lrx/Observable",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .local p1, "parent":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p2, "initialState":Ljava/lang/Object;, "TS;"
    .local p3, "merger":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 374
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    .line 375
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p0}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->serializedSubscriber:Lrx/observers/SerializedObserver;

    .line 376
    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    .line 377
    iput-object p3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    .line 378
    return-void
.end method

.method private handleThrownError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 547
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_10

    .line 548
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 554
    :goto_f
    return-void

    .line 550
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 551
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 552
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    goto :goto_f
.end method

.method private subscribeBufferToObservable(Lrx/Observable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    .line 588
    .local v0, "buffer":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-wide v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->expectedDelivery:J

    .line 589
    .local v2, "expected":J
    new-instance v4, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;

    invoke-direct {v4, p0, v2, v3, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;-><init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;JLrx/internal/operators/BufferUntilSubscriber;)V

    .line 609
    .local v4, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v5, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v5, v4}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 611
    new-instance v5, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;

    invoke-direct {v5, p0, v4}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;-><init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;Lrx/Subscriber;)V

    invoke-virtual {p1, v5}, Lrx/Observable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    .line 617
    .local v1, "doOnTerminate":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v1, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 619
    iget-object v5, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v5, v0}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onNext(Ljava/lang/Object;)V

    .line 620
    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 4

    .prologue
    .line 412
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 414
    :try_start_5
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    iget-object v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/AsyncOnSubscribe;->onUnsubscribe(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_d

    .line 418
    :goto_c
    return-void

    .line 415
    :catch_d
    move-exception v0

    .line 416
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 404
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public nextIteration(J)V
    .registers 6
    .param p1, "requestCount"    # J

    .prologue
    .line 408
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    iget-object v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->serializedSubscriber:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/observables/AsyncOnSubscribe;->next(Ljava/lang/Object;JLrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    .line 409
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 558
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 562
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onCompleted()V

    .line 563
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 567
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 571
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 572
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 350
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    if-eqz v0, :cond_c

    .line 577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    .line 580
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_14

    .line 583
    :goto_13
    return-void

    .line 582
    :cond_14
    invoke-direct {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscribeBufferToObservable(Lrx/Observable;)V

    goto :goto_13
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const-wide/16 v6, 0x0

    .line 422
    cmp-long v3, p1, v6

    if-nez v3, :cond_7

    .line 466
    :cond_6
    :goto_6
    return-void

    .line 425
    :cond_7
    cmp-long v3, p1, v6

    if-gez v3, :cond_24

    .line 426
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request can\'t be negative! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    :cond_24
    const/4 v2, 0x0

    .line 429
    .local v2, "quit":Z
    monitor-enter p0

    .line 430
    :try_start_26
    iget-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v3, :cond_58

    .line 431
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 432
    .local v1, "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_35

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 436
    :cond_35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    const/4 v2, 0x1

    .line 442
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_5c

    .line 444
    iget-object v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    invoke-interface {v3, p1, p2}, Lrx/Producer;->request(J)V

    .line 446
    if-nez v2, :cond_6

    .line 450
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v3

    if-nez v3, :cond_6

    .line 455
    :cond_4b
    monitor-enter p0

    .line 456
    :try_start_4c
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 457
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_5f

    .line 458
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 459
    monitor-exit p0

    goto :goto_6

    .line 462
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_55
    move-exception v3

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v3

    .line 440
    :cond_58
    const/4 v3, 0x1

    :try_start_59
    iput-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    goto :goto_3d

    .line 442
    :catchall_5c
    move-exception v3

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_5c

    throw v3

    .line 461
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5f
    const/4 v3, 0x0

    :try_start_60
    iput-object v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 462
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_55

    .line 464
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 465
    .local v4, "r":J
    invoke-virtual {p0, v4, v5}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_6
.end method

.method public requestRemaining(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const-wide/16 v6, 0x0

    .line 478
    cmp-long v4, p1, v6

    if-nez v4, :cond_7

    .line 514
    :cond_6
    :goto_6
    return-void

    .line 481
    :cond_7
    cmp-long v4, p1, v6

    if-gez v4, :cond_24

    .line 482
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request can\'t be negative! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 484
    :cond_24
    monitor-enter p0

    .line 485
    :try_start_25
    iget-boolean v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v4, :cond_40

    .line 486
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 487
    .local v1, "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_34

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 491
    :cond_34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    monitor-exit p0

    goto :goto_6

    .line 496
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_3d
    move-exception v4

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_3d

    throw v4

    .line 495
    :cond_40
    const/4 v4, 0x1

    :try_start_41
    iput-boolean v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 496
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3d

    .line 498
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v4

    if-nez v4, :cond_6

    .line 503
    :cond_4a
    monitor-enter p0

    .line 504
    :try_start_4b
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 505
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_57

    .line 506
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 507
    monitor-exit p0

    goto :goto_6

    .line 510
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_54
    move-exception v4

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    throw v4

    .line 509
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_57
    const/4 v4, 0x0

    :try_start_58
    iput-object v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 510
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_54

    .line 512
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 513
    .local v2, "r":J
    invoke-virtual {p0, v2, v3}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v4

    if-eqz v4, :cond_5f

    goto :goto_6
.end method

.method setConcatProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 396
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    if-eqz v0, :cond_c

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setConcatProducer may be called at most once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_c
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    .line 400
    return-void
.end method

.method tryEmit(J)Z
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 521
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 522
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    .line 543
    :goto_b
    return v1

    .line 527
    :cond_c
    const/4 v3, 0x0

    :try_start_d
    iput-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    .line 528
    iput-wide p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->expectedDelivery:J

    .line 529
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->nextIteration(J)V

    .line 531
    iget-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-nez v3, :cond_1e

    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 532
    :cond_1e
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_b

    .line 539
    :catch_22
    move-exception v0

    .line 540
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 535
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_27
    :try_start_27
    iget-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    if-nez v3, :cond_36

    .line 536
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No events emitted!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_35} :catch_22

    goto :goto_b

    :cond_36
    move v1, v2

    .line 543
    goto :goto_b
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const/4 v2, 0x1

    .line 382
    sget-object v0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->IS_UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 383
    monitor-enter p0

    .line 384
    :try_start_b
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v0, :cond_23

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 386
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    monitor-exit p0

    .line 393
    :cond_22
    :goto_22
    return-void

    .line 389
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 390
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_2b

    .line 391
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    goto :goto_22

    .line 390
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
