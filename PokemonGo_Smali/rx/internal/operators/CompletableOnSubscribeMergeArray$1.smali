.class Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeArray.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeMergeArray;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeMergeArray;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeMergeArray;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Completable$CompletableSubscriber;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 6

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMergeArray;

    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p3, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$s:Lrx/Completable$CompletableSubscriber;

    iput-object p5, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_17

    .line 76
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 77
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 80
    :cond_17
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 66
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 71
    :goto_14
    return-void

    .line 69
    :cond_15
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 60
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 61
    return-void
.end method
