.class Lrx/internal/operators/OperatorZipIterable$1;
.super Lrx/Subscriber;
.source "OperatorZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorZipIterable;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorZipIterable;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorZipIterable;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/Iterator;)V
    .registers 5

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorZipIterable$1;, "Lrx/internal/operators/OperatorZipIterable.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZipIterable$1;->this$0:Lrx/internal/operators/OperatorZipIterable;

    iput-object p3, p0, Lrx/internal/operators/OperatorZipIterable$1;->val$subscriber:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorZipIterable$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorZipIterable$1;, "Lrx/internal/operators/OperatorZipIterable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorZipIterable$1;->done:Z

    if-eqz v0, :cond_5

    .line 57
    :goto_4
    return-void

    .line 55
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorZipIterable$1;->done:Z

    .line 56
    iget-object v0, p0, Lrx/internal/operators/OperatorZipIterable$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorZipIterable$1;, "Lrx/internal/operators/OperatorZipIterable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorZipIterable$1;->done:Z

    if-eqz v0, :cond_8

    .line 62
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 67
    :goto_7
    return-void

    .line 65
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorZipIterable$1;->done:Z

    .line 66
    iget-object v0, p0, Lrx/internal/operators/OperatorZipIterable$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorZipIterable$1;, "Lrx/internal/operators/OperatorZipIterable.1;"
    .local p1, "t":Ljava/lang/Object;, "TT1;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorZipIterable$1;->done:Z

    if-eqz v1, :cond_5

    .line 82
    :cond_4
    :goto_4
    return-void

    .line 75
    :cond_5
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OperatorZipIterable$1;->val$subscriber:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorZipIterable$1;->this$0:Lrx/internal/operators/OperatorZipIterable;

    iget-object v2, v2, Lrx/internal/operators/OperatorZipIterable;->zipFunction:Lrx/functions/Func2;

    iget-object v3, p0, Lrx/internal/operators/OperatorZipIterable$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lrx/internal/operators/OperatorZipIterable$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    invoke-virtual {p0}, Lrx/internal/operators/OperatorZipIterable$1;->onCompleted()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_23} :catch_24

    goto :goto_4

    .line 79
    :catch_24
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_4
.end method
