.class final Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile active:Z

.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final arbiter:Lrx/internal/producers/ProducerArbiter;

.field final delayErrorMode:I

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

.field final inner:Lrx/subscriptions/SerialSubscription;

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;"
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

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;II)V
    .registers 9
    .param p3, "prefetch"    # I
    .param p4, "delayErrorMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 121
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    .line 122
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->mapper:Lrx/functions/Func1;

    .line 123
    iput p4, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->delayErrorMode:I

    .line 124
    new-instance v1, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v1}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 125
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 129
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p3}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    .line 133
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_29
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->queue:Ljava/util/Queue;

    .line 134
    new-instance v1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->inner:Lrx/subscriptions/SerialSubscription;

    .line 135
    int-to-long v2, p3

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->request(J)V

    .line 136
    return-void

    .line 131
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_37
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v0, p3}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_29
.end method


# virtual methods
.method drain()V
    .registers 13

    .prologue
    .line 217
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_9

    .line 302
    :cond_8
    :goto_8
    return-void

    .line 221
    :cond_9
    iget v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->delayErrorMode:I

    .line 224
    .local v0, "delayErrorMode":I
    :cond_b
    :goto_b
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v9}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_8

    .line 228
    iget-boolean v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->active:Z

    if-nez v9, :cond_a9

    .line 229
    const/4 v9, 0x1

    if-ne v0, v9, :cond_34

    .line 230
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_34

    .line 231
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v9}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    .line 232
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 233
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v9, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 239
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_34
    iget-boolean v4, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->done:Z

    .line 240
    .local v4, "mainDone":Z
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 241
    .local v8, "v":Ljava/lang/Object;
    if-nez v8, :cond_51

    const/4 v1, 0x1

    .line 243
    .local v1, "empty":Z
    :goto_3f
    if-eqz v4, :cond_5f

    if-eqz v1, :cond_5f

    .line 244
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v9}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    .line 245
    .restart local v2    # "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_53

    .line 246
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v9}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8

    .line 241
    .end local v1    # "empty":Z
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_51
    const/4 v1, 0x0

    goto :goto_3f

    .line 248
    .restart local v1    # "empty":Z
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_53
    invoke-static {v2}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 249
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v9, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 254
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_5f
    if-nez v1, :cond_a9

    .line 259
    :try_start_61
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->mapper:Lrx/functions/Func1;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v10

    invoke-virtual {v10, v8}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/Observable;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_71} :catch_7e

    .line 266
    .local v7, "source":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    if-nez v7, :cond_86

    .line 267
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "The source returned by the mapper was null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->drainError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 260
    .end local v7    # "source":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :catch_7e
    move-exception v5

    .line 261
    .local v5, "mapperError":Ljava/lang/Throwable;
    invoke-static {v5}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual {p0, v5}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->drainError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 271
    .end local v5    # "mapperError":Ljava/lang/Throwable;
    .restart local v7    # "source":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_86
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v9

    if-eq v7, v9, :cond_ca

    .line 273
    instance-of v9, v7, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v9, :cond_b3

    move-object v6, v7

    .line 274
    check-cast v6, Lrx/internal/util/ScalarSynchronousObservable;

    .line 276
    .local v6, "scalarSource":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TR;>;"
    const/4 v9, 0x1

    iput-boolean v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->active:Z

    .line 278
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    new-instance v10, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;

    invoke-virtual {v6}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v11, p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;-><init>(Ljava/lang/Object;Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;)V

    invoke-virtual {v9, v10}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 291
    .end local v6    # "scalarSource":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TR;>;"
    :goto_a4
    const-wide/16 v10, 0x1

    invoke-virtual {p0, v10, v11}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->request(J)V

    .line 298
    .end local v1    # "empty":Z
    .end local v4    # "mainDone":Z
    .end local v7    # "source":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    .end local v8    # "v":Ljava/lang/Object;
    :cond_a9
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_8

    .line 280
    .restart local v1    # "empty":Z
    .restart local v4    # "mainDone":Z
    .restart local v7    # "source":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    .restart local v8    # "v":Ljava/lang/Object;
    :cond_b3
    new-instance v3, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;

    invoke-direct {v3, p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;-><init>(Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;)V

    .line 281
    .local v3, "innerSubscriber":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->inner:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v9, v3}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 283
    invoke-virtual {v3}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_8

    .line 284
    const/4 v9, 0x1

    iput-boolean v9, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->active:Z

    .line 286
    invoke-virtual {v7, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_a4

    .line 293
    .end local v3    # "innerSubscriber":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    :cond_ca
    const-wide/16 v10, 0x1

    invoke-virtual {p0, v10, v11}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->request(J)V

    goto/16 :goto_b
.end method

.method drainError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "mapperError"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->unsubscribe()V

    .line 307
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 308
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 309
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 310
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 315
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1c
    :goto_1c
    return-void

    .line 313
    :cond_1d
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method innerCompleted(J)V
    .registers 6
    .param p1, "produced"    # J

    .prologue
    .line 205
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    .line 206
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1, p2}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 208
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->active:Z

    .line 209
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->drain()V

    .line 210
    return-void
.end method

.method innerError(Ljava/lang/Throwable;J)V
    .registers 8
    .param p1, "innerError"    # Ljava/lang/Throwable;
    .param p2, "produced"    # J

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 187
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->pluginError(Ljava/lang/Throwable;)V

    .line 202
    :goto_b
    return-void

    .line 189
    :cond_c
    iget v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->delayErrorMode:I

    if-nez v1, :cond_25

    .line 190
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 191
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 192
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 194
    :cond_21
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->unsubscribe()V

    goto :goto_b

    .line 196
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_25
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-eqz v1, :cond_30

    .line 197
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v1, p2, p3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 199
    :cond_30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->active:Z

    .line 200
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->drain()V

    goto :goto_b
.end method

.method innerNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->done:Z

    .line 169
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->drain()V

    .line 170
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "mainError"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->done:Z

    .line 152
    iget v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->delayErrorMode:I

    if-nez v1, :cond_26

    .line 153
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 154
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 155
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 157
    :cond_20
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->inner:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 164
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_25
    return-void

    .line 159
    :cond_26
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->drain()V

    goto :goto_25

    .line 162
    :cond_2a
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_25
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
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->queue:Ljava/util/Queue;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 141
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->unsubscribe()V

    .line 142
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 146
    :goto_1b
    return-void

    .line 144
    :cond_1c
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->drain()V

    goto :goto_1b
.end method

.method pluginError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method requestMore(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 173
    cmp-long v0, p1, v2

    if-lez v0, :cond_c

    .line 174
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1, p2}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 179
    :cond_b
    return-void

    .line 176
    :cond_c
    cmp-long v0, p1, v2

    if-gez v0, :cond_b

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
