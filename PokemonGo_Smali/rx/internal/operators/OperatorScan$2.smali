.class Lrx/internal/operators/OperatorScan$2;
.super Lrx/Subscriber;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field once:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorScan;

.field final synthetic val$child:Lrx/Subscriber;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    iput-object p3, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 125
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorScan$2;->once:Z

    if-nez v2, :cond_10

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorScan$2;->once:Z

    .line 105
    move-object v1, p1

    .line 115
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :goto_8
    iput-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 117
    :goto_f
    return-void

    .line 107
    .end local v1    # "v":Ljava/lang/Object;, "TR;"
    :cond_10
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 109
    .restart local v1    # "v":Ljava/lang/Object;, "TR;"
    :try_start_12
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    iget-object v2, v2, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    invoke-interface {v2, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_8

    .line 110
    :catch_1b
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-static {v0, v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_f
.end method
