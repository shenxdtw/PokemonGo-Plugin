.class final Lrx/internal/operators/CachedObservable$CacheState;
.super Lrx/internal/util/LinkedArrayList;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/LinkedArrayList;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final connection:Lrx/subscriptions/SerialSubscription;

.field volatile isConnected:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field sourceDone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    sput-object v0, Lrx/internal/operators/CachedObservable$CacheState;->EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;I)V
    .registers 4
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0, p2}, Lrx/internal/util/LinkedArrayList;-><init>(I)V

    .line 114
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$CacheState;->source:Lrx/Observable;

    .line 115
    sget-object v0, Lrx/internal/operators/CachedObservable$CacheState;->EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    iput-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 116
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    .line 117
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    .line 118
    return-void
.end method


# virtual methods
.method public addProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "p":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    monitor-enter v4

    .line 127
    :try_start_3
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 128
    .local v0, "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    array-length v2, v0

    .line 129
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 130
    .local v1, "b":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    aput-object p1, v1, v2

    .line 132
    iput-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 133
    monitor-exit v4

    .line 134
    return-void

    .line 133
    .end local v0    # "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .end local v1    # "b":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .end local v2    # "n":I
    :catchall_15
    move-exception v3

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3
.end method

.method public connect()V
    .registers 3

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    new-instance v0, Lrx/internal/operators/CachedObservable$CacheState$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/CachedObservable$CacheState$1;-><init>(Lrx/internal/operators/CachedObservable$CacheState;)V

    .line 182
    .local v0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 183
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->isConnected:Z

    .line 185
    return-void
.end method

.method dispatch()V
    .registers 6

    .prologue
    .line 218
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 219
    .local v0, "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    move-object v1, v0

    .local v1, "arr$":[Lrx/internal/operators/CachedObservable$ReplayProducer;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_f

    aget-object v4, v1, v2

    .line 220
    .local v4, "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    invoke-virtual {v4}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 222
    .end local v4    # "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    :cond_f
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    if-nez v1, :cond_18

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    .line 208
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$CacheState;->add(Ljava/lang/Object;)V

    .line 210
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 211
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CacheState;->dispatch()V

    .line 213
    .end local v0    # "o":Ljava/lang/Object;
    :cond_18
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    if-nez v1, :cond_18

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    .line 198
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$CacheState;->add(Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 201
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CacheState;->dispatch()V

    .line 203
    .end local v0    # "o":Ljava/lang/Object;
    :cond_18
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    if-nez v1, :cond_10

    .line 189
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$CacheState;->add(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CacheState;->dispatch()V

    .line 193
    .end local v0    # "o":Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method public removeProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "p":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    monitor-enter v6

    .line 141
    :try_start_3
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 142
    .local v0, "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    array-length v4, v0

    .line 143
    .local v4, "n":I
    const/4 v3, -0x1

    .line 144
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v4, :cond_13

    .line 145
    aget-object v5, v0, v2

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 146
    move v3, v2

    .line 150
    :cond_13
    if-gez v3, :cond_1a

    .line 151
    monitor-exit v6

    .line 162
    :goto_16
    return-void

    .line 144
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 153
    :cond_1a
    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    .line 154
    sget-object v5, Lrx/internal/operators/CachedObservable$CacheState;->EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    iput-object v5, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 155
    monitor-exit v6

    goto :goto_16

    .line 161
    .end local v0    # "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "n":I
    :catchall_23
    move-exception v5

    monitor-exit v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v5

    .line 157
    .restart local v0    # "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "n":I
    :cond_26
    add-int/lit8 v5, v4, -0x1

    :try_start_28
    new-array v1, v5, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 158
    .local v1, "b":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    add-int/lit8 v5, v3, 0x1

    sub-int v7, v4, v3

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 161
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_23

    goto :goto_16
.end method
