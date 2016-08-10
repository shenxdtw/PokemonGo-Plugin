.class public final Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscExactAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<TT;>;",
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
            "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field static final PRODUCER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5631d997036b8b85L


# instance fields
.field final capacitySkip:I

.field volatile consumerIndex:J

.field final mask:I

.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-class v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->PRODUCER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 42
    const-class v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->CONSUMER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 47
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->length()I

    move-result v0

    .line 48
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 49
    sub-int v1, v0, p1

    iput v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    .line 50
    return-void
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
    .line 156
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
    .line 141
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
    .line 136
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
    .line 166
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:J

    iget-wide v2, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    .line 56
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 59
    :cond_8
    iget-wide v4, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:J

    .line 60
    .local v4, "pi":J
    iget v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 62
    .local v1, "m":I
    iget v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    int-to-long v6, v3

    add-long/2addr v6, v4

    long-to-int v3, v6

    and-int v0, v3, v1

    .line 63
    .local v0, "fullCheck":I
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 64
    const/4 v3, 0x0

    .line 69
    :goto_1a
    return v3

    .line 66
    :cond_1b
    long-to-int v3, v4

    and-int v2, v3, v1

    .line 67
    .local v2, "offset":I
    sget-object v3, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->PRODUCER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {v3, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 68
    invoke-virtual {p0, v2, p1}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    .line 69
    const/4 v3, 0x1

    goto :goto_1a
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:J

    long-to-int v0, v0

    iget v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    const/4 v4, 0x0

    .line 73
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:J

    .line 74
    .local v0, "ci":J
    long-to-int v5, v0

    iget v6, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int v2, v5, v6

    .line 75
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 76
    .local v3, "value":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_10

    move-object v3, v4

    .line 81
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :goto_f
    return-object v3

    .line 79
    .restart local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_10
    sget-object v5, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->CONSUMER_INDEX:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 80
    invoke-virtual {p0, v2, v4}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    goto :goto_f
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
    .line 146
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
    .line 151
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 9

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:J

    .line 100
    .local v0, "ci":J
    :goto_2
    iget-wide v4, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:J

    .line 101
    .local v4, "pi":J
    iget-wide v2, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:J

    .line 102
    .local v2, "ci2":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_e

    .line 103
    sub-long v6, v4, v2

    long-to-int v6, v6

    return v6

    .line 105
    :cond_e
    move-wide v0, v2

    .line 106
    goto :goto_2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
    .line 126
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
