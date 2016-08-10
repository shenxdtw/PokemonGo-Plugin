.class final Lrx/internal/operators/OnSubscribeRange$RangeProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x391941e9d0fd3194L


# instance fields
.field private final childSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentIndex:J

.field private final endOfRange:I


# direct methods
.method constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "childSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->childSubscriber:Lrx/Subscriber;

    .line 51
    int-to-long v0, p2

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    .line 52
    iput p3, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->endOfRange:I

    .line 53
    return-void
.end method


# virtual methods
.method fastpath()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x1

    .line 122
    iget v1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->endOfRange:I

    int-to-long v6, v1

    add-long v2, v6, v8

    .line 123
    .local v2, "endIndex":J
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->childSubscriber:Lrx/Subscriber;

    .line 124
    .local v0, "childSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    iget-wide v4, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    .local v4, "index":J
    :goto_b
    cmp-long v1, v4, v2

    if-eqz v1, :cond_20

    .line 125
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 133
    :cond_15
    :goto_15
    return-void

    .line 128
    :cond_16
    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 124
    add-long/2addr v4, v8

    goto :goto_b

    .line 130
    :cond_20
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_15

    .line 131
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_15
.end method

.method public request(J)V
    .registers 12
    .param p1, "requestedAmount"    # J

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 57
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->get()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_10

    .line 71
    :cond_f
    :goto_f
    return-void

    .line 61
    :cond_10
    cmp-long v2, p1, v6

    if-nez v2, :cond_1e

    invoke-virtual {p0, v4, v5, v6, v7}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 63
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->fastpath()V

    goto :goto_f

    .line 64
    :cond_1e
    cmp-long v2, p1, v4

    if-lez v2, :cond_f

    .line 65
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .line 66
    .local v0, "c":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_f

    .line 68
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->slowpath(J)V

    goto :goto_f
.end method

.method slowpath(J)V
    .registers 16
    .param p1, "requestedAmount"    # J

    .prologue
    const-wide/16 v10, 0x1

    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .local v2, "emitted":J
    iget v1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->endOfRange:I

    int-to-long v8, v1

    add-long v4, v8, v10

    .line 79
    .local v4, "endIndex":J
    iget-wide v6, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    .line 81
    .local v6, "index":J
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->childSubscriber:Lrx/Subscriber;

    .line 85
    .local v0, "childSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    :cond_d
    :goto_d
    cmp-long v1, v2, p1

    if-eqz v1, :cond_27

    cmp-long v1, v6, v4

    if-eqz v1, :cond_27

    .line 86
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 116
    :cond_1b
    :goto_1b
    return-void

    .line 90
    :cond_1c
    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 92
    add-long/2addr v6, v10

    .line 93
    add-long/2addr v2, v10

    goto :goto_d

    .line 96
    :cond_27
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 100
    cmp-long v1, v6, v4

    if-nez v1, :cond_35

    .line 101
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1b

    .line 105
    :cond_35
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->get()J

    move-result-wide p1

    .line 107
    cmp-long v1, p1, v2

    if-nez v1, :cond_d

    .line 108
    iput-wide v6, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    .line 109
    neg-long v8, v2

    invoke-virtual {p0, v8, v9}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->addAndGet(J)J

    move-result-wide p1

    .line 110
    const-wide/16 v8, 0x0

    cmp-long v1, p1, v8

    if-eqz v1, :cond_1b

    .line 113
    const-wide/16 v2, 0x0

    goto :goto_d
.end method
