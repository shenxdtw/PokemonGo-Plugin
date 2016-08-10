.class final Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final MISSING:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field active:I

.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:Z

.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field

.field complete:I

.field final count:I

.field final delayError:Z

.field volatile done:Z

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final latest:[Ljava/lang/Object;

.field final queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/SpscLinkedArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;IIZ)V
    .registers 8
    .param p3, "count"    # I
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 117
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    .line 118
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combiner:Lrx/functions/FuncN;

    .line 119
    iput p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->count:I

    .line 120
    iput p4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    .line 121
    iput-boolean p5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    .line 122
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    sget-object v1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    new-array v0, p3, [Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .line 125
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    invoke-direct {v0, p4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    return-void
.end method


# virtual methods
.method cancel(Ljava/util/Queue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 176
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .local v0, "arr$":[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 177
    .local v3, "s":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    invoke-virtual {v3}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->unsubscribe()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 179
    .end local v3    # "s":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    :cond_11
    return-void
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;Z)Z
    .registers 9
    .param p1, "mainDone"    # Z
    .param p2, "queueEmpty"    # Z
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p3, "childSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 308
    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v2, :cond_9

    .line 309
    invoke-virtual {p0, p4}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 336
    :goto_8
    return v1

    .line 312
    :cond_9
    if-eqz p1, :cond_38

    .line 313
    if-eqz p5, :cond_21

    .line 314
    if-eqz p2, :cond_38

    .line 315
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 316
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1d

    .line 317
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 319
    :cond_1d
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8

    .line 324
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_21
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 325
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_32

    .line 326
    invoke-virtual {p0, p4}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 327
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 330
    :cond_32
    if-eqz p2, :cond_38

    .line 331
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8

    .line 336
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_38
    const/4 v1, 0x0

    goto :goto_8
.end method

.method combine(Ljava/lang/Object;I)V
    .registers 13
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 188
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    aget-object v2, v8, p2

    .line 195
    .local v2, "combinerSubscriber":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    monitor-enter p0

    .line 196
    :try_start_7
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    array-length v6, v8

    .line 197
    .local v6, "sourceCount":I
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    aget-object v5, v8, p2

    .line 198
    .local v5, "o":Ljava/lang/Object;
    iget v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->active:I

    .line 199
    .local v0, "activeCount":I
    sget-object v8, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-ne v5, v8, :cond_18

    .line 200
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->active:I

    .line 202
    :cond_18
    iget v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->complete:I

    .line 203
    .local v3, "completedCount":I
    if-nez p1, :cond_48

    .line 204
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->complete:I

    .line 208
    :goto_20
    if-ne v0, v6, :cond_56

    move v1, v7

    .line 210
    .local v1, "allSourcesFinished":Z
    :goto_23
    if-eq v3, v6, :cond_2b

    if-nez p1, :cond_2c

    sget-object v8, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-ne v5, v8, :cond_2c

    :cond_2b
    move v4, v7

    .line 212
    .local v4, "empty":Z
    :cond_2c
    if-nez v4, :cond_6e

    .line 213
    if-eqz p1, :cond_58

    if-eqz v1, :cond_58

    .line 214
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    invoke-virtual {v8}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    :cond_3d
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_53

    .line 223
    if-nez v1, :cond_72

    if-eqz p1, :cond_72

    .line 224
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->requestMore(J)V

    .line 228
    :goto_47
    return-void

    .line 206
    .end local v1    # "allSourcesFinished":Z
    .end local v4    # "empty":Z
    :cond_48
    :try_start_48
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    iget-object v9, v2, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, p2

    goto :goto_20

    .line 222
    .end local v0    # "activeCount":I
    .end local v3    # "completedCount":I
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "sourceCount":I
    :catchall_53
    move-exception v7

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw v7

    .restart local v0    # "activeCount":I
    .restart local v3    # "completedCount":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "sourceCount":I
    :cond_56
    move v1, v4

    .line 208
    goto :goto_23

    .line 216
    .restart local v1    # "allSourcesFinished":Z
    .restart local v4    # "empty":Z
    :cond_58
    if-nez p1, :cond_3d

    :try_start_5a
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3d

    sget-object v7, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-eq v5, v7, :cond_6a

    iget-boolean v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    if-nez v7, :cond_3d

    .line 217
    :cond_6a
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    goto :goto_3d

    .line 220
    :cond_6e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_53

    goto :goto_3d

    .line 227
    :cond_72
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->drain()V

    goto :goto_47
.end method

.method drain()V
    .registers 23

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_7

    .line 304
    :cond_6
    :goto_6
    return-void

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 235
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    .line 236
    .local v5, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    .line 237
    .local v7, "delayError":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 239
    .local v13, "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    const/4 v14, 0x1

    .line 242
    .local v14, "missed":I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 246
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 247
    .local v16, "requestAmount":J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v2, v16, v20

    if-nez v2, :cond_6a

    const/4 v15, 0x1

    .line 248
    .local v15, "unbounded":Z
    :goto_36
    const-wide/16 v10, 0x0

    .line 250
    .local v10, "emitted":J
    :goto_38
    const-wide/16 v20, 0x0

    cmp-long v2, v16, v20

    if-eqz v2, :cond_55

    .line 252
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    .line 254
    .local v3, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .line 255
    .local v9, "cs":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    if-nez v9, :cond_6c

    const/4 v4, 0x1

    .local v4, "empty":Z
    :goto_4b
    move-object/from16 v2, p0

    .line 257
    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 261
    if-eqz v4, :cond_6e

    .line 293
    .end local v3    # "d":Z
    .end local v4    # "empty":Z
    .end local v9    # "cs":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    :cond_55
    const-wide/16 v20, 0x0

    cmp-long v2, v10, v20

    if-eqz v2, :cond_60

    .line 294
    if-nez v15, :cond_60

    .line 295
    invoke-virtual {v13, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 299
    :cond_60
    neg-int v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->addAndGet(I)I

    move-result v14

    .line 300
    if-nez v14, :cond_18

    goto :goto_6

    .line 247
    .end local v10    # "emitted":J
    .end local v15    # "unbounded":Z
    :cond_6a
    const/4 v15, 0x0

    goto :goto_36

    .line 255
    .restart local v3    # "d":Z
    .restart local v9    # "cs":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .restart local v10    # "emitted":J
    .restart local v15    # "unbounded":Z
    :cond_6c
    const/4 v4, 0x0

    goto :goto_4b

    .line 265
    .restart local v4    # "empty":Z
    :cond_6e
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 266
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [Ljava/lang/Object;

    .line 268
    .local v8, "array":[Ljava/lang/Object;
    if-nez v8, :cond_94

    .line 269
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 271
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v19, "Broken queue?! Sender received but not the array."

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 277
    :cond_94
    :try_start_94
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combiner:Lrx/functions/FuncN;

    invoke-interface {v2, v8}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_9b} :catch_b1

    move-result-object v18

    .line 285
    .local v18, "v":Ljava/lang/Object;, "TR;"
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 287
    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->requestMore(J)V

    .line 289
    const-wide/16 v20, 0x1

    sub-long v16, v16, v20

    .line 290
    const-wide/16 v20, 0x1

    sub-long v10, v10, v20

    .line 291
    goto :goto_38

    .line 278
    .end local v18    # "v":Ljava/lang/Object;, "TR;"
    :catch_b1
    move-exception v12

    .line 279
    .local v12, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 281
    invoke-virtual {v5, v12}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 171
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    return v0
.end method

.method onError(Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 340
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 342
    .local v3, "localError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 344
    .local v1, "curr":Ljava/lang/Throwable;
    if-eqz v1, :cond_3c

    .line 345
    instance-of v5, v1, Lrx/exceptions/CompositeException;

    if-eqz v5, :cond_29

    move-object v0, v1

    .line 346
    check-cast v0, Lrx/exceptions/CompositeException;

    .line 347
    .local v0, "ce":Lrx/exceptions/CompositeException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 348
    .local v2, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v4, Lrx/exceptions/CompositeException;

    invoke-direct {v4, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 356
    .end local v0    # "ce":Lrx/exceptions/CompositeException;
    .end local v2    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .local v4, "next":Ljava/lang/Throwable;
    :goto_22
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    return-void

    .line 351
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_29
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_22

    .line 354
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_3c
    move-object v4, p1

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_22
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 149
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2b

    .line 153
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 154
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->drain()V

    .line 156
    :cond_2b
    return-void
.end method

.method public subscribe([Lrx/Observable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "sources":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .line 132
    .local v0, "as":[Lrx/Subscriber;, "[Lrx/Subscriber<TT;>;"
    array-length v2, v0

    .line 133
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_10

    .line 134
    new-instance v3, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    invoke-direct {v3, p0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;-><init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V

    aput-object v3, v0, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 136
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->lazySet(I)V

    .line 137
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    invoke-virtual {v3, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 138
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    invoke-virtual {v3, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 139
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v2, :cond_25

    .line 140
    iget-boolean v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v3, :cond_26

    .line 145
    :cond_25
    return-void

    .line 143
    :cond_26
    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-nez v0, :cond_12

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 163
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_12

    .line 164
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 167
    :cond_12
    return-void
.end method
