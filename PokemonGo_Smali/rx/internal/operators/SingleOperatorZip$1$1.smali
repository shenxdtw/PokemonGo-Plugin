.class Lrx/internal/operators/SingleOperatorZip$1$1;
.super Lrx/SingleSubscriber;
.source "SingleOperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorZip$1;->call(Lrx/SingleSubscriber;)V
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
.field final synthetic this$0:Lrx/internal/operators/SingleOperatorZip$1;

.field final synthetic val$j:I

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscriber:Lrx/SingleSubscriber;

.field final synthetic val$values:[Ljava/lang/Object;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOperatorZip$1;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lrx/SingleSubscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 7

    .prologue
    .line 38
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->this$0:Lrx/internal/operators/SingleOperatorZip$1;

    iput-object p2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$values:[Ljava/lang/Object;

    iput p3, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$j:I

    iput-object p4, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$subscriber:Lrx/SingleSubscriber;

    iput-object p6, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 64
    :goto_f
    return-void

    .line 62
    :cond_10
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$values:[Ljava/lang/Object;

    iget v3, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$j:I

    aput-object p1, v2, v3

    .line 42
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1d

    .line 46
    :try_start_e
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->this$0:Lrx/internal/operators/SingleOperatorZip$1;

    iget-object v2, v2, Lrx/internal/operators/SingleOperatorZip$1;->val$zipper:Lrx/functions/FuncN;

    iget-object v3, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$values:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_1e

    move-result-object v1

    .line 53
    .local v1, "r":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v2, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 55
    .end local v1    # "r":Ljava/lang/Object;, "TR;"
    :cond_1d
    :goto_1d
    return-void

    .line 47
    :catch_1e
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 49
    invoke-virtual {p0, v0}, Lrx/internal/operators/SingleOperatorZip$1$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
