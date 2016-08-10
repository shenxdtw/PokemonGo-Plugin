.class final Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final TERMINAL_ERROR:Ljava/lang/Throwable;


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field final index:Ljava/util/concurrent/atomic/AtomicLong;

.field innerActive:Z

.field volatile mainDone:Z

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field producer:Lrx/Producer;

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

.field requested:J

.field final ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Terminal error"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>(Lrx/Subscriber;Z)V
    .registers 5
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 103
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    .line 104
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    .line 105
    iput-boolean p2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 108
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 109
    return-void
.end method


# virtual methods
.method protected checkTerminated(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/SpscLinkedArrayQueue;Lrx/Subscriber;Z)Z
    .registers 9
    .param p1, "localMainDone"    # Z
    .param p2, "localInnerActive"    # Z
    .param p3, "localError"    # Ljava/lang/Throwable;
    .param p6, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/Throwable;",
            "Lrx/internal/util/atomic/SpscLinkedArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p4, "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .local p5, "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v0, 0x1

    .line 360
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    if-eqz v1, :cond_15

    .line 361
    if-eqz p1, :cond_28

    if-nez p2, :cond_28

    if-eqz p6, :cond_28

    .line 362
    if-eqz p3, :cond_11

    .line 363
    invoke-virtual {p5, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 380
    :goto_10
    return v0

    .line 365
    :cond_11
    invoke-virtual {p5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_10

    .line 370
    :cond_15
    if-eqz p3, :cond_1e

    .line 371
    invoke-virtual {p4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->clear()V

    .line 372
    invoke-virtual {p5, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 375
    :cond_1e
    if-eqz p1, :cond_28

    if-nez p2, :cond_28

    if-eqz p6, :cond_28

    .line 376
    invoke-virtual {p5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_10

    .line 380
    :cond_28
    const/4 v0, 0x0

    goto :goto_10
.end method

.method childRequested(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .line 259
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 260
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 261
    .local v0, "p":Lrx/Producer;
    iget-wide v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    invoke-static {v2, v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    .line 262
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    .line 263
    if-eqz v0, :cond_11

    .line 264
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 266
    :cond_11
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 267
    return-void

    .line 262
    .end local v0    # "p":Lrx/Producer;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method clearProducer()V
    .registers 2

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 135
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method complete(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 231
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_d

    .line 232
    monitor-exit p0

    .line 238
    :goto_c
    return-void

    .line 234
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 236
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    .line 237
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    goto :goto_c

    .line 236
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method drain()V
    .registers 26

    .prologue
    .line 270
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 274
    .local v5, "localMainDone":Z
    monitor-enter p0

    .line 275
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v4, :cond_12

    .line 276
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->missed:Z

    .line 277
    monitor-exit p0

    .line 344
    :cond_11
    :goto_11
    return-void

    .line 279
    :cond_12
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 280
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 281
    .local v6, "localInnerActive":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    move-wide/from16 v22, v0

    .line 282
    .local v22, "localRequested":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 283
    .local v7, "localError":Ljava/lang/Throwable;
    if-eqz v7, :cond_37

    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_37

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    if-nez v4, :cond_37

    .line 284
    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 286
    :cond_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_a8

    .line 288
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 289
    .local v8, "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v19, v0

    .line 290
    .local v19, "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    .line 294
    .local v9, "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_46
    const-wide/16 v20, 0x0

    .line 296
    .local v20, "localEmission":J
    :cond_48
    :goto_48
    cmp-long v4, v20, v22

    if-eqz v4, :cond_60

    .line 297
    invoke-virtual {v9}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_11

    .line 301
    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v10

    .local v10, "empty":Z
    move-object/from16 v4, p0

    .line 303
    invoke-virtual/range {v4 .. v10}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->checkTerminated(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/SpscLinkedArrayQueue;Lrx/Subscriber;Z)Z

    move-result v4

    if-nez v4, :cond_11

    .line 308
    if-eqz v10, :cond_ab

    .line 322
    .end local v10    # "empty":Z
    :cond_60
    cmp-long v4, v20, v22

    if-nez v4, :cond_7f

    .line 323
    invoke-virtual {v9}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_11

    .line 327
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v17

    move-object/from16 v11, p0

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->checkTerminated(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/SpscLinkedArrayQueue;Lrx/Subscriber;Z)Z

    move-result v4

    if-nez v4, :cond_11

    .line 334
    :cond_7f
    monitor-enter p0

    .line 336
    :try_start_80
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    move-wide/from16 v22, v0

    .line 337
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v22, v12

    if-eqz v4, :cond_97

    .line 338
    sub-long v22, v22, v20

    .line 339
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    .line 342
    :cond_97
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->missed:Z

    if-nez v4, :cond_d4

    .line 343
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 344
    monitor-exit p0

    goto/16 :goto_11

    .line 354
    :catchall_a5
    move-exception v4

    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_80 .. :try_end_a7} :catchall_a5

    throw v4

    .line 286
    .end local v6    # "localInnerActive":Z
    .end local v7    # "localError":Ljava/lang/Throwable;
    .end local v8    # "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .end local v9    # "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v20    # "localEmission":J
    .end local v22    # "localRequested":J
    :catchall_a8
    move-exception v4

    :try_start_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v4

    .line 313
    .restart local v6    # "localInnerActive":Z
    .restart local v7    # "localError":Ljava/lang/Throwable;
    .restart local v8    # "localQueue":Lrx/internal/util/atomic/SpscLinkedArrayQueue;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .restart local v9    # "localChild":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v10    # "empty":Z
    .restart local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v20    # "localEmission":J
    .restart local v22    # "localRequested":J
    :cond_ab
    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;

    .line 314
    .local v18, "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 316
    .local v24, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    # getter for: Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J
    invoke-static/range {v18 .. v18}, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->access$000(Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)J

    move-result-wide v14

    cmp-long v4, v12, v14

    if-nez v4, :cond_48

    .line 317
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 318
    const-wide/16 v12, 0x1

    add-long v20, v20, v12

    goto/16 :goto_48

    .line 346
    .end local v10    # "empty":Z
    .end local v18    # "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .end local v24    # "value":Ljava/lang/Object;, "TT;"
    :cond_d4
    const/4 v4, 0x0

    :try_start_d5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->missed:Z

    .line 348
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 349
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 350
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 351
    if-eqz v7, :cond_f7

    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_f7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->delayError:Z

    if-nez v4, :cond_f7

    .line 352
    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 354
    :cond_f7
    monitor-exit p0
    :try_end_f8
    .catchall {:try_start_d5 .. :try_end_f8} :catchall_a5

    goto/16 :goto_46
.end method

.method emit(Ljava/lang/Object;Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/internal/operators/OperatorSwitch$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    # getter for: Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J
    invoke-static {p2}, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->access$000(Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 203
    monitor-exit p0

    .line 209
    :goto_10
    return-void

    .line 206
    :cond_11
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_21

    .line 208
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    goto :goto_10

    .line 207
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method error(Ljava/lang/Throwable;J)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "id"    # J

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_1c

    .line 215
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->updateError(Ljava/lang/Throwable;)Z

    move-result v0

    .line 216
    .local v0, "success":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 221
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    .line 222
    if-eqz v0, :cond_21

    .line 223
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 227
    :goto_1b
    return-void

    .line 219
    .end local v0    # "success":Z
    :cond_1c
    const/4 v0, 0x1

    .restart local v0    # "success":Z
    goto :goto_15

    .line 221
    .end local v0    # "success":Z
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    .line 225
    .restart local v0    # "success":Z
    :cond_21
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method init()V
    .registers 3

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 119
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 131
    return-void
.end method

.method innerProducer(Lrx/Producer;J)V
    .registers 8
    .param p1, "p"    # Lrx/Producer;
    .param p2, "id"    # J

    .prologue
    .line 246
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 247
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_d

    .line 248
    monitor-exit p0

    .line 255
    :goto_c
    return-void

    .line 250
    :cond_d
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->requested:J

    .line 251
    .local v0, "n":J
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 252
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 254
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_c

    .line 252
    .end local v0    # "n":J
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 197
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 198
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 166
    :try_start_1
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->updateError(Ljava/lang/Throwable;)Z

    move-result v0

    .line 167
    .local v0, "success":Z
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    .line 168
    if-eqz v0, :cond_12

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 170
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain()V

    .line 174
    :goto_e
    return-void

    .line 167
    .end local v0    # "success":Z
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1

    .line 172
    .restart local v0    # "success":Z
    :cond_12
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 143
    .local v0, "id":J
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/SerialSubscription;->get()Lrx/Subscription;

    move-result-object v3

    .line 144
    .local v3, "s":Lrx/Subscription;
    if-eqz v3, :cond_11

    .line 145
    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V

    .line 150
    :cond_11
    monitor-enter p0

    .line 151
    :try_start_12
    new-instance v2, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;

    invoke-direct {v2, v0, v1, p0}, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;-><init>(JLrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    .line 153
    .local v2, "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerActive:Z

    .line 154
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->producer:Lrx/Producer;

    .line 155
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_27

    .line 156
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 158
    invoke-virtual {p1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 159
    return-void

    .line 155
    .end local v2    # "inner":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    :catchall_27
    move-exception v4

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v4
.end method

.method pluginError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 241
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 242
    return-void
.end method

.method updateError(Ljava/lang/Throwable;)Z
    .registers 8
    .param p1, "next"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-ne v0, v4, :cond_9

    .line 191
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8
    return v2

    .line 181
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_9
    if-nez v0, :cond_f

    .line 182
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d
    move v2, v3

    .line 191
    goto :goto_8

    .line 184
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_f
    instance-of v4, v0, Lrx/exceptions/CompositeException;

    if-eqz v4, :cond_29

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Lrx/exceptions/CompositeException;

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    goto :goto_d

    .line 189
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_29
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v0, v5, v2

    aput-object p1, v5, v3

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    iput-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error:Ljava/lang/Throwable;

    goto :goto_d
.end method
