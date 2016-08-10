.class public final Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;
.super Ljava/lang/Object;
.source "SpscUnboundedAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final CONSUMER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I

.field static final PRODUCER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile consumerIndex:J

.field protected consumerMask:I

.field protected producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile producerIndex:J

.field protected producerLookAhead:J

.field protected producerLookAheadStep:I

.field protected producerMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 36
    const-class v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->PRODUCER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 46
    const-class v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->CONSUMER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .param p1, "bufferSize"    # I

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v3, 0x8

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v2

    .line 52
    .local v2, "p2capacity":I
    add-int/lit8 v1, v2, -0x1

    .line 53
    .local v1, "mask":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 54
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    iput v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerMask:I

    .line 56
    invoke-direct {p0, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->adjustLookAheadStep(I)V

    .line 57
    iput-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 58
    iput v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 59
    add-int/lit8 v3, v1, -0x1

    int-to-long v4, v3

    iput-wide v4, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 60
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 61
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAheadStep:I

    .line 220
    return-void
.end method

.method private static calcDirectOffset(I)I
    .registers 1
    .param p0, "index"    # I

    .prologue
    .line 250
    return p0
.end method

.method private static calcWrappedOffset(JI)I
    .registers 5
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .prologue
    .line 247
    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    move-result v0

    return v0
.end method

.method private lpConsumerIndex()J
    .registers 3

    .prologue
    .line 235
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:J

    return-wide v0
.end method

.method private lpProducerIndex()J
    .registers 3

    .prologue
    .line 231
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:J

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .registers 3

    .prologue
    .line 227
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:J

    return-wide v0
.end method

.method private static lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .registers 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private lvProducerIndex()J
    .registers 3

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:J

    return-wide v0
.end method

.method private newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .registers 7
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 190
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    .line 191
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .registers 11
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 150
    iput-object p1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 151
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v1

    .line 152
    .local v1, "offsetInNew":I
    invoke-static {p1, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "n":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_f

    move-object v0, v2

    .line 158
    .end local v0    # "n":Ljava/lang/Object;, "TT;"
    :goto_e
    return-object v0

    .line 156
    .restart local v0    # "n":Ljava/lang/Object;, "TT;"
    :cond_f
    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 157
    invoke-static {p1, v1, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    goto :goto_e
.end method

.method private resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .registers 14
    .param p2, "currIndex"    # J
    .param p4, "offset"    # I
    .param p6, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p5, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x1

    .line 104
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 105
    .local v0, "capacity":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 106
    .local v1, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 107
    add-long v2, p2, p6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 108
    add-long v2, p2, v4

    invoke-direct {p0, v2, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 109
    invoke-static {v1, p4, p5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 110
    invoke-direct {p0, p1, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 111
    sget-object v2, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method private soConsumerIndex(J)V
    .registers 4
    .param p1, "v"    # J

    .prologue
    .line 243
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    sget-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->CONSUMER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 244
    return-void
.end method

.method private static soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .registers 3
    .param p1, "offset"    # I
    .param p2, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method private soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "next":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 4
    .param p1, "v"    # J

    .prologue
    .line 239
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    sget-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->PRODUCER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 240
    return-void
.end method

.method private writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .registers 9
    .param p3, "index"    # J
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 98
    invoke-static {p1, p5, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 184
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 267
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

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

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    .line 71
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 74
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 75
    .local v4, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpProducerIndex()J

    move-result-wide v6

    .line 76
    .local v6, "index":J
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerMask:I

    move/from16 v18, v0

    .line 77
    .local v18, "mask":I
    move/from16 v0, v18

    invoke-static {v6, v7, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v8

    .line 78
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_2d

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 79
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    .line 91
    :goto_2c
    return v3

    .line 81
    :cond_2d
    move-object/from16 v0, p0

    iget v9, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAheadStep:I

    .line 83
    .local v9, "lookAheadStep":I
    int-to-long v10, v9

    add-long/2addr v10, v6

    move/from16 v0, v18

    invoke-static {v10, v11, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v2

    .line 84
    .local v2, "lookAheadElementOffset":I
    invoke-static {v4, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_51

    .line 85
    int-to-long v10, v9

    add-long/2addr v10, v6

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 86
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    goto :goto_2c

    .line 87
    :cond_51
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    move/from16 v0, v18

    invoke-static {v10, v11, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v3

    invoke-static {v4, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_69

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 88
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    goto :goto_2c

    .line 90
    :cond_69
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v12, v6

    move v14, v8

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v17}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    .line 91
    const/4 v3, 0x1

    goto :goto_2c
.end method

.method public final peek()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 171
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 172
    .local v2, "index":J
    iget v4, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 173
    .local v4, "mask":I
    invoke-static {v2, v3, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v5

    .line 174
    .local v5, "offset":I
    invoke-static {v0, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 175
    .local v1, "e":Ljava/lang/Object;
    sget-object v6, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v1, v6, :cond_1c

    .line 176
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    invoke-direct {p0, v6, v2, v3, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .end local v1    # "e":Ljava/lang/Object;
    :cond_1c
    return-object v1
.end method

.method public final poll()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    const/4 v7, 0x0

    .line 131
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 132
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 133
    .local v2, "index":J
    iget v5, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 134
    .local v5, "mask":I
    invoke-static {v2, v3, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v6

    .line 135
    .local v6, "offset":I
    invoke-static {v0, v6}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "e":Ljava/lang/Object;
    sget-object v8, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v1, v8, :cond_24

    const/4 v4, 0x1

    .line 137
    .local v4, "isNextBuffer":Z
    :goto_16
    if-eqz v1, :cond_26

    if-nez v4, :cond_26

    .line 138
    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    invoke-direct {p0, v8, v9}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 139
    invoke-static {v0, v6, v7}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 145
    .end local v1    # "e":Ljava/lang/Object;
    :goto_23
    return-object v1

    .line 136
    .end local v4    # "isNextBuffer":Z
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_24
    const/4 v4, 0x0

    goto :goto_16

    .line 141
    .restart local v4    # "isNextBuffer":Z
    :cond_26
    if-eqz v4, :cond_31

    .line 142
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v2, v3, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    :cond_31
    move-object v1, v7

    .line 145
    goto :goto_23
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 9

    .prologue
    .line 202
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 204
    .local v0, "after":J
    :cond_4
    move-wide v2, v0

    .line 205
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 206
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 207
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 208
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
