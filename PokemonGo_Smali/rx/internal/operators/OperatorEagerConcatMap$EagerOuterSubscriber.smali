.class final Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;
.super Lrx/Subscriber;
.source "OperatorEagerConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorEagerConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EagerOuterSubscriber"
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

.field volatile done:Z

.field error:Ljava/lang/Throwable;

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

.field private sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

.field final subscribers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/functions/Func1;IILrx/Subscriber;)V
    .registers 7
    .param p2, "bufferSize"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;II",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p4, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 88
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->mapper:Lrx/functions/Func1;

    .line 89
    iput p2, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->bufferSize:I

    .line 90
    iput-object p4, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_25

    const-wide v0, 0x7fffffffffffffffL

    :goto_21
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->request(J)V

    .line 94
    return-void

    .line 93
    :cond_25
    int-to-long v0, p3

    goto :goto_21
.end method


# virtual methods
.method cleanup()V
    .registers 6

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    monitor-enter v4

    .line 114
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 116
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    .line 119
    .local v2, "s":Lrx/Subscription;
    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    goto :goto_14

    .line 116
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    .end local v2    # "s":Lrx/Subscription;
    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v3

    .line 121
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :cond_27
    return-void
.end method

.method drain()V
    .registers 25

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v22

    if-eqz v22, :cond_d

    .line 271
    :goto_c
    return-void

    .line 168
    :cond_d
    const/4 v14, 0x1

    .line 170
    .local v14, "missed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    move-object/from16 v17, v0

    .line 171
    .local v17, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    .line 172
    .local v4, "actualSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v15

    .line 176
    .local v15, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TR;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_28

    .line 177
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cleanup()V

    goto :goto_c

    .line 183
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->done:Z

    move/from16 v16, v0

    .line 184
    .local v16, "outerDone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 185
    :try_start_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;

    .line 186
    .local v13, "innerSubscriber":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    monitor-exit v23
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_54

    .line 187
    if-nez v13, :cond_57

    const/4 v5, 0x1

    .line 189
    .local v5, "empty":Z
    :goto_45
    if-eqz v16, :cond_5f

    .line 190
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->error:Ljava/lang/Throwable;

    .line 191
    .local v8, "error":Ljava/lang/Throwable;
    if-eqz v8, :cond_59

    .line 192
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cleanup()V

    .line 193
    invoke-virtual {v4, v8}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 186
    .end local v5    # "empty":Z
    .end local v8    # "error":Ljava/lang/Throwable;
    .end local v13    # "innerSubscriber":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    :catchall_54
    move-exception v22

    :try_start_55
    monitor-exit v23
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v22

    .line 187
    .restart local v13    # "innerSubscriber":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    :cond_57
    const/4 v5, 0x0

    goto :goto_45

    .line 196
    .restart local v5    # "empty":Z
    .restart local v8    # "error":Ljava/lang/Throwable;
    :cond_59
    if-eqz v5, :cond_5f

    .line 197
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_c

    .line 202
    .end local v8    # "error":Ljava/lang/Throwable;
    :cond_5f
    if-nez v5, :cond_cb

    .line 203
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    .line 204
    .local v18, "requestedAmount":J
    const-wide/16 v6, 0x0

    .line 205
    .local v6, "emittedAmount":J
    const-wide v22, 0x7fffffffffffffffL

    cmp-long v22, v18, v22

    if-nez v22, :cond_8d

    const/16 v20, 0x1

    .line 207
    .local v20, "unbounded":Z
    :goto_72
    iget-object v12, v13, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->queue:Ljava/util/Queue;

    .line 208
    .local v12, "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 212
    .local v10, "innerDone":Z
    :goto_75
    iget-boolean v0, v13, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->done:Z

    move/from16 v16, v0

    .line 213
    invoke-interface {v12}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v21

    .line 214
    .local v21, "v":Ljava/lang/Object;
    if-nez v21, :cond_90

    const/4 v5, 0x1

    .line 216
    :goto_80
    if-eqz v16, :cond_df

    .line 217
    iget-object v11, v13, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->error:Ljava/lang/Throwable;

    .line 218
    .local v11, "innerError":Ljava/lang/Throwable;
    if-eqz v11, :cond_92

    .line 219
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cleanup()V

    .line 220
    invoke-virtual {v4, v11}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 205
    .end local v10    # "innerDone":Z
    .end local v11    # "innerError":Ljava/lang/Throwable;
    .end local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v20    # "unbounded":Z
    .end local v21    # "v":Ljava/lang/Object;
    :cond_8d
    const/16 v20, 0x0

    goto :goto_72

    .line 214
    .restart local v10    # "innerDone":Z
    .restart local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v20    # "unbounded":Z
    .restart local v21    # "v":Ljava/lang/Object;
    :cond_90
    const/4 v5, 0x0

    goto :goto_80

    .line 223
    .restart local v11    # "innerError":Ljava/lang/Throwable;
    :cond_92
    if-eqz v5, :cond_df

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 225
    :try_start_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 226
    monitor-exit v23
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_dc

    .line 227
    invoke-virtual {v13}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->unsubscribe()V

    .line 228
    const/4 v10, 0x1

    .line 229
    const-wide/16 v22, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->request(J)V

    .line 255
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_b2
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-eqz v22, :cond_c9

    .line 256
    if-nez v20, :cond_bf

    .line 257
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 259
    :cond_bf
    if-nez v10, :cond_c9

    .line 260
    neg-long v0, v6

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->requestMore(J)V

    .line 264
    :cond_c9
    if-nez v10, :cond_1c

    .line 269
    .end local v6    # "emittedAmount":J
    .end local v10    # "innerDone":Z
    .end local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v18    # "requestedAmount":J
    .end local v20    # "unbounded":Z
    .end local v21    # "v":Ljava/lang/Object;
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    neg-int v0, v14

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v14

    .line 270
    if-nez v14, :cond_1c

    goto/16 :goto_c

    .line 226
    .restart local v6    # "emittedAmount":J
    .restart local v10    # "innerDone":Z
    .restart local v11    # "innerError":Ljava/lang/Throwable;
    .restart local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v18    # "requestedAmount":J
    .restart local v20    # "unbounded":Z
    .restart local v21    # "v":Ljava/lang/Object;
    :catchall_dc
    move-exception v22

    :try_start_dd
    monitor-exit v23
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v22

    .line 234
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_df
    if-nez v5, :cond_b2

    .line 238
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-eqz v22, :cond_b2

    .line 242
    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 245
    :try_start_ea
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_f5} :catch_ff

    .line 251
    const-wide/16 v22, 0x1

    sub-long v18, v18, v22

    .line 252
    const-wide/16 v22, 0x1

    sub-long v6, v6, v22

    .line 253
    goto/16 :goto_75

    .line 246
    :catch_ff
    move-exception v9

    .line 247
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v21

    invoke-static {v9, v4, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto/16 :goto_c
.end method

.method init()V
    .registers 3

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    .line 98
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->add(Lrx/Subscription;)V

    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 108
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 109
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->done:Z

    .line 161
    invoke-virtual {p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 162
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->error:Ljava/lang/Throwable;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->done:Z

    .line 155
    invoke-virtual {p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 156
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->mapper:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_14

    .line 134
    .local v2, "observable":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;

    iget v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->bufferSize:I

    invoke-direct {v1, p0, v3}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;I)V

    .line 135
    .local v1, "inner":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    iget-boolean v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    if-eqz v3, :cond_1b

    .line 149
    .end local v1    # "inner":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    .end local v2    # "observable":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_13
    :goto_13
    return-void

    .line 129
    :catch_14
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v3, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_13

    .line 138
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "inner":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    .restart local v2    # "observable":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_1b
    iget-object v4, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    monitor-enter v4

    .line 139
    :try_start_1e
    iget-boolean v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    if-eqz v3, :cond_27

    .line 140
    monitor-exit v4

    goto :goto_13

    .line 143
    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    throw v3

    .line 142
    :cond_27
    :try_start_27
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 144
    iget-boolean v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    if-nez v3, :cond_13

    .line 147
    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 148
    invoke-virtual {p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    goto :goto_13
.end method
