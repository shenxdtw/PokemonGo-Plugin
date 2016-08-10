.class Lrx/internal/operators/OperatorSubscribeOn$1$1;
.super Lrx/Subscriber;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

.field final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Subscriber;Ljava/lang/Thread;)V
    .registers 4

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->val$t:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 72
    return-void

    .line 70
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 61
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 63
    return-void

    .line 61
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 91
    return-void
.end method
