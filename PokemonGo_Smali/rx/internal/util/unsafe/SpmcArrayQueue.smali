.class public final Lrx/internal/util/unsafe/SpmcArrayQueue;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;-><init>(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 5

    .prologue
    .line 211
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

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
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_a

    .line 118
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v10, "Null is not a valid element"

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_a
    iget-object v4, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 121
    .local v4, "lb":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->mask:J

    .line 122
    .local v2, "lMask":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 123
    .local v0, "currProducerIndex":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v6

    .line 124
    .local v6, "offset":J
    invoke-virtual {p0, v4, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 125
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    sub-long v8, v0, v10

    .line 127
    .local v8, "size":J
    cmp-long v5, v8, v2

    if-lez v5, :cond_28

    .line 128
    const/4 v5, 0x0

    .line 139
    .end local v8    # "size":J
    :goto_27
    return v5

    .line 132
    .restart local v8    # "size":J
    :cond_28
    invoke-virtual {p0, v4, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_28

    .line 135
    .end local v8    # "size":J
    :cond_2e
    invoke-virtual {p0, v4, v6, v7, p1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 138
    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    invoke-virtual {p0, v10, v11}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soTail(J)V

    .line 139
    const/4 v5, 0x1

    goto :goto_27
.end method

.method public peek()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v2

    .line 174
    .local v2, "currProducerIndexCache":J
    :cond_4
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    .line 175
    .local v4, "currentConsumerIndex":J
    cmp-long v7, v4, v2

    if-ltz v7, :cond_19

    .line 176
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 177
    .local v0, "currProducerIndex":J
    cmp-long v7, v4, v0

    if-ltz v7, :cond_16

    .line 178
    const/4 v6, 0x0

    .line 184
    .end local v0    # "currProducerIndex":J
    :goto_15
    return-object v6

    .line 180
    .restart local v0    # "currProducerIndex":J
    :cond_16
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 183
    .end local v0    # "currProducerIndex":J
    :cond_19
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v6

    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_4

    goto :goto_15
.end method

.method public poll()Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    const/4 v10, 0x0

    .line 145
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v2

    .line 147
    .local v2, "currProducerIndexCache":J
    :cond_5
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    .line 148
    .local v4, "currentConsumerIndex":J
    cmp-long v11, v4, v2

    if-ltz v11, :cond_1a

    .line 149
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 150
    .local v0, "currProducerIndex":J
    cmp-long v11, v4, v0

    if-ltz v11, :cond_17

    move-object v6, v10

    .line 165
    .end local v0    # "currProducerIndex":J
    :goto_16
    return-object v6

    .line 153
    .restart local v0    # "currProducerIndex":J
    :cond_17
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 156
    .end local v0    # "currProducerIndex":J
    :cond_1a
    const-wide/16 v12, 0x1

    add-long/2addr v12, v4

    invoke-virtual {p0, v4, v5, v12, v13}, Lrx/internal/util/unsafe/SpmcArrayQueue;->casHead(JJ)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 159
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v8

    .line 160
    .local v8, "offset":J
    iget-object v7, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 162
    .local v7, "lb":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v7, v8, v9}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 164
    .local v6, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v7, v8, v9, v10}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16
.end method

.method public size()I
    .registers 9

    .prologue
    .line 194
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 196
    .local v0, "after":J
    :cond_4
    move-wide v2, v0

    .line 197
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 198
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 199
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 200
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
