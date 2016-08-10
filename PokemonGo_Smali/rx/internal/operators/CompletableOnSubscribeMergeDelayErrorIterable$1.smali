.class Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeDelayErrorIterable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;

.field final synthetic val$queue:Ljava/util/Queue;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;Lrx/subscriptions/CompositeSubscription;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lrx/Completable$CompletableSubscriber;)V
    .registers 6

    .prologue
    .line 120
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;

    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p3, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$queue:Ljava/util/Queue;

    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->tryTerminate()V

    .line 135
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->tryTerminate()V

    .line 130
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 123
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 124
    return-void
.end method

.method tryTerminate()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_15

    .line 139
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 140
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 145
    :cond_15
    :goto_15
    return-void

    .line 142
    :cond_16
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$s:Lrx/Completable$CompletableSubscriber;

    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;->val$queue:Ljava/util/Queue;

    invoke-static {v1}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
