.class public final Lrx/internal/producers/ProducerObserverArbiter;
.super Ljava/lang/Object;
.source "ProducerObserverArbiter.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentProducer:Lrx/Producer;

.field emitting:Z

.field volatile hasError:Z

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field missedTerminal:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lrx/internal/producers/ProducerObserverArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerObserverArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    .line 57
    return-void
.end method


# virtual methods
.method emitLoop()V
    .registers 25

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    .line 198
    .local v4, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_4
    :goto_4
    monitor-enter p0

    .line 199
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 200
    .local v12, "localRequested":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 201
    .local v11, "localProducer":Lrx/Producer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 202
    .local v14, "localTerminal":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    move-object/from16 v16, v0

    .line 203
    .local v16, "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-nez v22, :cond_2d

    if-nez v11, :cond_2d

    if-nez v16, :cond_2d

    if-nez v14, :cond_2d

    .line 205
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 206
    monitor-exit p0

    .line 239
    .end local v14    # "localTerminal":Ljava/lang/Object;
    :cond_2c
    :goto_2c
    return-void

    .line 208
    .restart local v14    # "localTerminal":Ljava/lang/Object;
    :cond_2d
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 209
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 210
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 211
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 212
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_65

    .line 213
    if-eqz v16, :cond_56

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_68

    :cond_56
    const/4 v5, 0x1

    .line 214
    .local v5, "empty":Z
    :goto_57
    if-eqz v14, :cond_70

    .line 215
    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    if-eq v14, v0, :cond_6a

    .line 216
    check-cast v14, Ljava/lang/Throwable;

    .end local v14    # "localTerminal":Ljava/lang/Object;
    invoke-virtual {v4, v14}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 212
    .end local v5    # "empty":Z
    .end local v11    # "localProducer":Lrx/Producer;
    .end local v12    # "localRequested":J
    .end local v16    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_65
    move-exception v22

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v22

    .line 213
    .restart local v11    # "localProducer":Lrx/Producer;
    .restart local v12    # "localRequested":J
    .restart local v14    # "localTerminal":Ljava/lang/Object;
    .restart local v16    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_68
    const/4 v5, 0x0

    goto :goto_57

    .line 219
    .restart local v5    # "empty":Z
    :cond_6a
    if-eqz v5, :cond_70

    .line 220
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_2c

    .line 224
    :cond_70
    const-wide/16 v6, 0x0

    .line 225
    .local v6, "e":J
    if-eqz v16, :cond_af

    .line 226
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 227
    .local v17, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v22

    if-nez v22, :cond_2c

    .line 230
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 234
    :try_start_90
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_95} :catch_96

    goto :goto_78

    .line 235
    :catch_96
    move-exception v8

    .line 236
    .local v8, "ex":Ljava/lang/Throwable;
    invoke-static {v8}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 237
    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    .line 238
    .local v9, "ex1":Ljava/lang/Throwable;
    invoke-virtual {v4, v9}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 242
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v9    # "ex1":Ljava/lang/Throwable;
    .end local v17    # "v":Ljava/lang/Object;, "TT;"
    :cond_a4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    .line 244
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_af
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    move-wide/from16 v18, v0

    .line 246
    .local v18, "r":J
    const-wide v22, 0x7fffffffffffffffL

    cmp-long v22, v18, v22

    if-eqz v22, :cond_fa

    .line 248
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_d3

    .line 249
    add-long v20, v18, v12

    .line 250
    .local v20, "u":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-gez v22, :cond_d1

    .line 251
    const-wide v20, 0x7fffffffffffffffL

    .line 253
    :cond_d1
    move-wide/from16 v18, v20

    .line 256
    .end local v20    # "u":J
    :cond_d3
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-eqz v22, :cond_f4

    const-wide v22, 0x7fffffffffffffffL

    cmp-long v22, v18, v22

    if-eqz v22, :cond_f4

    .line 257
    sub-long v20, v18, v6

    .line 258
    .restart local v20    # "u":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-gez v22, :cond_f2

    .line 259
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "More produced than requested"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 261
    :cond_f2
    move-wide/from16 v18, v20

    .line 263
    .end local v20    # "u":J
    :cond_f4
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 265
    :cond_fa
    if-eqz v11, :cond_11d

    .line 266
    sget-object v22, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    move-object/from16 v0, v22

    if-ne v11, v0, :cond_10c

    .line 267
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    goto/16 :goto_4

    .line 269
    :cond_10c
    move-object/from16 v0, p0

    iput-object v11, v0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 270
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-eqz v22, :cond_4

    .line 271
    move-wide/from16 v0, v18

    invoke-interface {v11, v0, v1}, Lrx/Producer;->request(J)V

    goto/16 :goto_4

    .line 275
    :cond_11d
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 276
    .local v15, "p":Lrx/Producer;
    if-eqz v15, :cond_4

    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_4

    .line 277
    invoke-interface {v15, v12, v13}, Lrx/Producer;->request(J)V

    goto/16 :goto_4
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    monitor-enter p0

    .line 114
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_e

    .line 115
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 116
    monitor-exit p0

    .line 121
    :goto_d
    return-void

    .line 118
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 119
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 120
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_d

    .line 119
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    const/4 v2, 0x1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v1, :cond_12

    .line 97
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    .line 103
    .local v0, "emit":Z
    :goto_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    .line 104
    if-eqz v0, :cond_1a

    .line 105
    iget-object v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 109
    :goto_11
    return-void

    .line 100
    .end local v0    # "emit":Z
    :cond_12
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 101
    const/4 v0, 0x1

    .restart local v0    # "emit":Z
    goto :goto_9

    .line 103
    .end local v0    # "emit":Z
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw v1

    .line 107
    .restart local v0    # "emit":Z
    :cond_1a
    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    goto :goto_11
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v4, :cond_16

    .line 63
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 64
    .local v0, "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_11

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .restart local v0    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 68
    :cond_11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit p0

    .line 90
    .end local v0    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_15
    :goto_15
    return-void

    .line 71
    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3d

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "skipFinal":Z
    :try_start_18
    iget-object v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 77
    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2e

    .line 78
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 81
    :cond_2e
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_40

    .line 82
    const/4 v1, 0x1

    .line 84
    if-nez v1, :cond_15

    .line 85
    monitor-enter p0

    .line 86
    const/4 v4, 0x0

    :try_start_36
    iput-boolean v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 87
    monitor-exit p0

    goto :goto_15

    :catchall_3a
    move-exception v4

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3a

    throw v4

    .line 71
    .end local v1    # "skipFinal":Z
    .end local v2    # "r":J
    :catchall_3d
    move-exception v4

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v4

    .line 84
    .restart local v1    # "skipFinal":Z
    :catchall_40
    move-exception v4

    if-nez v1, :cond_48

    .line 85
    monitor-enter p0

    .line 86
    const/4 v5, 0x0

    :try_start_45
    iput-boolean v5, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 87
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    :cond_48
    throw v4

    :catchall_49
    move-exception v4

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v4
.end method

