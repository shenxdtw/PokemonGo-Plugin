.class final Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeUntilPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeUntilPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 35
    iput-object p2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    .line 36
    return-void
.end method


# virtual methods
.method downstreamRequest(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->request(J)V

    .line 73
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    if-nez v0, :cond_9

    .line 61
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 63
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    if-nez v0, :cond_9

    .line 68
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 70
    :cond_9
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
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 40
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "stop":Z
    :try_start_7
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

    iget-object v2, v2, Lrx/internal/operators/OperatorTakeUntilPredicate;->stopPredicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_22

    move-result v1

    .line 51
    if-eqz v1, :cond_21

    .line 52
    iput-boolean v3, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 53
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 54
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->unsubscribe()V

    .line 56
    :cond_21
    :goto_21
    return-void

    .line 45
    :catch_22
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v3, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 47
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-static {v0, v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->unsubscribe()V

    goto :goto_21
.end method
