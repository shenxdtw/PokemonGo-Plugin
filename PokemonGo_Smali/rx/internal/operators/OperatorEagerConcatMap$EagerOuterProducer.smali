.class final Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorEagerConcatMap.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorEagerConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EagerOuterProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x91f328286867775L


# instance fields
.field final parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "parent":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<**>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    .line 56
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1f
    cmp-long v0, p1, v2

    if-lez v0, :cond_2b

    .line 65
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 66
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 68
    :cond_2b
    return-void
.end method
