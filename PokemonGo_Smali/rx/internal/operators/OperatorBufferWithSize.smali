.class public final Lrx/internal/operators/OperatorBufferWithSize;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;,
        Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;,
        Lrx/internal/operators/OperatorBufferWithSize$BufferExact;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "skip"    # I

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gtz p1, :cond_d

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_d
    if-gtz p2, :cond_17

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_17
    iput p1, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    .line 61
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-ne v3, v4, :cond_18

    .line 67
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    invoke-direct {v0, p1, v3}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;-><init>(Lrx/Subscriber;I)V

    .line 69
    .local v0, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 70
    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 87
    .end local v0    # "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    :goto_17
    return-object v0

    .line 74
    :cond_18
    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-le v3, v4, :cond_33

    .line 75
    new-instance v2, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    invoke-direct {v2, p1, v3, v4}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;-><init>(Lrx/Subscriber;II)V

    .line 77
    .local v2, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 78
    invoke-virtual {v2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v2

    .line 80
    goto :goto_17

    .line 82
    .end local v2    # "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    :cond_33
    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;-><init>(Lrx/Subscriber;II)V

    .line 84
    .local v1, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 85
    invoke-virtual {v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v1

    .line 87
    goto :goto_17
.end method
