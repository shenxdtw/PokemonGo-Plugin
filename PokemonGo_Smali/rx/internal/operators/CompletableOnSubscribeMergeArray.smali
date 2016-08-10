.class public final Lrx/internal/operators/CompletableOnSubscribeMergeArray;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeArray.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# instance fields
.field final sources:[Lrx/Completable;


# direct methods
.method public constructor <init>([Lrx/Completable;)V
    .registers 2
    .param p1, "sources"    # [Lrx/Completable;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->sources:[Lrx/Completable;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 15
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 35
    new-instance v2, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 36
    .local v2, "set":Lrx/subscriptions/CompositeSubscription;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->sources:[Lrx/Completable;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    .local v5, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 39
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 41
    iget-object v6, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->sources:[Lrx/Completable;

    .local v6, "arr$":[Lrx/Completable;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1d
    if-ge v8, v9, :cond_56

    aget-object v7, v6, v8

    .line 42
    .local v7, "c":Lrx/Completable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 90
    .end local v7    # "c":Lrx/Completable;
    :cond_27
    :goto_27
    return-void

    .line 46
    .restart local v7    # "c":Lrx/Completable;
    :cond_28
    if-nez v7, :cond_49

    .line 47
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 48
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v10, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 50
    invoke-interface {p1, v10}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 53
    :cond_3e
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, v10}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 57
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_49
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMergeArray;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Completable$CompletableSubscriber;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 41
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 85
    .end local v7    # "c":Lrx/Completable;
    :cond_56
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_27

    .line 86
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 87
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_27
.end method
