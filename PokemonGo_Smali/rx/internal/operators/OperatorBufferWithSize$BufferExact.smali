.class final Lrx/internal/operators/OperatorBufferWithSize$BufferExact;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferExact"
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
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 5
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 97
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    .line 98
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->request(J)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferExact;
    .param p1, "x1"    # J

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 127
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_9

    .line 128
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 130
    :cond_9
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 131
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 105
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_d

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 110
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    if-ne v1, v2, :cond_20

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 114
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 116
    :cond_20
    return-void
.end method
