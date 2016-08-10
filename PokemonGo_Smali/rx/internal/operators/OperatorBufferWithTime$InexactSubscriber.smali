.class final Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InexactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final inner:Lrx/Scheduler$Worker;

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithTime;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 5
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 102
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    .line 103
    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    .line 105
    return-void
.end method


# virtual methods
.method emitChunk(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p1, "chunkToEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 194
    .local v1, "emit":Z
    monitor-enter p0

    .line 195
    :try_start_2
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_8

    .line 196
    monitor-exit p0

    .line 215
    :cond_7
    :goto_7
    return-void

    .line 198
    :cond_8
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 199
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ne v0, p1, :cond_e

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 203
    const/4 v1, 0x1

    .line 207
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2e

    .line 208
    if-eqz v1, :cond_7

    .line 210
    :try_start_23
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_7

    .line 211
    :catch_29
    move-exception v3

    .line 212
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_7

    .line 207
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v4
.end method

.method public onCompleted()V
    .registers 6

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_2d

    .line 152
    :try_start_1
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_7

    .line 153
    monitor-exit p0

    .line 168
    :goto_6
    return-void

    .line 155
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    .line 156
    new-instance v2, Ljava/util/LinkedList;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v2, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 158
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_34

    .line 159
    :try_start_17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 160
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_1b

    .line 162
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catch_2d
    move-exception v3

    .line 163
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-static {v3, v4}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_6

    .line 158
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_34
    move-exception v4

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v4
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_2d

    .line 166
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_37
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    .line 167
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->unsubscribe()V

    goto :goto_6
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v0, :cond_7

    .line 138
    monitor-exit p0

    .line 145
    :goto_6
    return-void

    .line 140
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    .line 141
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    .line 143
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->unsubscribe()V

    goto :goto_6

    .line 142
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 110
    .local v3, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    monitor-enter p0

    .line 111
    :try_start_2
    iget-boolean v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v5, :cond_8

    .line 112
    monitor-exit p0

    .line 132
    :goto_7
    return-void

    .line 114
    :cond_8
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_50

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    move-object v4, v3

    .line 115
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .local v4, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_f
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    if-ne v5, v6, :cond_5a

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 120
    if-nez v4, :cond_58

    .line 121
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_55

    .line 123
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_32
    :try_start_32
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_50

    :goto_35
    move-object v4, v3

    .line 125
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_f

    .line 126
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_55

    .line 127
    if-eqz v4, :cond_53

    .line 128
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_3e

    .line 126
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_50
    move-exception v5

    :goto_51
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v5

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_53
    move-object v3, v4

    .line 132
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_7

    .line 126
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_55
    move-exception v5

    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_51

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_58
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_32

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_5a
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_35
.end method

.method scheduleChunk()V
    .registers 8

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 176
    return-void
.end method

.method startNewChunk()V
    .registers 7

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 180
    :try_start_6
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v1, :cond_c

    .line 181
    monitor-exit p0

    .line 191
    :goto_b
    return-void

    .line 183
    :cond_c
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_25

    .line 185
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v2, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;-><init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;Ljava/util/List;)V

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v3, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v3, v3, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    goto :goto_b

    .line 184
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method