.method public request(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    const-wide/16 v8, 0x0

    .line 125
    cmp-long v6, p1, v8

    if-gez v6, :cond_e

    .line 126
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "n >= 0 required"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 128
    :cond_e
    cmp-long v6, p1, v8

    if-nez v6, :cond_13

    .line 161
    :cond_12
    :goto_12
    return-void

    .line 131
    :cond_13
    monitor-enter p0

    .line 132
    :try_start_14
    iget-boolean v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v6, :cond_22

    .line 133
    iget-wide v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 134
    monitor-exit p0

    goto :goto_12

    .line 137
    :catchall_1f
    move-exception v6

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v6

    .line 136
    :cond_22
    const/4 v6, 0x1

    :try_start_23
    iput-boolean v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 137
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_1f

    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "skipFinal":Z
    :try_start_27
    iget-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 141
    .local v2, "r":J
    add-long v4, v2, p1

    .line 142
    .local v4, "u":J
    cmp-long v6, v4, v8

    if-gez v6, :cond_34

    .line 143
    const-wide v4, 0x7fffffffffffffffL

    .line 145
    :cond_34
    iput-wide v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 147
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 148
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_3d

    .line 149
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 152
    :cond_3d
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_4c

    .line 153
    const/4 v1, 0x1

    .line 155
    if-nez v1, :cond_12

    .line 156
    monitor-enter p0

    .line 157
    const/4 v6, 0x0

    :try_start_45
    iput-boolean v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 158
    monitor-exit p0

    goto :goto_12

    :catchall_49
    move-exception v6

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_49

    throw v6

    .line 155
    .end local v0    # "p":Lrx/Producer;
    .end local v2    # "r":J
    .end local v4    # "u":J
    :catchall_4c
    move-exception v6

    if-nez v1, :cond_54

    .line 156
    monitor-enter p0

    .line 157
    const/4 v7, 0x0

    :try_start_51
    iput-boolean v7, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 158
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    :cond_54
    throw v6

    :catchall_55
    move-exception v6

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v6
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 8
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    monitor-enter p0

    .line 165
    :try_start_1
    iget-boolean v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v3, :cond_e

    .line 166
    if-eqz p1, :cond_b

    .end local p1    # "p":Lrx/Producer;
    :goto_7
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 167
    monitor-exit p0

    .line 187
    :cond_a
    :goto_a
    return-void

    .line 166
    .restart local p1    # "p":Lrx/Producer;
    :cond_b
    sget-object p1, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    goto :goto_7

    .line 169
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 170
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_31

    .line 171
    const/4 v2, 0x0

    .line 173
    .local v2, "skipFinal":Z
    :try_start_13
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 174
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 175
    .local v0, "r":J
    if-eqz p1, :cond_22

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_22

    .line 176
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 178
    :cond_22
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_34

    .line 179
    const/4 v2, 0x1

    .line 181
    if-nez v2, :cond_a

    .line 182
    monitor-enter p0

    .line 183
    const/4 v3, 0x0

    :try_start_2a
    iput-boolean v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 184
    monitor-exit p0

    goto :goto_a

    :catchall_2e
    move-exception v3

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_2e

    throw v3

    .line 170
    .end local v0    # "r":J
    .end local v2    # "skipFinal":Z
    .end local p1    # "p":Lrx/Producer;
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3

    .line 181
    .restart local v2    # "skipFinal":Z
    .restart local p1    # "p":Lrx/Producer;
    :catchall_34
    move-exception v3

    if-nez v2, :cond_3c

    .line 182
    monitor-enter p0

    .line 183
    const/4 v4, 0x0

    :try_start_39
    iput-boolean v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 184
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    :cond_3c
    throw v3

    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v3
.end method
