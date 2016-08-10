.class Lrx/internal/operators/OperatorDistinctUntilChanged$1;
.super Lrx/Subscriber;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field hasPrevious:Z

.field previousKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iput-object p3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 89
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 62
    .local v0, "currentKey":Ljava/lang/Object;, "TU;"
    :try_start_2
    iget-object v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iget-object v3, v3, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_20

    move-result-object v2

    .line 67
    .local v2, "key":Ljava/lang/Object;, "TU;"
    iput-object v2, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 69
    iget-boolean v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    if-eqz v3, :cond_2d

    .line 70
    if-eq v0, v2, :cond_27

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 71
    :cond_1a
    iget-object v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 79
    .end local v2    # "key":Ljava/lang/Object;, "TU;"
    :goto_1f
    return-void

    .line 63
    :catch_20
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-static {v1, v3, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_1f

    .line 73
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "key":Ljava/lang/Object;, "TU;"
    :cond_27
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->request(J)V

    goto :goto_1f

    .line 76
    :cond_2d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    .line 77
    iget-object v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1f
.end method
