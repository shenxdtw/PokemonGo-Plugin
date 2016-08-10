.class public final Lrx/internal/producers/QueuedProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "QueuedProducer.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final NULL_SENTINEL:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x64fd87a3da19de97L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    :goto_b
    invoke-direct {p0, p1, v0}, Lrx/internal/producers/QueuedProducer;-><init>(Lrx/Subscriber;Ljava/util/Queue;)V

    .line 55
    return-void

    .line 53
    :cond_f
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    goto :goto_b
.end method

.method public constructor <init>(Lrx/Subscriber;Ljava/util/Queue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 62
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    .line 63
    iput-object p2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    return-void
.end method

.method private checkTerminated(ZZ)Z
    .registers 6
    .param p1, "isDone"    # Z
    .param p2, "isEmpty"    # Z

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const/4 v1, 0x1

    .line 120
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 135
    :goto_9
    return v1

    .line 123
    :cond_a
    if-eqz p1, :cond_23

    .line 124
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 125
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1b

    .line 126
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 127
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 130
    :cond_1b
    if-eqz p2, :cond_23

    .line 131
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_9

    .line 135
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_23
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private drain()V
    .registers 15

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iget-object v10, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    if-nez v10, :cond_18

    .line 140
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    .line 141
    .local v0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v5, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 144
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_c
    iget-boolean v10, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    invoke-direct {p0, v10, v11}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 184
    .end local v0    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_18
    :goto_18
    return-void

    .line 148
    .restart local v0    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_19
    iget-object v10, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 150
    invoke-virtual {p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v6

    .line 151
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 153
    .local v2, "e":J
    :goto_25
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_3c

    .line 154
    iget-boolean v1, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 155
    .local v1, "d":Z
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 156
    .local v9, "v":Ljava/lang/Object;
    if-nez v9, :cond_5c

    const/4 v10, 0x1

    :goto_34
    invoke-direct {p0, v1, v10}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v10

    if-nez v10, :cond_18

    .line 159
    if-nez v9, :cond_5e

    .line 179
    .end local v1    # "d":Z
    .end local v9    # "v":Ljava/lang/Object;
    :cond_3c
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_53

    invoke-virtual {p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-eqz v10, :cond_53

    .line 180
    neg-long v10, v2

    invoke-virtual {p0, v10, v11}, Lrx/internal/producers/QueuedProducer;->addAndGet(J)J

    .line 182
    :cond_53
    iget-object v10, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v10

    if-nez v10, :cond_c

    goto :goto_18

    .line 156
    .restart local v1    # "d":Z
    .restart local v9    # "v":Ljava/lang/Object;
    :cond_5c
    const/4 v10, 0x0

    goto :goto_34

    .line 164
    :cond_5e
    :try_start_5e
    sget-object v10, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v9, v10, :cond_6d

    .line 165
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 175
    :goto_66
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 176
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 177
    goto :goto_25

    .line 168
    :cond_6d
    move-object v8, v9

    .line 169
    .local v8, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_71} :catch_72

    goto :goto_66

    .line 171
    .end local v8    # "t":Ljava/lang/Object;, "TT;"
    :catch_72
    move-exception v4

    .line 172
    .local v4, "ex":Ljava/lang/Throwable;
    sget-object v10, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v9, v10, :cond_7b

    .end local v9    # "v":Ljava/lang/Object;
    :goto_77
    invoke-static {v4, v0, v9}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_18

    .restart local v9    # "v":Ljava/lang/Object;
    :cond_7b
    const/4 v9, 0x0

    goto :goto_77
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_e

    .line 86
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    sget-object v2, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 95
    :cond_d
    :goto_d
    return v0

    .line 90
    :cond_e
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 94
    :cond_16
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 95
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 115
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 116
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 109
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 110
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lrx/internal/producers/QueuedProducer;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 101
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/producers/QueuedProducer;->onError(Ljava/lang/Throwable;)V

    .line 103
    :cond_e
    return-void
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 69
    cmp-long v0, p1, v2

    if-gez v0, :cond_e

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_e
    cmp-long v0, p1, v2

    if-lez v0, :cond_18

    .line 73
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 74
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 76
    :cond_18
    return-void
.end method
