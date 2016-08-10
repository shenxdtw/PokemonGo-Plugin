.class public final Lrx/internal/operators/CompletableOnSubscribeMergeIterable;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeIterable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;->sources:Ljava/lang/Iterable;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 15
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 36
    new-instance v2, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 37
    .local v2, "set":Lrx/subscriptions/CompositeSubscription;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 38
    .local v5, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 40
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 45
    :try_start_14
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_27

    move-result-object v9

    .line 51
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v9, :cond_39

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 146
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_26
    :goto_26
    return-void

    .line 46
    :catch_27
    move-exception v8

    .line 47
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 111
    .end local v8    # "e":Ljava/lang/Throwable;
    .local v6, "b":Z
    .local v7, "c":Lrx/Completable;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_2c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 113
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/CompletableOnSubscribeMergeIterable$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMergeIterable;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Completable$CompletableSubscriber;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 57
    .end local v6    # "b":Z
    .end local v7    # "c":Lrx/Completable;
    :cond_39
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_26

    .line 63
    :try_start_3f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_55

    move-result v6

    .line 74
    .restart local v6    # "b":Z
    if-nez v6, :cond_6f

    .line 141
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_26

    .line 142
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 143
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_26

    .line 64
    .end local v6    # "b":Z
    :catch_55
    move-exception v8

    .line 65
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 66
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 67
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 69
    :cond_63
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 78
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :cond_6f
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_26

    .line 85
    :try_start_75
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/Completable;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7b} :catch_97

    .line 96
    .restart local v7    # "c":Lrx/Completable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_26

    .line 100
    if-nez v7, :cond_2c

    .line 101
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 102
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v10, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 103
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 104
    invoke-interface {p1, v10}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 86
    .end local v7    # "c":Lrx/Completable;
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :catch_97
    move-exception v8

    .line 87
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 88
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 89
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 91
    :cond_a5
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 106
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v7    # "c":Lrx/Completable;
    .restart local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_b2
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, v10}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto/16 :goto_26
.end method
