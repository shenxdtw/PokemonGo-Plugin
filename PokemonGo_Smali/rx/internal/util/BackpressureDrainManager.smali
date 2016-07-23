.class public final Lrx/internal/util/BackpressureDrainManager;
.super Ljava/lang/Object;
.source "BackpressureDrainManager.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field protected static final REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/util/BackpressureDrainManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

.field protected emitting:Z

.field protected exception:Ljava/lang/Throwable;

.field protected volatile requestedCount:J

.field protected volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    const-class v0, Lrx/internal/util/BackpressureDrainManager;

    const-string v1, "requestedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V
    .registers 2
    .param p1, "actual"    # Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 84
    return-void
.end method


# virtual methods
.method public final drain()V
    .registers 15

    .prologue
    .line 170
    monitor-enter p0

    .line 171
    :try_start_1
    iget-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    if-eqz v9, :cond_7

    .line 172
    monitor-exit p0

    .line 235
    :cond_6
    :goto_6
    return-void

    .line 174
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 175
    iget-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 176
    .local v8, "term":Z
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_34

    .line 177
    iget-wide v4, p0, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    .line 178
    .local v4, "n":J
    const/4 v7, 0x0

    .line 180
    .local v7, "skipFinal":Z
    :try_start_10
    iget-object v0, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 182
    .local v0, "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    :goto_12
    const/4 v2, 0x0

    .line 183
    .local v2, "emitted":I
    :goto_13
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gtz v9, :cond_1b

    if-eqz v8, :cond_3d

    .line 185
    :cond_1b
    if-eqz v8, :cond_66

    .line 186
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v6

    .line 187
    .local v6, "o":Ljava/lang/Object;
    if-nez v6, :cond_37

    .line 188
    const/4 v7, 0x1

    .line 189
    iget-object v1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 190
    .local v1, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v1}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->complete(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_90

    .line 232
    if-nez v7, :cond_6

    .line 233
    monitor-enter p0

    .line 234
    const/4 v9, 0x0

    :try_start_2d
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_6

    :catchall_31
    move-exception v9

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw v9

    .line 176
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "emitted":I
    .end local v4    # "n":J
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "skipFinal":Z
    .end local v8    # "term":Z
    :catchall_34
    move-exception v9

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v9

    .line 193
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .restart local v2    # "emitted":I
    .restart local v4    # "n":J
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "skipFinal":Z
    .restart local v8    # "term":Z
    :cond_37
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_66

    .line 209
    .end local v6    # "o":Ljava/lang/Object;
    :cond_3d
    :try_start_3d
    monitor-enter p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_90

    .line 210
    :try_start_3e
    iget-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 211
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_84

    const/4 v3, 0x1

    .line 213
    .local v3, "more":Z
    :goto_47
    iget-wide v10, p0, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-nez v9, :cond_99

    .line 215
    if-nez v3, :cond_86

    if-nez v8, :cond_86

    .line 216
    const/4 v7, 0x1

    .line 217
    const/4 v9, 0x0

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 218
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_3e .. :try_end_5b} :catchall_8d

    .line 232
    if-nez v7, :cond_6

    .line 233
    monitor-enter p0

    .line 234
    const/4 v9, 0x0

    :try_start_5f
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_6

    :catchall_63
    move-exception v9

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_63

    throw v9

    .line 197
    .end local v3    # "more":Z
    :cond_66
    :try_start_66
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 198
    .restart local v6    # "o":Ljava/lang/Object;
    if-eqz v6, :cond_3d

    .line 201
    invoke-interface {v0, v6}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->accept(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_90

    move-result v9

    if-eqz v9, :cond_7e

    .line 202
    const/4 v7, 0x1

    .line 232
    if-nez v7, :cond_6

    .line 233
    monitor-enter p0

    .line 234
    const/4 v9, 0x0

    :try_start_77
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_6

    :catchall_7b
    move-exception v9

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7b

    throw v9

    .line 205
    :cond_7e
    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 208
    goto :goto_13

    .line 211
    .end local v6    # "o":Ljava/lang/Object;
    :cond_84
    const/4 v3, 0x0

    goto :goto_47

    .line 220
    .restart local v3    # "more":Z
    :cond_86
    const-wide v4, 0x7fffffffffffffffL

    .line 229
    :cond_8b
    :try_start_8b
    monitor-exit p0

    goto :goto_12

    .end local v3    # "more":Z
    :catchall_8d
    move-exception v9

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v9
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 232
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v2    # "emitted":I
    :catchall_90
    move-exception v9

    if-nez v7, :cond_98

    .line 233
    monitor-enter p0

    .line 234
    const/4 v10, 0x0

    :try_start_95
    iput-boolean v10, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_be

    :cond_98
    throw v9

    .line 222
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .restart local v2    # "emitted":I
    .restart local v3    # "more":Z
    :cond_99
    :try_start_99
    sget-object v9, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-int v10, v2

    int-to-long v10, v10

    invoke-virtual {v9, p0, v10, v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 223
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_a9

    if-nez v3, :cond_8b

    :cond_a9
    if-eqz v8, :cond_ad

    if-eqz v3, :cond_8b

    .line 224
    :cond_ad
    const/4 v7, 0x1

    .line 225
    const/4 v9, 0x0

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 226
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_99 .. :try_end_b2} :catchall_8d

    .line 232
    if-nez v7, :cond_6

    .line 233
    monitor-enter p0

    .line 234
    const/4 v9, 0x0

    :try_start_b6
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto/16 :goto_6

    :catchall_bb
    move-exception v9

    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_bb

    throw v9

    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v2    # "emitted":I
    .end local v3    # "more":Z
    :catchall_be
    move-exception v9

    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v9
.end method

.method public final isTerminated()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    return v0
.end method

.method public final request(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide v8, 0x7fffffffffffffffL

    .line 134
    cmp-long v0, p1, v10

    if-nez v0, :cond_c

    .line 162
    :cond_b
    :goto_b
    return-void

    .line 141
    :cond_c
    iget-wide v2, p0, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    .line 142
    .local v2, "r":J
    cmp-long v0, v2, v10

    if-nez v0, :cond_1d

    const/4 v6, 0x1

    .line 143
    .local v6, "mayDrain":Z
    :goto_13
    cmp-long v0, v2, v8

    if-nez v0, :cond_1f

    .line 159
    :goto_17
    if-eqz v6, :cond_b

    .line 160
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_b

    .line 142
    .end local v6    # "mayDrain":Z
    :cond_1d
    const/4 v6, 0x0

    goto :goto_13

    .line 146
    .restart local v6    # "mayDrain":Z
    :cond_1f
    cmp-long v0, p1, v8

    if-nez v0, :cond_2f

    .line 147
    move-wide v4, p1

    .line 148
    .local v4, "u":J
    const/4 v6, 0x1

    .line 156
    :goto_25
    sget-object v0, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_17

    .line 150
    .end local v4    # "u":J
    :cond_2f
    sub-long v0, v8, p1

    cmp-long v0, v2, v0

    if-lez v0, :cond_3b

    .line 151
    const-wide v4, 0x7fffffffffffffffL

    .restart local v4    # "u":J
    goto :goto_25

    .line 153
    .end local v4    # "u":J
    :cond_3b
    add-long v4, v2, p1

    .restart local v4    # "u":J
    goto :goto_25
.end method

.method public final terminate()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 98
    return-void
.end method

.method public final terminate(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_9

    .line 108
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 111
    :cond_9
    return-void
.end method

.method public final terminateAndDrain()V
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 117
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 118
    return-void
.end method

.method public final terminateAndDrain(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_c

    .line 127
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 129
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 131
    :cond_c
    return-void
.end method
