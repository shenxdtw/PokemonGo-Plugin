.class final Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithStartEndObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferingSubscriber"
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

.field final closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 105
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    .line 107
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 108
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->add(Lrx/Subscription;)V

    .line 109
    return-void
.end method


# virtual methods
.method endBuffer(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p1, "toEnd":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 196
    .local v0, "canEnd":Z
    monitor-enter p0

    .line 197
    :try_start_2
    iget-boolean v3, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v3, :cond_8

    .line 198
    monitor-exit p0

    .line 213
    :cond_7
    :goto_7
    return-void

    .line 200
    :cond_8
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 201
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 203
    .local v1, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ne v1, p1, :cond_e

    .line 204
    const/4 v0, 0x1

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 209
    .end local v1    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_29

    .line 210
    if-eqz v0, :cond_7

    .line 211
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_7

    .line 209
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public onCompleted()V
    .registers 6

    .prologue
    .line 137
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_2d

    .line 138
    :try_start_1
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v4, :cond_7

    .line 139
    monitor-exit p0

    .line 154
    :goto_6
    return-void

    .line 141
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    .line 142
    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v3, "toEmit":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 144
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_34

    .line 145
    :try_start_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 146
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_1b

    .line 148
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "toEmit":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catch_2d
    move-exception v2

    .line 149
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-static {v2, v4}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_6

    .line 144
    .end local v2    # "t":Ljava/lang/Throwable;
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

    .line 152
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "toEmit":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_37
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->unsubscribe()V

    goto :goto_6
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    monitor-enter p0

    .line 123
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v0, :cond_7

    .line 124
    monitor-exit p0

    .line 131
    :goto_6
    return-void

    .line 126
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    .line 127
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->unsubscribe()V

    goto :goto_6

    .line 128
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 117
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_17
    move-exception v2

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_17

    .line 118
    return-void
.end method

.method startBuffer(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOpening;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p1, "v":Ljava/lang/Object;, "TTOpening;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 158
    :try_start_6
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v4, :cond_c

    .line 159
    monitor-exit p0

    .line 193
    :goto_b
    return-void

    .line 161
    :cond_c
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_2a

    .line 165
    :try_start_12
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;

    iget-object v4, v4, Lrx/internal/operators/OperatorBufferWithStartEndObservable;->bufferClosing:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1c} :catch_2d

    .line 170
    .local v2, "cobs":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;Ljava/util/List;)V

    .line 190
    .local v1, "closeSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TTClosing;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 192
    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_b

    .line 162
    .end local v1    # "closeSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TTClosing;>;"
    .end local v2    # "cobs":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v4

    .line 166
    :catch_2d
    move-exception v3

    .line 167
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_b
.end method
