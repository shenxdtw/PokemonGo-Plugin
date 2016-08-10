.class Lrx/internal/operators/OperatorSkipWhile$1;
.super Lrx/Subscriber;
.source "OperatorSkipWhile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field index:I

.field skipping:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorSkipWhile;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipWhile;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 5

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipWhile$1;->this$0:Lrx/internal/operators/OperatorSkipWhile;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSkipWhile$1;->skipping:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->skipping:Z

    if-nez v2, :cond_a

    .line 42
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 58
    :goto_9
    return-void

    .line 46
    :cond_a
    :try_start_a
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->this$0:Lrx/internal/operators/OperatorSkipWhile;

    iget-object v2, v2, Lrx/internal/operators/OperatorSkipWhile;->predicate:Lrx/functions/Func2;

    iget v3, p0, Lrx/internal/operators/OperatorSkipWhile$1;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lrx/internal/operators/OperatorSkipWhile$1;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_21} :catch_2d

    move-result v1

    .line 51
    .local v1, "skip":Z
    if-nez v1, :cond_34

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->skipping:Z

    .line 53
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_9

    .line 47
    .end local v1    # "skip":Z
    :catch_2d
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-static {v0, v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_9

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "skip":Z
    :cond_34
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorSkipWhile$1;->request(J)V

    goto :goto_9
.end method
