.class public final Lrx/internal/operators/OnSubscribeCombineLatest;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
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
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field final sources:[Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrx/functions/FuncN;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p2, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    const/4 v1, 0x0

    sget v4, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>([Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;IZ)V

    .line 38
    return-void
.end method

.method public constructor <init>([Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;IZ)V
    .registers 6
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/Observable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sources":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p3, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:[Lrx/Observable;

    .line 45
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    .line 46
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combiner:Lrx/functions/FuncN;

    .line 47
    iput p4, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->bufferSize:I

    .line 48
    iput-boolean p5, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->delayError:Z

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    const/4 v2, 0x0

    .line 55
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:[Lrx/Observable;

    .line 56
    .local v11, "sources":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    const/4 v3, 0x0

    .line 57
    .local v3, "count":I
    if-nez v11, :cond_4e

    .line 58
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_26

    .line 60
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    check-cast v9, Ljava/util/List;

    .line 61
    .local v9, "list":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lrx/Observable;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/Observable;

    move-object v11, v1

    check-cast v11, [Lrx/Observable;

    .line 62
    array-length v3, v11

    .line 78
    .end local v9    # "list":Ljava/util/List;
    :cond_20
    :goto_20
    if-nez v3, :cond_50

    .line 79
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 85
    :goto_25
    return-void

    .line 64
    :cond_26
    const/16 v1, 0x8

    new-array v11, v1, [Lrx/Observable;

    .line 65
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/Observable;

    .line 66
    .local v10, "p":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    array-length v1, v11

    if-ne v3, v1, :cond_48

    .line 67
    shr-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v3

    new-array v6, v1, [Lrx/Observable;

    .line 68
    .local v6, "b":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    invoke-static {v11, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    move-object v11, v6

    .line 71
    .end local v6    # "b":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    :cond_48
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput-object v10, v11, v3

    move v3, v7

    .line 72
    .end local v7    # "count":I
    .restart local v3    # "count":I
    goto :goto_30

    .line 75
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "p":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_4e
    array-length v3, v11

    goto :goto_20

    .line 83
    :cond_50
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combiner:Lrx/functions/FuncN;

    iget v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->bufferSize:I

    iget-boolean v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->delayError:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;IIZ)V

    .line 84
    .local v0, "lc":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual {v0, v11}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribe([Lrx/Observable;)V

    goto :goto_25
.end method
