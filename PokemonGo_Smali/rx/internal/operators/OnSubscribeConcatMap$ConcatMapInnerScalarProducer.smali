.class final Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapInnerScalarProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field once:Z

.field final parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    .local p2, "parent":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;->value:Ljava/lang/Object;

    .line 358
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;->parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    .line 359
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .line 363
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer<TT;TR;>;"
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;->once:Z

    if-nez v1, :cond_19

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_19

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;->once:Z

    .line 365
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;->parent:Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    .line 366
    .local v0, "p":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->innerNext(Ljava/lang/Object;)V

    .line 367
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->innerCompleted(J)V

    .line 369
    .end local v0    # "p":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    :cond_19
    return-void
.end method
