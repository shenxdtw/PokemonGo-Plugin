.class public final Lrx/internal/util/atomic/SpscAtomicArrayQueue;
.super Lrx/internal/util/atomic/AtomicReferenceArrayQueue;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/atomic/AtomicReferenceArrayQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;


# instance fields
.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final lookAheadStep:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field protected producerLookAhead:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;-><init>(I)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 46
    return-void
.end method

.method private lvConsumerIndex()J
    .registers 3

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvProducerIndex()J
    .registers 3

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private soConsumerIndex(J)V
    .registers 4
    .param p1, "newIndex"    # J

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 121
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 4
    .param p1, "newIndex"    # J

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 117
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_a

    .line 51
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Null is not a valid element"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_a
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->mask:I

    .line 56
    .local v1, "mask":I
    iget-object v6, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 57
    .local v2, "index":J
    invoke-virtual {p0, v2, v3, v1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    .line 58
    .local v4, "offset":I
    iget-wide v6, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerLookAhead:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_30

    .line 59
    iget v5, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 60
    .local v5, "step":I
    int-to-long v6, v5

    add-long/2addr v6, v2

    invoke-virtual {p0, v6, v7, v1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3b

    .line 61
    int-to-long v6, v5

    add-long/2addr v6, v2

    iput-wide v6, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerLookAhead:J

    .line 67
    .end local v5    # "step":I
    :cond_30
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 68
    invoke-virtual {p0, v0, v4, p1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 69
    const/4 v6, 0x1

    :goto_3a
    return v6

    .line 63
    .restart local v5    # "step":I
    :cond_3b
    invoke-virtual {p0, v0, v4}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 64
    const/4 v6, 0x0

    goto :goto_3a
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 75
    .local v2, "index":J
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v4

    .line 77
    .local v4, "offset":I
    iget-object v1, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 78
    .local v1, "lElementBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, v1, v4}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_15

    move-object v0, v5

    .line 84
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_14
    return-object v0

    .line 82
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_15
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 83
    invoke-virtual {p0, v1, v4, v5}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    goto :goto_14
.end method

.method public size()I
    .registers 9

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 101
    .local v0, "after":J
    :cond_4
    move-wide v2, v0

    .line 102
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 103
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 104
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 105
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
