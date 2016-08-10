.class Lrx/internal/operators/OperatorMulticast$2;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;

.field final synthetic val$gs:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$2;, "Lrx/internal/operators/OperatorMulticast.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$2;, "Lrx/internal/operators/OperatorMulticast.2;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v2, v1, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v1, v1, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    iget-object v3, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_2e

    .line 102
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v0, v1, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 103
    .local v0, "s":Lrx/Subscription;
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    iput-object v3, v1, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 104
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    iput-object v3, v1, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    .line 105
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v1, v1, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 109
    if-eqz v0, :cond_2d

    .line 110
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 112
    .end local v0    # "s":Lrx/Subscription;
    :cond_2d
    :goto_2d
    return-void

    .line 107
    :cond_2e
    :try_start_2e
    monitor-exit v2

    goto :goto_2d

    .line 108
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v1
.end method
