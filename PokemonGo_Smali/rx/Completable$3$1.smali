.class Lrx/Completable$3$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$3;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$3;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/Completable$3;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/Completable$CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 130
    iput-object p1, p0, Lrx/Completable$3$1;->this$0:Lrx/Completable$3;

    iput-object p2, p0, Lrx/Completable$3$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p4, p0, Lrx/Completable$3$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lrx/Completable$3$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 134
    iget-object v0, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 135
    iget-object v0, p0, Lrx/Completable$3$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 137
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    iget-object v0, p0, Lrx/Completable$3$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 142
    iget-object v0, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 143
    iget-object v0, p0, Lrx/Completable$3$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    :goto_14
    return-void

    .line 145
    :cond_15
    sget-object v0, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 151
    iget-object v0, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 152
    return-void
.end method
