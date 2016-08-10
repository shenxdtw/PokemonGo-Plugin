.class public final Lrx/internal/operators/BackpressureUtils;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# static fields
.field static final COMPLETED_MASK:J = -0x8000000000000000L

.field static final REQUESTED_MASK:J = 0x7fffffffffffffffL


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addCap(JJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 105
    add-long v0, p0, p2

    .line 106
    .local v0, "u":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 107
    const-wide v0, 0x7fffffffffffffffL

    .line 109
    :cond_d
    return-wide v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 8
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .prologue
    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 75
    .local v0, "current":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    .line 76
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    return-wide v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J
    .registers 10
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TT;>;TT;J)J"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "requested":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 53
    .local v2, "current":J
    invoke-static {v2, v3, p2, p3}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v4

    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    return-wide v2
.end method

.method public static multiplyCap(JJ)J
    .registers 12
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 89
    mul-long v0, p0, p2

    .line 90
    .local v0, "u":J
    or-long v2, p0, p2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1c

    .line 91
    cmp-long v2, p2, v6

    if-eqz v2, :cond_1c

    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_1c

    .line 92
    const-wide v0, 0x7fffffffffffffffL

    .line 95
    :cond_1c
    return-wide v0
.end method

.method public static postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V
    .registers 4
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/internal/operators/BackpressureUtils;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V

    .line 146
    return-void
.end method

.method public static postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V
    .registers 14
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p3, "exitTransform":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    .line 199
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 202
    .local v0, "r":J
    and-long v4, v0, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_f

    .line 216
    :cond_e
    :goto_e
    return-void

    .line 207
    :cond_f
    or-long v2, v0, v6

    .line 209
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    cmp-long v4, v0, v8

    if-eqz v4, :cond_e

    .line 214
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/BackpressureUtils;->postCompleteDrain(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V

    goto :goto_e
.end method

.method static postCompleteDrain(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V
    .registers 14
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p3, "exitTransform":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    const-wide v8, 0x7fffffffffffffffL

    .line 292
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 295
    .local v2, "r":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_26

    .line 297
    :goto_d
    invoke-virtual {p2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 383
    :cond_13
    :goto_13
    return-void

    .line 301
    :cond_14
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 303
    .local v4, "v":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_1e

    .line 304
    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_13

    .line 308
    :cond_1e
    invoke-interface {p3, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_d

    .line 319
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    :cond_26
    const-wide/high16 v0, -0x8000000000000000L

    .line 334
    .local v0, "e":J
    :cond_28
    :goto_28
    cmp-long v5, v0, v2

    if-eqz v5, :cond_47

    .line 335
    invoke-virtual {p2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_13

    .line 339
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 341
    .restart local v4    # "v":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_3c

    .line 342
    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_13

    .line 346
    :cond_3c
    invoke-interface {p3, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 348
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 349
    goto :goto_28

    .line 357
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    :cond_47
    cmp-long v5, v0, v2

    if-nez v5, :cond_5b

    .line 358
    invoke-virtual {p2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_13

    .line 361
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 362
    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_13

    .line 371
    :cond_5b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 373
    cmp-long v5, v2, v0

    if-nez v5, :cond_28

    .line 380
    and-long v6, v0, v8

    neg-long v6, v6

    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 382
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v5, v2, v6

    if-eqz v5, :cond_13

    .line 386
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_28
.end method

.method public static postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;)Z
    .registers 12
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 168
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p4, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/BackpressureUtils;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)Z

    move-result v0

    return v0
.end method

.method public static postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)Z
    .registers 23
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 244
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p4, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p5, "exitTransform":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-gez v12, :cond_21

    .line 245
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "n >= 0 required but it was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 247
    :cond_21
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-nez v12, :cond_38

    .line 248
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_36

    const/4 v12, 0x1

    .line 274
    :goto_35
    return v12

    .line 248
    :cond_36
    const/4 v12, 0x0

    goto :goto_35

    .line 252
    :cond_38
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 255
    .local v6, "r":J
    const-wide/high16 v12, -0x8000000000000000L

    and-long v4, v6, v12

    .line 257
    .local v4, "c":J
    const-wide v12, 0x7fffffffffffffffL

    and-long v8, v6, v12

    .line 261
    .local v8, "u":J
    move-wide/from16 v0, p1

    invoke-static {v8, v9, v0, v1}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v10

    .line 264
    .local v10, "v":J
    or-long/2addr v10, v4

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 269
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, v6, v12

    if-nez v12, :cond_69

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lrx/internal/operators/BackpressureUtils;->postCompleteDrain(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V

    .line 271
    const/4 v12, 0x0

    goto :goto_35

    .line 274
    :cond_69
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_71

    const/4 v12, 0x1

    goto :goto_35

    :cond_71
    const/4 v12, 0x0

    goto :goto_35
.end method

.method public static produced(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 12
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 401
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 402
    .local v0, "current":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_f

    move-wide v2, v4

    .line 410
    :goto_e
    return-wide v2

    .line 405
    :cond_f
    sub-long v2, v0, p1

    .line 406
    .local v2, "next":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_30

    .line 407
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced than requested: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    :cond_30
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_e
.end method
