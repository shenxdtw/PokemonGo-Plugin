.class final Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeLast.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeLast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 4
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    .line 67
    iput p2, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->count:I

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    .line 70
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 71
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v1, v2, p0}, Lrx/internal/operators/BackpressureUtils;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V

    .line 90
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 84
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->count:I

    if-ne v0, v1, :cond_f

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 78
    :cond_f
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method requestMore(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 99
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v5, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    move-wide v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/BackpressureUtils;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)Z

    .line 101
    :cond_11
    return-void
.end method
