.class Lrx/internal/operators/OperatorScan$3;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorScan;

.field final synthetic val$initialValue:Ljava/lang/Object;

.field final synthetic val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan;Ljava/lang/Object;Lrx/internal/operators/OperatorScan$InitialProducer;)V
    .registers 5

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$3;->this$0:Lrx/internal/operators/OperatorScan;

    iput-object p2, p0, Lrx/internal/operators/OperatorScan$3;->val$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 132
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$initialValue:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorScan$3;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorScan$InitialProducer;->onCompleted()V

    .line 155
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorScan$InitialProducer;->onError(Ljava/lang/Throwable;)V

    .line 150
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
    .line 136
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    .local p1, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$3;->value:Ljava/lang/Object;

    .line 138
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :try_start_2
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$3;->this$0:Lrx/internal/operators/OperatorScan;

    iget-object v2, v2, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    invoke-interface {v2, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_12

    move-result-object v1

    .line 143
    iput-object v1, p0, Lrx/internal/operators/OperatorScan$3;->value:Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v2, v1}, Lrx/internal/operators/OperatorScan$InitialProducer;->onNext(Ljava/lang/Object;)V

    .line 145
    :goto_11
    return-void

    .line 139
    :catch_12
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorScan$InitialProducer;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method
