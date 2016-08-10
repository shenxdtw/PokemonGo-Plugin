.class final Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
.super Lrx/Subscriber;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final counter:Ljava/util/concurrent/atomic/AtomicLong;

.field final delayError:Z

.field emitted:J

.field error:Ljava/lang/Throwable;

.field volatile finished:Z

.field final limit:I

.field final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

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

.field final recursiveScheduler:Lrx/Scheduler$Worker;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lrx/Scheduler;Lrx/Subscriber;ZI)V
    .registers 9
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p3, "delayError"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "Lrx/Subscriber",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    .line 109
    invoke-virtual {p1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    .line 110
    iput-boolean p3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->delayError:Z

    .line 111
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 112
    if-lez p4, :cond_3c

    move v0, p4

    .line 114
    .local v0, "calculatedSize":I
    :goto_24
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->limit:I

    .line 115
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 116
    new-instance v1, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v1, v0}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    .line 121
    :goto_37
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    .line 122
    return-void

    .line 112
    .end local v0    # "calculatedSize":I
    :cond_3c
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    goto :goto_24

    .line 118
    .restart local v0    # "calculatedSize":I
    :cond_3f
    new-instance v1, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    goto :goto_37
.end method


# virtual methods
.method public call()V
    .registers 19

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    const-wide/16 v8, 0x1

    .line 186
    .local v8, "missed":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->emitted:J

    .line 191
    .local v2, "currentEmission":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    .line 192
    .local v10, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    .line 193
    .local v6, "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 200
    .local v7, "localOn":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 202
    .local v12, "requestAmount":J
    :cond_1a
    :goto_1a
    cmp-long v14, v12, v2

    if-eqz v14, :cond_36

    .line 203
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 204
    .local v4, "done":Z
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 205
    .local v11, "v":Ljava/lang/Object;
    if-nez v11, :cond_32

    const/4 v5, 0x1

    .line 207
    .local v5, "empty":Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v10}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 237
    .end local v4    # "done":Z
    .end local v5    # "empty":Z
    .end local v11    # "v":Ljava/lang/Object;
    :cond_31
    :goto_31
    return-void

    .line 205
    .restart local v4    # "done":Z
    .restart local v11    # "v":Ljava/lang/Object;
    :cond_32
    const/4 v5, 0x0

    goto :goto_29

    .line 211
    .restart local v5    # "empty":Z
    :cond_34
    if-eqz v5, :cond_62

    .line 225
    .end local v4    # "done":Z
    .end local v5    # "empty":Z
    .end local v11    # "v":Ljava/lang/Object;
    :cond_36
    cmp-long v14, v12, v2

    if-nez v14, :cond_4a

    .line 226
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v6, v10}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v14

    if-nez v14, :cond_31

    .line 231
    :cond_4a
    move-object/from16 v0, p0

    iput-wide v2, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->emitted:J

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v8

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v8

    .line 233
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_12

    goto :goto_31

    .line 215
    .restart local v4    # "done":Z
    .restart local v5    # "empty":Z
    .restart local v11    # "v":Ljava/lang/Object;
    :cond_62
    invoke-virtual {v7, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v14}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 217
    const-wide/16 v14, 0x1

    add-long/2addr v2, v14

    .line 218
    move-object/from16 v0, p0

    iget v14, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->limit:I

    int-to-long v14, v14

    cmp-long v14, v2, v14

    if-nez v14, :cond_1a

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v14, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v12

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    .line 221
    const-wide/16 v2, 0x0

    goto :goto_1a
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .registers 8
    .param p1, "done"    # Z
    .param p2, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 240
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 241
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 282
    :goto_a
    return v1

    .line 245
    :cond_b
    if-eqz p1, :cond_1f

    .line 246
    iget-boolean v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->delayError:Z

    if-eqz v2, :cond_2c

    .line 247
    if-eqz p2, :cond_1f

    .line 248
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 250
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_21

    .line 251
    :try_start_17
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    .line 256
    :goto_1a
    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 282
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_a

    .line 253
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_21
    :try_start_21
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_1a

    .line 256
    :catchall_25
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v1

    .line 260
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2c
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 261
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_43

    .line 262
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 264
    :try_start_33
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    .line 266
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    goto :goto_a

    :catchall_3c
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v1

    .line 270
    :cond_43
    if-eqz p2, :cond_1f

    .line 272
    :try_start_45
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4e

    .line 274
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    goto :goto_a

    :catchall_4e
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v1
.end method

.method init()V
    .registers 3

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    .line 129
    .local v0, "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 140
    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 141
    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 142
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_b

    .line 163
    :cond_a
    :goto_a
    return-void

    .line 161
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_a
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_16

    .line 168
    :cond_a
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 174
    :goto_15
    return-void

    .line 171
    :cond_16
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 173
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_15
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_b

    .line 154
    :cond_a
    :goto_a
    return-void

    .line 149
    :cond_b
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 150
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 153
    :cond_22
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_a
.end method

.method protected schedule()V
    .registers 5

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 178
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0, p0}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 180
    :cond_11
    return-void
.end method
