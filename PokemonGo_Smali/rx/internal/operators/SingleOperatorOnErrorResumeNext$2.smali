.class Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;
.super Lrx/SingleSubscriber;
.source "SingleOperatorOnErrorResumeNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    iput-object p2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    # getter for: Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->resumeFunctionInCaseOfError:Lrx/functions/Func1;
    invoke-static {v1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->access$000(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;)Lrx/functions/Func1;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Single;

    iget-object v2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v1, v2}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 59
    :goto_11
    return-void

    .line 56
    :catch_12
    move-exception v0

    .line 57
    .local v0, "innerError":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/SingleSubscriber;)V

    goto :goto_11
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
