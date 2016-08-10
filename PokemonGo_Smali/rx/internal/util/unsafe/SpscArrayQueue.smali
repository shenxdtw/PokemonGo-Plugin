.class public final Lrx/internal/util/unsafe/SpscArrayQueue;
.super Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;-><init>(I)V

    .line 94
    return-void
.end method

.method private lvConsumerIndex()J
    .registers 5

    .prologue
    .line 184
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private lvProducerIndex()J
    .registers 5

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->P_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private soConsumerIndex(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    .line 176
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 177
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 173
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 5

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

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

.method public offer(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_a

    .line 104
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "null elements not allowed"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_a
    iget-object v2, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 108
    .local v2, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    .line 109
    .local v0, "index":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    .line 110
    .local v4, "offset":J
    invoke-virtual {p0, v2, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 111
    const/4 v3, 0x0

    .line 115
    :goto_19
    return v3

    .line 113
    :cond_1a
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-direct {p0, v6, v7}, Lrx/internal/util/unsafe/SpscArrayQueue;->soProducerIndex(J)V

    .line 114
    invoke-virtual {p0, v2, v4, v5, p1}, Lrx/internal/util/unsafe/SpscArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 115
    const/4 v3, 0x1

    goto :goto_19
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    const/4 v6, 0x0

    .line 125
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    .line 126
    .local v2, "index":J
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    .line 128
    .local v4, "offset":J
    iget-object v1, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 129
    .local v1, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v1, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_11

    move-object v0, v6

    .line 135
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_10
    return-object v0

    .line 133
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_11
    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    invoke-direct {p0, v8, v9}, Lrx/internal/util/unsafe/SpscArrayQueue;->soConsumerIndex(J)V

    .line 134
    invoke-virtual {p0, v1, v4, v5, v6}, Lrx/internal/util/unsafe/SpscArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10
.end method

.method public size()I
    .registers 9

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 157
    .local v0, "after":J
    :cond_4
    move-wide v2, v0

    .line 158
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 159
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 160
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 161
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
