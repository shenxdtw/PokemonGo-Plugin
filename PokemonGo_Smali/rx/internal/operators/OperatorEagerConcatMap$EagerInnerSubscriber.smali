.class final Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorEagerConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorEagerConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EagerInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber",
            "<*TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;I)V
    .registers 7
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber",
            "<*TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<*TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 287
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    .line 289
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 290
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    .line 294
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_10
    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->queue:Ljava/util/Queue;

    .line 295
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 296
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->request(J)V

    .line 297
    return-void

    .line 292
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_1d
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_10
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->done:Z

    .line 315
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 316
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 307
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->error:Ljava/lang/Throwable;

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->done:Z

    .line 309
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 310
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
    .line 301
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 303
    return-void
.end method

.method requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 319
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->request(J)V

    .line 320
    return-void
.end method
