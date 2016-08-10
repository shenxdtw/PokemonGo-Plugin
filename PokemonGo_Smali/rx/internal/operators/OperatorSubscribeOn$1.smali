.class Lrx/internal/operators/OperatorSubscribeOn$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSubscribeOn;

.field final synthetic val$inner:Lrx/Scheduler$Worker;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->this$0:Lrx/internal/operators/OperatorSubscribeOn;

    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 50
    .local v1, "t":Ljava/lang/Thread;
    new-instance v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v2, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {v0, p0, v2, v1}, Lrx/internal/operators/OperatorSubscribeOn$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Subscriber;Ljava/lang/Thread;)V

    .line 94
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->this$0:Lrx/internal/operators/OperatorSubscribeOn;

    iget-object v2, v2, Lrx/internal/operators/OperatorSubscribeOn;->source:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 95
    return-void
.end method
