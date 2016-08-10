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
    .line 49
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
    .line 56
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    .line 58
    return-void
.end method


# virtual methods
.method emitLoop()V
    .registers 29

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    .line 192
    .local v4, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const-wide/16 v20, 0x0

    .line 193
    .local v20, "toRequest":J
    const/16 v17, 0x0

    .line 201
    .local v17, "requestFrom":Lrx/Producer;
    :cond_8
    :goto_8
    const/16 v16, 0x0

    .line 202
    .local v16, "quit":Z
    monitor-enter p0

    .line 203
    :try_start_b
    move-object/from16 v0, p0

    iget-wide v12, v0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 204
    .local v12, "localRequested":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 205
    .local v10, "localProducer":Lrx/Producer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 206
    .local v11, "localTerminal":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 207
    .local v15, "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-nez v25, :cond_44

    if-nez v10, :cond_44

    if-nez v15, :cond_44

    if-nez v11, :cond_44

    .line 209
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 210
    const/16 v16, 0x1

    .line 217
    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_65

    .line 218
    if-eqz v16, :cond_68

    .line 219
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-eqz v25, :cond_43

    if-eqz v17, :cond_43

    .line 220
    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    .line 249
    .end local v11    # "localTerminal":Ljava/lang/Object;
    :cond_43
    :goto_43
    return-void

    .line 212
    .restart local v11    # "localTerminal":Ljava/lang/Object;
    :cond_44
    const-wide/16 v26, 0x0

    :try_start_46
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 213
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 214
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 215
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    goto :goto_31

    .line 217
    .end local v10    # "localProducer":Lrx/Producer;
    .end local v11    # "localTerminal":Ljava/lang/Object;
    .end local v12    # "localRequested":J
    .end local v15    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_65
    move-exception v25

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_46 .. :try_end_67} :catchall_65

    throw v25

    .line 225
    .restart local v10    # "localProducer":Lrx/Producer;
    .restart local v11    # "localTerminal":Ljava/lang/Object;
    .restart local v12    # "localRequested":J
    .restart local v15    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_68
    if-eqz v15, :cond_70

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_7f

    :cond_70
    const/4 v5, 0x1

    .line 226
    .local v5, "empty":Z
    :goto_71
    if-eqz v11, :cond_87

    .line 227
    sget-object v25, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v25

    if-eq v11, v0, :cond_81

    .line 228
    check-cast v11, Ljava/lang/Throwable;

    .end local v11    # "localTerminal":Ljava/lang/Object;
    invoke-virtual {v4, v11}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 225
    .end local v5    # "empty":Z
    .restart local v11    # "localTerminal":Ljava/lang/Object;
    :cond_7f
    const/4 v5, 0x0

    goto :goto_71

    .line 231
    .restart local v5    # "empty":Z
    :cond_81
    if-eqz v5, :cond_87

    .line 232
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_43

    .line 236
    :cond_87
    const-wide/16 v6, 0x0

    .line 237
    .local v6, "e":J
    if-eqz v15, :cond_bf

    .line 238
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_8f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 239
    .local v24, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v25

    if-nez v25, :cond_43

    .line 242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 246
    :try_start_a7
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_ac} :catch_ad

    goto :goto_8f

    .line 247
    :catch_ad
    move-exception v8

    .line 248
    .local v8, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v24

    invoke-static {v8, v4, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_43

    .line 252
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v24    # "v":Ljava/lang/Object;, "TT;"
    :cond_b4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v6, v6, v26

    .line 254
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_bf
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    move-wide/from16 v18, v0

    .line 256
    .local v18, "r":J
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v25, v18, v26

    if-eqz v25, :cond_10a

    .line 258
    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-eqz v25, :cond_e3

    .line 259
    add-long v22, v18, v12

    .line 260
    .local v22, "u":J
    const-wide/16 v26, 0x0

    cmp-long v25, v22, v26

    if-gez v25, :cond_e1

    .line 261
    const-wide v22, 0x7fffffffffffffffL

    .line 263
    :cond_e1
    move-wide/from16 v18, v22

    .line 266
    .end local v22    # "u":J
    :cond_e3
    const-wide/16 v26, 0x0

    cmp-long v25, v6, v26

    if-eqz v25, :cond_104

    const-wide v26, 0x7fffffffffffffffL

    cmp-long v25, v18, v26

    if-eqz v25, :cond_104

    .line 267
    sub-long v22, v18, v6

    .line 268
    .restart local v22    # "u":J
    const-wide/16 v26, 0x0

    cmp-long v25, v22, v26

    if-gez v25, :cond_102

    .line 269
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "More produced than requested"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 271
    :cond_102
    move-wide/from16 v18, v22

    .line 273
    .end local v22    # "u":J
    :cond_104
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 275
    :cond_10a
    if-eqz v10, :cond_132

    .line 276
    sget-object v25, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    move-object/from16 v0, v25

    if-ne v10, v0, :cond_11c

    .line 277
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    goto/16 :goto_8

    .line 279
    :cond_11c
    move-object/from16 v0, p0

    iput-object v10, v0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 280
    const-wide/16 v26, 0x0

    cmp-long v25, v18, v26

    if-eqz v25, :cond_8

    .line 281
    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v20

    .line 282
    move-object/from16 v17, v10

    goto/16 :goto_8

    .line 286
    :cond_132
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 287
    .local v14, "p":Lrx/Producer;
    if-eqz v14, :cond_8

    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-eqz v25, :cond_8

    .line 288
    move-wide/from16 v0, v20

    invoke-static {v0, v1, v12, v13}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v20

    .line 289
    move-object/from16 v17, v14

    goto/16 :goto_8
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    monitor-enter p0

    .line 115
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_e

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 117
    monitor-exit p0

    .line 122
    :goto_d
    return-void

    .line 119
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 120
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 121
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_d

    .line 120
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

    .line 96
    monitor-enter p0

    .line 97
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v1, :cond_12

    .line 98
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    .line 104
    .local v0, "emit":Z
    :goto_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    .line 105
    if-eqz v0, :cond_1a

    .line 106
    iget-object v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 110
    :goto_11
    return-void

    .line 101
    .end local v0    # "emit":Z
    :cond_12
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 102
    const/4 v0, 0x1

    .restart local v0    # "emit":Z
    goto :goto_9

    .line 104
    .end local v0    # "emit":Z
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw v1

    .line 108
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
    .line 62
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 63
    :try_start_1
    iget-boolean v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v4, :cond_16

    .line 64
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 65
    .local v0, "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_11

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .restart local v0    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 69
    :cond_11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit p0

    .line 91
    .end local v0    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_15
    :goto_15
    return-void

    .line 72
    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3d

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "skipFinal":Z
    :try_start_18
    iget-object v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    iget-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 78
    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2e

    .line 79
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 82
    :cond_2e
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_40

    .line 83
    const/4 v1, 0x1

    .line 85
    if-nez v1, :cond_15

    .line 86
    monitor-enter p0

    .line 87
    const/4 v4, 0x0

    :try_start_36
    iput-boolean v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 88
    monitor-exit p0

    goto :goto_15

    :catchall_3a
    move-exception v4

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3a

    throw v4

    .line 72
    .end local v1    # "skipFinal":Z
    .end local v2    # "r":J
    :catchall_3d
    move-exception v4

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v4

    .line 85
    .restart local v1    # "skipFinal":Z
    :catchall_40
    move-exception v4

    if-nez v1, :cond_48

    .line 86
    monitor-enter p0

    .line 87
    const/4 v5, 0x0

    :try_start_45
    iput-boolean v5, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 88
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

    .line 126
    cmp-long v6, p1, v8

    if-gez v6, :cond_e

    .line 127
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "n >= 0 required"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 129
    :cond_e
    cmp-long v6, p1, v8

    if-nez v6, :cond_13

    .line 161
    :cond_12
    :goto_12
    return-void

    .line 132
    :cond_13
    monitor-enter p0

    .line 133
    :try_start_14
    iget-boolean v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v6, :cond_22

    .line 134
    iget-wide v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 135
    monitor-exit p0

    goto :goto_12

    .line 138
    :catchall_1f
    move-exception v6

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v6

    .line 137
    :cond_22
    const/4 v6, 0x1

    :try_start_23
    iput-boolean v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 138
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_1f

    .line 139
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 140
    .local v0, "p":Lrx/Producer;
    const/4 v1, 0x0

    .line 142
    .local v1, "skipFinal":Z
    :try_start_29
    iget-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 143
    .local v2, "r":J
    add-long v4, v2, p1

    .line 144
    .local v4, "u":J
    cmp-long v6, v4, v8

    if-gez v6, :cond_36

    .line 145
    const-wide v4, 0x7fffffffffffffffL

    .line 147
    :cond_36
    iput-wide v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 149
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_4c

    .line 150
    const/4 v1, 0x1

    .line 152
    if-nez v1, :cond_43

    .line 153
    monitor-enter p0

    .line 154
    const/4 v6, 0x0

    :try_start_40
    iput-boolean v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 155
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_49

    .line 158
    :cond_43
    if-eqz v0, :cond_12

    .line 159
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    goto :goto_12

    .line 155
    :catchall_49
    move-exception v6

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v6

    .line 152
    .end local v2    # "r":J
    .end local v4    # "u":J
    :catchall_4c
    move-exception v6

    if-nez v1, :cond_54

    .line 153
    monitor-enter p0

    .line 154
    const/4 v7, 0x0

    :try_start_51
    iput-boolean v7, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 155
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
    .catchall {:try_start_1 .. :try_end_12} :catchall_2e

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "skipFinal":Z
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 173
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 175
    .local v0, "r":J
    :try_start_17
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_34

    .line 176
    const/4 v2, 0x1

    .line 178
    if-nez v2, :cond_22

    .line 179
    monitor-enter p0

    .line 180
    const/4 v3, 0x0

    :try_start_1f
    iput-boolean v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 181
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_31

    .line 184
    :cond_22
    if-eqz p1, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_a

    .line 185
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_a

    .line 170
    .end local v0    # "r":J
    .end local v2    # "skipFinal":Z
    .end local p1    # "p":Lrx/Producer;
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v3

    .line 181
    .restart local v0    # "r":J
    .restart local v2    # "skipFinal":Z
    .restart local p1    # "p":Lrx/Producer;
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3

    .line 178
    :catchall_34
    move-exception v3

    if-nez v2, :cond_3c

    .line 179
    monitor-enter p0

    .line 180
    const/4 v4, 0x0

    :try_start_39
    iput-boolean v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 181
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
