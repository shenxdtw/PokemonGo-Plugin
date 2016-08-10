.class Lrx/internal/operators/CompletableOnSubscribeTimeout$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeTimeout;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/Completable$CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 55
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 59
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 60
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->other:Lrx/Completable;

    if-nez v0, :cond_20

    .line 61
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/Completable$CompletableSubscriber;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 85
    :cond_1f
    :goto_1f
    return-void

    .line 63
    :cond_20
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->other:Lrx/Completable;

    new-instance v1, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeTimeout$1;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    goto :goto_1f
.end method
