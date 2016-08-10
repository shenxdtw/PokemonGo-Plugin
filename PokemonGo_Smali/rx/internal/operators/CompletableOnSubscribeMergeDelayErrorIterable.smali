.class public final Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeDelayErrorIterable.java"

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
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;->sources:Ljava/lang/Iterable;

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
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 12
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 36
    new-instance v2, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 37
    .local v2, "set":Lrx/subscriptions/CompositeSubscription;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 39
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Lrx/internal/util/unsafe/MpscLinkedQueue;

    invoke-direct {v3}, Lrx/internal/util/unsafe/MpscLinkedQueue;-><init>()V

    .line 41
    .local v3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 46
    :try_start_13
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_26

    move-result-object v9

    .line 52
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v9, :cond_38

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 156
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_25
    :goto_25
    return-void

    .line 47
    :catch_26
    move-exception v8

    .line 48
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 118
    .end local v8    # "e":Ljava/lang/Throwable;
    .local v6, "b":Z
    .local v7, "c":Lrx/Completable;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_2b
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 120
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;Lrx/subscriptions/CompositeSubscription;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v7, v0}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 58
    .end local v6    # "b":Z
    .end local v7    # "c":Lrx/Completable;
    :cond_38
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 64
    :try_start_3e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_54

    move-result v6

    .line 77
    .restart local v6    # "b":Z
    if-nez v6, :cond_70

    .line 149
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_25

    .line 150
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 151
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_25

    .line 65
    .end local v6    # "b":Z
    :catch_54
    move-exception v8

    .line 66
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_25

    .line 68
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 69
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_25

    .line 71
    :cond_68
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 81
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :cond_70
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 88
    :try_start_76
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/Completable;
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_7c} :catch_9e

    .line 101
    .restart local v7    # "c":Lrx/Completable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 105
    if-nez v7, :cond_2b

    .line 106
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v8, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 107
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_25

    .line 109
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 110
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_25

    .line 89
    .end local v7    # "c":Lrx/Completable;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_9e
    move-exception v8

    .line 90
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_25

    .line 92
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 93
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto/16 :goto_25

    .line 95
    :cond_b3
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 112
    .restart local v7    # "c":Lrx/Completable;
    .local v8, "e":Ljava/lang/NullPointerException;
    :cond_bc
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 153
    .end local v7    # "c":Lrx/Completable;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_c5
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_25
.end method
