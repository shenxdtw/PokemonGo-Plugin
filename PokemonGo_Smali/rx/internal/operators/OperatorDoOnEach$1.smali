.class Lrx/internal/operators/OperatorDoOnEach$1;
.super Lrx/Subscriber;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoOnEach;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDoOnEach;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 5

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iput-object p3, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v1, :cond_5

    .line 54
    :goto_4
    return-void

    .line 46
    :cond_5
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iget-object v1, v1, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_15

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 53
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4

    .line 47
    :catch_15
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    const/4 v5, 0x1

    .line 59
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v1, :cond_9

    .line 72
    :goto_8
    return-void

    .line 63
    :cond_9
    iput-boolean v5, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 65
    :try_start_b
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iget-object v1, v1, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_18

    .line 71
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 66
    :catch_18
    move-exception v0

    .line 67
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 68
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v1, :cond_5

    .line 86
    :goto_4
    return-void

    .line 80
    :cond_5
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iget-object v1, v1, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_12

    .line 85
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 81
    :catch_12
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_4
.end method
