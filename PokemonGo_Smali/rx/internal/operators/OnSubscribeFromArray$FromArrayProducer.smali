.class final Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromArray.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromArrayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x310c1171070674b3L


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field index:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Lrx/Subscriber;

    .line 48
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 7

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Lrx/Subscriber;

    .line 71
    .local v1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 72
    .local v4, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 83
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_10
    :goto_10
    return-void

    .line 76
    .restart local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_11
    invoke-virtual {v1, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 79
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_17
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_10

    .line 82
    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_10
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 53
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1f
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_34

    .line 57
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_33

    .line 58
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->fastPath()V

    .line 66
    :cond_33
    :goto_33
    return-void

    .line 61
    :cond_34
    cmp-long v0, p1, v2

    if-eqz v0, :cond_33

    .line 62
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_33

    .line 63
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->slowPath(J)V

    goto :goto_33
.end method

.method slowPath(J)V
    .registers 16
    .param p1, "r"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 86
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Lrx/Subscriber;

    .line 87
    .local v1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    .line 88
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v5, v0

    .line 90
    .local v5, "n":I
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "e":J
    iget v4, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->index:I

    .line 95
    .local v4, "i":I
    :cond_d
    :goto_d
    cmp-long v6, p1, v8

    if-eqz v6, :cond_30

    if-eq v4, v5, :cond_30

    .line 96
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 121
    :cond_19
    :goto_19
    return-void

    .line 100
    :cond_1a
    aget-object v6, v0, v4

    invoke-virtual {v1, v6}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 104
    if-ne v4, v5, :cond_2d

    .line 105
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_19

    .line 106
    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_19

    .line 111
    :cond_2d
    sub-long/2addr p1, v10

    .line 112
    sub-long/2addr v2, v10

    goto :goto_d

    .line 115
    :cond_30
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->get()J

    move-result-wide v6

    add-long p1, v6, v2

    .line 117
    cmp-long v6, p1, v8

    if-nez v6, :cond_d

    .line 118
    iput v4, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->index:I

    .line 119
    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->addAndGet(J)J

    move-result-wide p1

    .line 120
    cmp-long v6, p1, v8

    if-eqz v6, :cond_19

    .line 123
    const-wide/16 v2, 0x0

    goto :goto_d
.end method
