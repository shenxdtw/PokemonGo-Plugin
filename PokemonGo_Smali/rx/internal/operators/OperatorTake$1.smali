.class Lrx/internal/operators/OperatorTake$1;
.super Lrx/Subscriber;
.source "OperatorTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTake;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field completed:Z

.field count:I

.field final synthetic this$0:Lrx/internal/operators/OperatorTake;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTake;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iput-object p2, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_c

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 56
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 58
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_f

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 65
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 67
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    .line 70
    :cond_f
    return-void

    .line 67
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    .local p1, "i":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_31

    iget v2, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v3, v3, Lrx/internal/operators/OperatorTake;->limit:I

    if-ge v2, v3, :cond_31

    .line 75
    iget v2, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v3, v3, Lrx/internal/operators/OperatorTake;->limit:I

    if-ne v2, v3, :cond_32

    move v0, v1

    .line 76
    .local v0, "stop":Z
    :goto_1c
    iget-object v2, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    if-eqz v0, :cond_31

    iget-boolean v2, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v2, :cond_31

    .line 78
    iput-boolean v1, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 80
    :try_start_29
    iget-object v1, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    .line 82
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    .line 86
    .end local v0    # "stop":Z
    :cond_31
    return-void

    .line 75
    :cond_32
    const/4 v0, 0x0

    goto :goto_1c

    .line 82
    .restart local v0    # "stop":Z
    :catchall_34
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    throw v1
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorTake$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorTake$1$1;-><init>(Lrx/internal/operators/OperatorTake$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 116
    return-void
.end method
