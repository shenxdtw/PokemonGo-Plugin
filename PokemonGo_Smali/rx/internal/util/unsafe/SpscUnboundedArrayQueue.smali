.class public Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;
.super Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;
.source "SpscUnboundedArrayQueue.java"

# interfaces
.implements Lrx/internal/util/unsafe/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField",
        "<TE;>;",
        "Lrx/internal/util/unsafe/QueueProgressIndicators;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J

.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I

.field private static final P_INDEX_OFFSET:J

.field private static final REF_ARRAY_BASE:J

.field private static final REF_ELEMENT_SHIFT:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 51
    const-string v3, "jctools.spsc.max.lookahead.step"

    const/16 v4, 0x1000

    invoke-static {v3, v4}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 56
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    .line 58
    sget-object v3, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    .line 59
    .local v2, "scale":I
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4f

    .line 60
    const/4 v3, 0x2

    sput v3, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ELEMENT_SHIFT:I

    .line 67
    :goto_23
    sget-object v3, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v4, v3

    sput-wide v4, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ARRAY_BASE:J

    .line 69
    :try_start_2e
    const-class v3, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields;

    const-string v4, "producerIndex"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    .local v1, "iField":Ljava/lang/reflect/Field;
    sget-object v3, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->P_INDEX_OFFSET:J
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2e .. :try_end_3e} :catch_5f

    .line 75
    :try_start_3e
    const-class v3, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;

    const-string v4, "consumerIndex"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 76
    sget-object v3, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->C_INDEX_OFFSET:J
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3e .. :try_end_4e} :catch_66

    .line 80
    return-void

    .line 61
    .end local v1    # "iField":Ljava/lang/reflect/Field;
    :cond_4f
    const/16 v3, 0x8

    if-ne v3, v2, :cond_57

    .line 62
    const/4 v3, 0x3

    sput v3, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ELEMENT_SHIFT:I

    goto :goto_23

    .line 64
    :cond_57
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unknown pointer size"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :catch_5f
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 77
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "iField":Ljava/lang/reflect/Field;
    :catch_66
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(I)V
    .registers 8
    .param p1, "bufferSize"    # I

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;-><init>()V

    .line 84
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    .line 85
    .local v1, "p2capacity":I
    add-int/lit8 v4, v1, -0x1

    int-to-long v2, v4

    .line 86
    .local v2, "mask":J
    add-int/lit8 v4, v1, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 87
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v0, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 88
    iput-wide v2, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerMask:J

    .line 89
    invoke-direct {p0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->adjustLookAheadStep(I)V

    .line 90
    iput-object v0, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 91
    iput-wide v2, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerMask:J

    .line 92
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerLookAhead:J

    .line 93
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soProducerIndex(J)V

    .line 94
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerLookAheadStep:I

    .line 249
    return-void
.end method

.method private static calcDirectOffset(J)J
    .registers 6
    .param p0, "index"    # J

    .prologue
    .line 271
    sget-wide v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ARRAY_BASE:J

    sget v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ELEMENT_SHIFT:I

    shl-long v2, p0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static calcWrappedOffset(JJ)J
    .registers 6
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .prologue
    .line 268
    and-long v0, p0, p2

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcDirectOffset(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .registers 5

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static lvElement([Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private lvNext([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcDirectOffset(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private lvProducerIndex()J
    .registers 5

    .prologue
    .line 252
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->P_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private newBufferPeek([Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 10
    .param p2, "index"    # J
    .param p4, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)TE;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object p1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 224
    invoke-static {p2, p3, p4, p5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v0

    .line 225
    .local v0, "offsetInNew":J
    invoke-static {p1, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private newBufferPoll([Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 12
    .param p2, "index"    # J
    .param p4, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .line 189
    iput-object p1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 190
    invoke-static {p2, p3, p4, p5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v2

    .line 191
    .local v2, "offsetInNew":J
    invoke-static {p1, v2, v3}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "n":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_f

    move-object v0, v1

    .line 197
    .end local v0    # "n":Ljava/lang/Object;, "TE;"
    :goto_e
    return-object v0

    .line 195
    .restart local v0    # "n":Ljava/lang/Object;, "TE;"
    :cond_f
    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soConsumerIndex(J)V

    .line 196
    invoke-static {p1, v2, v3, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_e
.end method

.method private resize([Ljava/lang/Object;JJLjava/lang/Object;J)V
    .registers 15
    .param p2, "currIndex"    # J
    .param p4, "offset"    # J
    .param p7, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJTE;J)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "oldBuffer":[Ljava/lang/Object;, "[TE;"
    .local p6, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v4, 0x1

    .line 143
    array-length v0, p1

    .line 144
    .local v0, "capacity":I
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 145
    .local v1, "newBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 146
    add-long v2, p2, p7

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerLookAhead:J

    .line 147
    add-long v2, p2, v4

    invoke-direct {p0, v2, v3}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soProducerIndex(J)V

    .line 148
    invoke-static {v1, p4, p5, p6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 149
    invoke-direct {p0, p1, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soNext([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 150
    sget-object v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, p5, v2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 152
    return-void
.end method

.method private soConsumerIndex(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 265
    return-void
.end method

.method private static soElement([Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5
    .param p0, "buffer"    # [Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "e"    # Ljava/lang/Object;

    .prologue
    .line 274
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 275
    return-void
.end method

.method private soNext([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    .local p2, "next":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcDirectOffset(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 156
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    .line 260
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 261
    return-void
.end method

.method private writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z
    .registers 10
    .param p3, "index"    # J
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;TE;JJ)Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soProducerIndex(J)V

    .line 136
    invoke-static {p1, p5, p6, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public currentConsumerIndex()J
    .registers 3

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentProducerIndex()J
    .registers 3

    .prologue
    .line 283
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_a

    .line 109
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Null is not a valid element"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 113
    .local v4, "buffer":[Ljava/lang/Object;, "[TE;"
    move-object/from16 v0, p0

    iget-wide v6, v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerIndex:J

    .line 114
    .local v6, "index":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerMask:J

    move-wide/from16 v17, v0

    .line 115
    .local v17, "mask":J
    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v8

    .line 116
    .local v8, "offset":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerLookAhead:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_2f

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 117
    invoke-direct/range {v3 .. v9}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    .line 129
    :goto_2e
    return v3

    .line 119
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerLookAheadStep:I

    .line 121
    .local v2, "lookAheadStep":I
    int-to-long v10, v2

    add-long/2addr v10, v6

    move-wide/from16 v0, v17

    invoke-static {v10, v11, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v20

    .line 122
    .local v20, "lookAheadElementOffset":J
    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_55

    .line 123
    int-to-long v10, v2

    add-long/2addr v10, v6

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->producerLookAhead:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 124
    invoke-direct/range {v3 .. v9}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    goto :goto_2e

    .line 125
    :cond_55
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    move-wide/from16 v0, v17

    invoke-static {v10, v11, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6d

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 126
    invoke-direct/range {v3 .. v9}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    goto :goto_2e

    :cond_6d
    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v12, v6

    move-wide v14, v8

    move-object/from16 v16, p1

    .line 128
    invoke-direct/range {v10 .. v18}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->resize([Ljava/lang/Object;JJLjava/lang/Object;J)V

    .line 129
    const/4 v3, 0x1

    goto :goto_2e
.end method

.method public final peek()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    iget-object v6, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 210
    .local v6, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerIndex:J

    .line 211
    .local v2, "index":J
    iget-wide v4, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerMask:J

    .line 212
    .local v4, "mask":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v8

    .line 213
    .local v8, "offset":J
    invoke-static {v6, v8, v9}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 214
    .local v7, "e":Ljava/lang/Object;
    sget-object v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v7, v0, :cond_1b

    .line 215
    invoke-direct {p0, v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvNext([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->newBufferPeek([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v7

    .line 218
    .end local v7    # "e":Ljava/lang/Object;
    :cond_1b
    return-object v7
.end method

.method public final poll()Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    const/4 v0, 0x0

    .line 170
    iget-object v6, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 171
    .local v6, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerIndex:J

    .line 172
    .local v2, "index":J
    iget-wide v4, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->consumerMask:J

    .line 173
    .local v4, "mask":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v10

    .line 174
    .local v10, "offset":J
    invoke-static {v6, v10, v11}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 175
    .local v7, "e":Ljava/lang/Object;
    sget-object v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v7, v1, :cond_22

    const/4 v8, 0x1

    .line 176
    .local v8, "isNextBuffer":Z
    :goto_14
    if-eqz v7, :cond_24

    if-nez v8, :cond_24

    .line 177
    const-wide/16 v12, 0x1

    add-long/2addr v12, v2

    invoke-direct {p0, v12, v13}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soConsumerIndex(J)V

    .line 178
    invoke-static {v6, v10, v11, v0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 184
    .end local v7    # "e":Ljava/lang/Object;
    :goto_21
    return-object v7

    .line 175
    .end local v8    # "isNextBuffer":Z
    .restart local v7    # "e":Ljava/lang/Object;
    :cond_22
    const/4 v8, 0x0

    goto :goto_14

    .line 180
    .restart local v8    # "isNextBuffer":Z
    :cond_24
    if-eqz v8, :cond_30

    .line 181
    invoke-direct {p0, v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvNext([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->newBufferPoll([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v7

    goto :goto_21

    :cond_30
    move-object v7, v0

    .line 184
    goto :goto_21
.end method

.method public final size()I
    .registers 9

    .prologue
    .line 236
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 238
    .local v0, "after":J
    :cond_4
    move-wide v2, v0

    .line 239
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 240
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 241
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 242
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
