.class final Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferOverlap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;
    }
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

.field final count:I

.field index:J

.field produced:J

.field final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final skip:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 251
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    .line 252
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    .line 253
    iput p3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    .line 254
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 256
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V

    .line 257
    return-void
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V

    return-void
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 7

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->produced:J

    .line 296
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_36

    .line 297
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_30

    .line 298
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More produced than requested? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 305
    :goto_2f
    return-void

    .line 301
    :cond_30
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 304
    :cond_36
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-static {v2, v3, v4}, Lrx/internal/operators/BackpressureUtils;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V

    goto :goto_2f
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 289
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 290
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 261
    iget-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->index:J

    .line 262
    .local v2, "i":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_16

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 266
    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_16
    add-long/2addr v2, v10

    .line 267
    iget v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-nez v5, :cond_36

    .line 268
    iput-wide v8, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->index:J

    .line 273
    :goto_20
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 274
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_36
    iput-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->index:J

    goto :goto_20

    .line 277
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_39
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    if-ne v5, v6, :cond_5a

    .line 279
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 280
    iget-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->produced:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->produced:J

    .line 281
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 283
    :cond_5a
    return-void
.end method
