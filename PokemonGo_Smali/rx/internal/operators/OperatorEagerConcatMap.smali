.class public final Lrx/internal/operators/OperatorEagerConcatMap;
.super Ljava/lang/Object;
.source "OperatorEagerConcatMap.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;,
        Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;,
        Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field private final maxConcurrent:I


# direct methods
.method public constructor <init>(Lrx/functions/Func1;II)V
    .registers 4
    .param p2, "bufferSize"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap;, "Lrx/internal/operators/OperatorEagerConcatMap<TT;TR;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap;->mapper:Lrx/functions/Func1;

    .line 37
    iput p2, p0, Lrx/internal/operators/OperatorEagerConcatMap;->bufferSize:I

    .line 38
    iput p3, p0, Lrx/internal/operators/OperatorEagerConcatMap;->maxConcurrent:I

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap;, "Lrx/internal/operators/OperatorEagerConcatMap<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorEagerConcatMap;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap;, "Lrx/internal/operators/OperatorEagerConcatMap<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorEagerConcatMap;->mapper:Lrx/functions/Func1;

    iget v2, p0, Lrx/internal/operators/OperatorEagerConcatMap;->bufferSize:I

    iget v3, p0, Lrx/internal/operators/OperatorEagerConcatMap;->maxConcurrent:I

    invoke-direct {v0, v1, v2, v3, p1}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;-><init>(Lrx/functions/Func1;IILrx/Subscriber;)V

    .line 44
    .local v0, "outer":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->init()V

    .line 45
    return-object v0
.end method
