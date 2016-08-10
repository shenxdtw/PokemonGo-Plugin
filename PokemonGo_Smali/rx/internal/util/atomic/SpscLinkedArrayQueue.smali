.class public final Lrx/internal/util/atomic/SpscLinkedArrayQueue;
.super Ljava/lang/Object;
.source "SpscLinkedArrayQueue.java"

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
.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I


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

.field protected final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

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

.field protected final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field protected producerLookAhead:J

.field protected producerLookAheadStep:I

.field protected producerMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .param p1, "bufferSize"    # I

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v2

    .line 50
    .local v2, "p2capacity":I
    add-int/lit8 v1, v2, -0x1

    .line 51
    .local v1, "mask":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 52
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 53
    iput v1, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerMask:I

    .line 54
    invoke-direct {p0, v2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->adjustLookAheadStep(I)V

    .line 55
    iput-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    iput v1, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerMask:I

    .line 57
    add-int/lit8 v3, v1, -0x1

    int-to-long v4, v3

    iput-wide v4, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerLookAhead:J

    .line 58
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v3, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v3, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerLookAheadStep:I

    .line 216
    return-void
.end method

.method private static calcDirectOffset(I)I
    .registers 1
    .param p0, "index"    # I

    .prologue
    .line 246
    return p0
.end method

.method private static calcWrappedOffset(JI)I
    .registers 5
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .prologue
    .line 243
    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result v0

    return v0
.end method

.method private lpConsumerIndex()J
    .registers 3

    .prologue
    .line 231
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lpProducerIndex()J
    .registers 3

    .prologue
    .line 227
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .registers 3

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

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
    .line 253
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
    .line 116
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private lvProducerIndex()J
    .registers 3

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

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
    .line 185
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 186
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    .line 187
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

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
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 146
    iput-object p1, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 147
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v1

    .line 148
    .local v1, "offsetInNew":I
    invoke-static {p1, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "n":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_f

    move-object v0, v2

    .line 154
    .end local v0    # "n":Ljava/lang/Object;, "TT;"
    :goto_e
    return-object v0

    .line 152
    .restart local v0    # "n":Ljava/lang/Object;, "TT;"
    :cond_f
    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 153
    invoke-static {p1, v1, v2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

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
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p5, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x1

    .line 100
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 101
    .local v0, "capacity":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 102
    .local v1, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v1, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 103
    add-long v2, p2, p6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerLookAhead:J

    .line 104
    add-long v2, p2, v4

    invoke-direct {p0, v2, v3}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 105
    invoke-static {v1, p4, p5}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 106
    invoke-direct {p0, p1, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 107
    sget-object v2, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, v2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method private soConsumerIndex(J)V
    .registers 4
    .param p1, "v"    # J

    .prologue
    .line 239
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 240
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
    .line 249
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 250
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
    .line 112
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "next":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 4
    .param p1, "v"    # J

    .prologue
    .line 235
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 236
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
    .line 93
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 94
    invoke-static {p1, p5, p2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 95
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
    .line 303
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
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
    .line 288
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 263
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
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
    .line 283
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
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
    .line 313
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 211
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvConsumerIndex()J

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
    .line 258
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
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
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 71
    .local v4, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lpProducerIndex()J

    move-result-wide v6

    .line 72
    .local v6, "index":J
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerMask:I

    move/from16 v18, v0

    .line 73
    .local v18, "mask":I
    move/from16 v0, v18

    invoke-static {v6, v7, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v8

    .line 74
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerLookAhead:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_25

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 75
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    .line 87
    :goto_24
    return v3

    .line 77
    :cond_25
    move-object/from16 v0, p0

    iget v9, v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerLookAheadStep:I

    .line 79
    .local v9, "lookAheadStep":I
    int-to-long v10, v9

    add-long/2addr v10, v6

    move/from16 v0, v18

    invoke-static {v10, v11, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v2

    .line 80
    .local v2, "lookAheadElementOffset":I
    invoke-static {v4, v2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_49

    .line 81
    int-to-long v10, v9

    add-long/2addr v10, v6

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerLookAhead:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 82
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    goto :goto_24

    .line 83
    :cond_49
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    move/from16 v0, v18

    invoke-static {v10, v11, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v3

    invoke-static {v4, v3}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_61

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 84
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    goto :goto_24

    .line 86
    :cond_61
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v12, v6

    move v14, v8

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v17}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    .line 87
    const/4 v3, 0x1

    goto :goto_24
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    .local p2, "second":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x2

    .line 324
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 325
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 326
    .local v4, "p":J
    iget v2, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerMask:I

    .line 328
    .local v2, "m":I
    add-long v8, v4, v10

    invoke-static {v8, v9, v2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v6

    .line 330
    .local v6, "pi":I
    invoke-static {v0, v6}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_29

    .line 331
    invoke-static {v4, v5, v2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v6

    .line 332
    add-int/lit8 v7, v6, 0x1

    invoke-static {v0, v7, p2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 333
    add-long v8, v4, v10

    invoke-direct {p0, v8, v9}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 334
    invoke-static {v0, v6, p1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 350
    :goto_27
    const/4 v7, 0x1

    return v7

    .line 336
    :cond_29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    .line 337
    .local v1, "capacity":I
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 338
    .local v3, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v3, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 340
    invoke-static {v4, v5, v2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v6

    .line 341
    add-int/lit8 v7, v6, 0x1

    invoke-static {v3, v7, p2}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 342
    invoke-static {v3, v6, p1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 343
    invoke-direct {p0, v0, v3}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 345
    add-long v8, v4, v10

    invoke-direct {p0, v8, v9}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 347
    sget-object v7, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    goto :goto_27
.end method

.method public final peek()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 167
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 168
    .local v2, "index":J
    iget v4, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerMask:I

    .line 169
    .local v4, "mask":I
    invoke-static {v2, v3, v4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v5

    .line 170
    .local v5, "offset":I
    invoke-static {v0, v5}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "e":Ljava/lang/Object;
    sget-object v6, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v1, v6, :cond_1c

    .line 172
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    invoke-direct {p0, v6, v2, v3, v4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v1

    .line 175
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
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    const/4 v7, 0x0

    .line 127
    iget-object v0, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 128
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 129
    .local v2, "index":J
    iget v5, p0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->consumerMask:I

    .line 130
    .local v5, "mask":I
    invoke-static {v2, v3, v5}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v6

    .line 131
    .local v6, "offset":I
    invoke-static {v0, v6}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "e":Ljava/lang/Object;
    sget-object v8, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v1, v8, :cond_24

    const/4 v4, 0x1

    .line 133
    .local v4, "isNextBuffer":Z
    :goto_16
    if-eqz v1, :cond_26

    if-nez v4, :cond_26

    .line 134
    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    invoke-direct {p0, v8, v9}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 135
    invoke-static {v0, v6, v7}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 141
    .end local v1    # "e":Ljava/lang/Object;
    :goto_23
    return-object v1

    .line 132
    .end local v4    # "isNextBuffer":Z
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_24
    const/4 v4, 0x0

    goto :goto_16

    .line 137
    .restart local v4    # "isNextBuffer":Z
    :cond_26
    if-eqz v4, :cond_31

    .line 138
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v2, v3, v5}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    :cond_31
    move-object v1, v7

    .line 141
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
    .line 308
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 278
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
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
    .line 293
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
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
    .line 298
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 9

    .prologue
    .line 198
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 200
    .local v0, "after":J
    :cond_4
    move-wide v2, v0

    .line 201
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 202
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 203
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 204
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 268
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
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
    .line 273
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
