.class Lrx/internal/operators/OnSubscribeRefCount$3;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->disconnect(Lrx/subscriptions/CompositeSubscription;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;

.field final synthetic val$current:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/subscriptions/CompositeSubscription;)V
    .registers 3

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$3;, "Lrx/internal/operators/OnSubscribeRefCount.3;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->val$current:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$3;, "Lrx/internal/operators/OnSubscribeRefCount.3;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 154
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->val$current:Lrx/subscriptions/CompositeSubscription;

    if-ne v0, v1, :cond_29

    .line 155
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_29

    .line 156
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 159
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_31

    .line 163
    :cond_29
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    return-void

    .line 163
    :catchall_31
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
