.class Lrx/internal/operators/OperatorAll$1;
.super Lrx/Subscriber;
.source "OperatorAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorAll;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorAll;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorAll;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorAll$1;->this$0:Lrx/internal/operators/OperatorAll;

    iput-object p2, p0, Lrx/internal/operators/OperatorAll$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorAll$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    const/4 v1, 0x1

    .line 68
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    if-nez v0, :cond_10

    .line 69
    iput-boolean v1, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorAll$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 72
    :cond_10
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorAll$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorAll$1;->this$0:Lrx/internal/operators/OperatorAll;

    iget-object v2, v2, Lrx/internal/operators/OperatorAll;->predicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_25

    .line 52
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    iget-boolean v2, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    if-nez v2, :cond_24

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    .line 54
    iget-object v2, p0, Lrx/internal/operators/OperatorAll$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lrx/internal/operators/OperatorAll$1;->unsubscribe()V

    .line 59
    .end local v1    # "result":Ljava/lang/Boolean;
    :cond_24
    :goto_24
    return-void

    .line 48
    :catch_25
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_24
.end method
