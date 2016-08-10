.class final Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field produced:J


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    .local p1, "parent":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 324
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    .line 325
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 345
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->produced:J

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->innerCompleted(J)V

    .line 346
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 340
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->produced:J

    invoke-virtual {v0, p1, v2, v3}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->innerError(Ljava/lang/Throwable;J)V

    .line 341
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-wide v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->produced:J

    .line 335
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->innerNext(Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 329
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 330
    return-void
.end method
