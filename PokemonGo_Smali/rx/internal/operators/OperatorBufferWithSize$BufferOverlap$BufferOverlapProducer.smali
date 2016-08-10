.class final Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferOverlapProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37bb5316f95bb99bL


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;)V
    .registers 2

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    .line 319
    .local v0, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-object v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    iget-object v7, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-static {v1, p1, p2, v6, v7}, Lrx/internal/operators/BackpressureUtils;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 320
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-eqz v1, :cond_37

    .line 321
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->get()Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 322
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    int-to-long v6, v1

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 323
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v4

    .line 325
    .local v4, "v":J
    # invokes: Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V
    invoke-static {v0, v4, v5}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->access$300(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V

    .line 332
    .end local v2    # "u":J
    .end local v4    # "v":J
    :cond_37
    :goto_37
    return-void

    .line 327
    :cond_38
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    int-to-long v6, v1

    invoke-static {v6, v7, p1, p2}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 328
    .restart local v2    # "u":J
    # invokes: Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V
    invoke-static {v0, v2, v3}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->access$400(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V

    goto :goto_37
.end method
