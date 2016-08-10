.class final Lrx/internal/operators/CachedObservable$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field emitting:Z

.field index:I

.field missed:Z

.field final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 289
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 290
    iput-object p2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    .line 291
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 320
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public produced(J)J
    .registers 6
    .param p1, "n"    # J

    .prologue
    .line 315
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public replay()V
    .registers 21

    .prologue
    .line 338
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    monitor-enter p0

    .line 339
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 340
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 341
    monitor-exit p0

    .line 450
    :cond_12
    :goto_12
    return-void

    .line 343
    :cond_13
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 344
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_46

    .line 345
    const/4 v15, 0x0

    .line 347
    .local v15, "skipFinal":Z
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    .line 348
    .local v10, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 352
    .local v5, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_1b3

    move-result-wide v12

    .line 354
    .local v12, "r":J
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gez v17, :cond_49

    .line 355
    const/4 v15, 0x1

    .line 447
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_3b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto :goto_12

    :catchall_43
    move-exception v17

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_43

    throw v17

    .line 344
    .end local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v12    # "r":J
    .end local v15    # "skipFinal":Z
    :catchall_46
    move-exception v17

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v17

    .line 361
    .restart local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v12    # "r":J
    .restart local v15    # "skipFinal":Z
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lrx/internal/operators/CachedObservable$CacheState;->size()I

    move-result v14

    .line 362
    .local v14, "s":I
    if-eqz v14, :cond_181

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 366
    .local v4, "b":[Ljava/lang/Object;
    if-nez v4, :cond_69

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lrx/internal/operators/CachedObservable$CacheState;->head()[Ljava/lang/Object;

    move-result-object v4

    .line 368
    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 370
    :cond_69
    array-length v0, v4

    move/from16 v17, v0

    add-int/lit8 v9, v17, -0x1

    .line 371
    .local v9, "n":I
    move-object/from16 v0, p0

    iget v7, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 372
    .local v7, "j":I
    move-object/from16 v0, p0

    iget v8, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 374
    .local v8, "k":I
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-nez v17, :cond_c0

    .line 375
    aget-object v11, v4, v8

    .line 376
    .local v11, "o":Ljava/lang/Object;
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9c

    .line 377
    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    .line 378
    const/4 v15, 0x1

    .line 379
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_8b
    .catchall {:try_start_49 .. :try_end_8b} :catchall_1b3

    .line 447
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_90
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_12

    :catchall_99
    move-exception v17

    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_90 .. :try_end_9b} :catchall_99

    throw v17

    .line 382
    :cond_9c
    :try_start_9c
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_181

    .line 383
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 384
    const/4 v15, 0x1

    .line 385
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_1b3

    .line 447
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_b4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_12

    :catchall_bd
    move-exception v17

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_bd

    throw v17

    .line 389
    .end local v11    # "o":Ljava/lang/Object;
    :cond_c0
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-lez v17, :cond_181

    .line 390
    const/16 v16, 0x0

    .line 392
    .local v16, "valuesProduced":I
    :goto_c8
    if-ge v7, v14, :cond_151

    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-lez v17, :cond_151

    .line 393
    :try_start_d0
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_1b3

    move-result v17

    if-eqz v17, :cond_e8

    .line 394
    const/4 v15, 0x1

    .line 447
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_dc
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_12

    :catchall_e5
    move-exception v17

    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_dc .. :try_end_e7} :catchall_e5

    throw v17

    .line 397
    :cond_e8
    if-ne v8, v9, :cond_f4

    .line 398
    :try_start_ea
    aget-object v17, v4, v9

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v0, v17

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 399
    const/4 v8, 0x0

    .line 401
    :cond_f4
    aget-object v11, v4, v8
    :try_end_f6
    .catchall {:try_start_ea .. :try_end_f6} :catchall_1b3

    .line 404
    .restart local v11    # "o":Ljava/lang/Object;
    :try_start_f6
    invoke-virtual {v10, v5, v11}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_145

    .line 405
    const/4 v15, 0x1

    .line 406
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_100} :catch_111
    .catchall {:try_start_f6 .. :try_end_100} :catchall_1b3

    .line 447
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_105
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_12

    :catchall_10e
    move-exception v17

    monitor-exit p0
    :try_end_110
    .catchall {:try_start_105 .. :try_end_110} :catchall_10e

    throw v17

    .line 409
    :catch_111
    move-exception v6

    .line 410
    .local v6, "err":Ljava/lang/Throwable;
    :try_start_112
    invoke-static {v6}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 411
    const/4 v15, 0x1

    .line 412
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V

    .line 413
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_134

    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_134

    .line 414
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_134
    .catchall {:try_start_112 .. :try_end_134} :catchall_1b3

    .line 447
    :cond_134
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_139
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_12

    :catchall_142
    move-exception v17

    monitor-exit p0
    :try_end_144
    .catchall {:try_start_139 .. :try_end_144} :catchall_142

    throw v17

    .line 419
    .end local v6    # "err":Ljava/lang/Throwable;
    :cond_145
    add-int/lit8 v8, v8, 0x1

    .line 420
    add-int/lit8 v7, v7, 0x1

    .line 421
    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    .line 422
    add-int/lit8 v16, v16, 0x1

    .line 423
    goto/16 :goto_c8

    .line 425
    .end local v11    # "o":Ljava/lang/Object;
    :cond_151
    :try_start_151
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_1b3

    move-result v17

    if-eqz v17, :cond_169

    .line 426
    const/4 v15, 0x1

    .line 447
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_15d
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_12

    :catchall_166
    move-exception v17

    monitor-exit p0
    :try_end_168
    .catchall {:try_start_15d .. :try_end_168} :catchall_166

    throw v17

    .line 430
    :cond_169
    :try_start_169
    move-object/from16 v0, p0

    iput v7, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 431
    move-object/from16 v0, p0

    iput v8, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 432
    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 433
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/CachedObservable$ReplayProducer;->produced(J)J

    .line 437
    .end local v4    # "b":[Ljava/lang/Object;
    .end local v7    # "j":I
    .end local v8    # "k":I
    .end local v9    # "n":I
    .end local v16    # "valuesProduced":I
    :cond_181
    monitor-enter p0
    :try_end_182
    .catchall {:try_start_169 .. :try_end_182} :catchall_1b3

    .line 438
    :try_start_182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a5

    .line 439
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 440
    const/4 v15, 0x1

    .line 441
    monitor-exit p0
    :try_end_194
    .catchall {:try_start_182 .. :try_end_194} :catchall_1b0

    .line 447
    if-nez v15, :cond_12

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_199
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_12

    :catchall_1a2
    move-exception v17

    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_199 .. :try_end_1a4} :catchall_1a2

    throw v17

    .line 443
    :cond_1a5
    const/16 v17, 0x0

    :try_start_1a7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 444
    monitor-exit p0

    goto/16 :goto_2b

    :catchall_1b0
    move-exception v17

    monitor-exit p0
    :try_end_1b2
    .catchall {:try_start_1a7 .. :try_end_1b2} :catchall_1b0

    :try_start_1b2
    throw v17
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b3

    .line 447
    .end local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v12    # "r":J
    .end local v14    # "s":I
    :catchall_1b3
    move-exception v17

    if-nez v15, :cond_1c0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v18, 0x0

    :try_start_1b9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0
    :try_end_1c0
    .catchall {:try_start_1b9 .. :try_end_1c0} :catchall_1c1

    :cond_1c0
    throw v17

    :catchall_1c1
    move-exception v17

    :try_start_1c2
    monitor-exit p0
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    throw v17
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 296
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_b

    .line 305
    :goto_a
    return-void

    .line 299
    :cond_b
    add-long v2, v0, p1

    .line 300
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_16

    .line 301
    const-wide v2, 0x7fffffffffffffffL

    .line 303
    :cond_16
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 304
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    goto :goto_a
.end method

.method public unsubscribe()V
    .registers 7

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v4, 0x0

    .line 324
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 325
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_19

    .line 326
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->getAndSet(J)J

    move-result-wide v0

    .line 327
    cmp-long v2, v0, v4

    if-ltz v2, :cond_19

    .line 328
    iget-object v2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v2, p0}, Lrx/internal/operators/CachedObservable$CacheState;->removeProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V

    .line 331
    :cond_19
    return-void
.end method
