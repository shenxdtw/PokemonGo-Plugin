.class public final Lrx/internal/operators/OnSubscribePublishMulticast;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OnSubscribePublishMulticast.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;,
        Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;",
        "Lrx/Observer",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<*>;"
        }
    .end annotation
.end field

.field static final TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x33eddf69c4461997L


# instance fields
.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final parent:Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field volatile producer:Lrx/Producer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 86
    new-array v0, v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    sput-object v0, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 92
    new-array v0, v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    sput-object v0, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6
    .param p1, "prefetch"    # I
    .param p2, "delayError"    # Z

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 102
    if-gtz p1, :cond_1e

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetch > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1e
    iput p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->prefetch:I

    .line 106
    iput-boolean p2, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->delayError:Z

    .line 107
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 108
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    .line 112
    :goto_2f
    sget-object v0, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    check-cast v0, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 113
    new-instance v0, Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;-><init>(Lrx/internal/operators/OnSubscribePublishMulticast;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;

    .line 114
    return-void

    .line 110
    :cond_3d
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    goto :goto_2f
.end method


# virtual methods
.method add(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 317
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    sget-object v4, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v4, :cond_8

    .line 332
    :goto_7
    return v3

    .line 320
    :cond_8
    monitor-enter p0

    .line 321
    :try_start_9
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 322
    sget-object v4, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v4, :cond_14

    .line 323
    monitor-exit p0

    goto :goto_7

    .line 333
    :catchall_11
    move-exception v3

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v3

    .line 326
    :cond_14
    :try_start_14
    array-length v2, v0

    .line 328
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 329
    .local v1, "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    aput-object p1, v1, v2

    .line 331
    iput-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 332
    const/4 v3, 0x1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_11

    goto :goto_7
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    invoke-direct {v1, p1, p0}, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;-><init>(Lrx/Subscriber;Lrx/internal/operators/OnSubscribePublishMulticast;)V

    .line 119
    .local v1, "pp":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 120
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 122
    invoke-virtual {p0, v1}, Lrx/internal/operators/OnSubscribePublishMulticast;->add(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 123
    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 124
    invoke-virtual {p0, v1}, Lrx/internal/operators/OnSubscribePublishMulticast;->remove(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)V

    .line 136
    :goto_1a
    return-void

    .line 126
    :cond_1b
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    goto :goto_1a

    .line 129
    :cond_1f
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_27

    .line 131
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 133
    :cond_27
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1a
.end method

.method checkTerminated(ZZ)Z
    .registers 11
    .param p1, "d"    # Z
    .param p2, "empty"    # Z

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    const/4 v6, 0x1

    .line 254
    if-eqz p1, :cond_60

    .line 255
    iget-boolean v7, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->delayError:Z

    if-eqz v7, :cond_2f

    .line 256
    if-eqz p2, :cond_60

    .line 257
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    move-result-object v0

    .line 258
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 259
    .local v2, "ex":Ljava/lang/Throwable;
    if-eqz v2, :cond_20

    .line 260
    move-object v1, v0

    .local v1, "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_14
    if-ge v3, v5, :cond_61

    aget-object v4, v1, v3

    .line 261
    .local v4, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v7, v4, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v7, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 264
    .end local v1    # "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .end local v3    # "i$":I
    .end local v4    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v5    # "len$":I
    :cond_20
    move-object v1, v0

    .restart local v1    # "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_23
    if-ge v3, v5, :cond_61

    aget-object v4, v1, v3

    .line 265
    .restart local v4    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v7, v4, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v7}, Lrx/Subscriber;->onCompleted()V

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 271
    .end local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v1    # "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i$":I
    .end local v4    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v5    # "len$":I
    :cond_2f
    iget-object v2, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 272
    .restart local v2    # "ex":Ljava/lang/Throwable;
    if-eqz v2, :cond_4b

    .line 273
    iget-object v7, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->clear()V

    .line 274
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    move-result-object v0

    .line 275
    .restart local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    move-object v1, v0

    .restart local v1    # "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3f
    if-ge v3, v5, :cond_61

    aget-object v4, v1, v3

    .line 276
    .restart local v4    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v7, v4, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v7, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 280
    .end local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v1    # "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .end local v3    # "i$":I
    .end local v4    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v5    # "len$":I
    :cond_4b
    if-eqz p2, :cond_60

    .line 281
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    move-result-object v0

    .line 282
    .restart local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    move-object v1, v0

    .restart local v1    # "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_54
    if-ge v3, v5, :cond_61

    aget-object v4, v1, v3

    .line 283
    .restart local v4    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v7, v4, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v7}, Lrx/Subscriber;->onCompleted()V

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 289
    .end local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v1    # "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i$":I
    .end local v4    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v5    # "len$":I
    :cond_60
    const/4 v6, 0x0

    :cond_61
    return v6
.end method

.method drain()V
    .registers 23

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->getAndIncrement()I

    move-result v20

    if-eqz v20, :cond_7

    .line 245
    :cond_6
    :goto_6
    return-void

    .line 183
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    move-object/from16 v16, v0

    .line 185
    .local v16, "q":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    const/4 v13, 0x0

    .line 189
    .local v13, "missed":I
    :cond_e
    const-wide v18, 0x7fffffffffffffffL

    .line 190
    .local v18, "r":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 191
    .local v4, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    array-length v14, v4

    .line 193
    .local v14, "n":I
    move-object v5, v4

    .local v5, "arr$":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1b
    if-ge v10, v12, :cond_2a

    aget-object v11, v5, v10

    .line 194
    .local v11, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    invoke-virtual {v11}, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->get()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 193
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 197
    .end local v11    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_2a
    if-eqz v14, :cond_99

    .line 198
    const-wide/16 v8, 0x0

    .line 200
    .local v8, "e":J
    :goto_2e
    cmp-long v20, v8, v18

    if-eqz v20, :cond_47

    .line 201
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 203
    .local v6, "d":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    .line 205
    .local v17, "v":Ljava/lang/Object;, "TT;"
    if-nez v17, :cond_7d

    const/4 v7, 0x1

    .line 207
    .local v7, "empty":Z
    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lrx/internal/operators/OnSubscribePublishMulticast;->checkTerminated(ZZ)Z

    move-result v20

    if-nez v20, :cond_6

    .line 211
    if-eqz v7, :cond_7f

    .line 222
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v17    # "v":Ljava/lang/Object;, "TT;"
    :cond_47
    cmp-long v20, v8, v18

    if-nez v20, :cond_61

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    move/from16 v20, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->isEmpty()Z

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribePublishMulticast;->checkTerminated(ZZ)Z

    move-result v20

    if-nez v20, :cond_6

    .line 228
    :cond_61
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_99

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->producer:Lrx/Producer;

    .line 230
    .local v15, "p":Lrx/Producer;
    if-eqz v15, :cond_70

    .line 231
    invoke-interface {v15, v8, v9}, Lrx/Producer;->request(J)V

    .line 233
    :cond_70
    move-object v5, v4

    array-length v12, v5

    const/4 v10, 0x0

    :goto_73
    if-ge v10, v12, :cond_99

    aget-object v11, v5, v10

    .line 234
    .restart local v11    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    invoke-static {v11, v8, v9}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 233
    add-int/lit8 v10, v10, 0x1

    goto :goto_73

    .line 205
    .end local v11    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v15    # "p":Lrx/Producer;
    .restart local v6    # "d":Z
    .restart local v17    # "v":Ljava/lang/Object;, "TT;"
    :cond_7d
    const/4 v7, 0x0

    goto :goto_3d

    .line 215
    .restart local v7    # "empty":Z
    :cond_7f
    move-object v5, v4

    array-length v12, v5

    const/4 v10, 0x0

    :goto_82
    if-ge v10, v12, :cond_94

    aget-object v11, v5, v10

    .line 216
    .restart local v11    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v0, v11, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Lrx/Subscriber;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 215
    add-int/lit8 v10, v10, 0x1

    goto :goto_82

    .line 219
    .end local v11    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_94
    const-wide/16 v20, 0x1

    add-long v8, v8, v20

    .line 220
    goto :goto_2e

    .line 240
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v8    # "e":J
    .end local v17    # "v":Ljava/lang/Object;, "TT;"
    :cond_99
    neg-int v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lrx/internal/operators/OnSubscribePublishMulticast;->addAndGet(I)I

    move-result v13

    .line 241
    if-nez v13, :cond_e

    goto/16 :goto_6
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 428
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 159
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    .line 160
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    .line 154
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 141
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;->unsubscribe()V

    .line 143
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string v1, "Queue full?!"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 146
    :cond_19
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    .line 147
    return-void
.end method

.method remove(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 343
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v5, :cond_a

    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v5, :cond_b

    .line 376
    :cond_a
    :goto_a
    return-void

    .line 346
    :cond_b
    monitor-enter p0

    .line 347
    :try_start_c
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 348
    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v5, :cond_16

    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v5, :cond_1b

    .line 349
    :cond_16
    monitor-exit p0

    goto :goto_a

    .line 375
    :catchall_18
    move-exception v5

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw v5

    .line 352
    :cond_1b
    const/4 v3, -0x1

    .line 353
    .local v3, "j":I
    :try_start_1c
    array-length v4, v0

    .line 355
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v4, :cond_25

    .line 356
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_29

    .line 357
    move v3, v2

    .line 362
    :cond_25
    if-gez v3, :cond_2c

    .line 363
    monitor-exit p0

    goto :goto_a

    .line 355
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 367
    :cond_2c
    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    .line 368
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    check-cast v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 374
    .local v1, "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :goto_33
    iput-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 375
    monitor-exit p0

    goto :goto_a

    .line 370
    .end local v1    # "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_37
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 371
    .restart local v1    # "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_18

    goto :goto_33
.end method

.method setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->producer:Lrx/Producer;

    .line 168
    iget v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 169
    return-void
.end method

.method public subscriber()Lrx/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;

    return-object v0
.end method

.method terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 299
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v1, :cond_14

    .line 300
    monitor-enter p0

    .line 301
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 302
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v1, :cond_13

    .line 303
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    check-cast v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    iput-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 305
    :cond_13
    monitor-exit p0

    .line 307
    :cond_14
    return-object v0

    .line 305
    :catchall_15
    move-exception v1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 423
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber;->unsubscribe()V

    .line 424
    return-void
.end method
