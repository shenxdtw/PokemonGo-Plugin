.class final Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;
.super Lrx/Subscriber;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field actual:J

.field final arbiter:Lrx/internal/producers/ProducerArbiter;

.field final inner:Lrx/Scheduler$Worker;

.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final serial:Lrx/subscriptions/SerialSubscription;

.field final serializedSubscriber:Lrx/observers/SerializedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field terminated:Z

.field final timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V
    .registers 7
    .param p3, "serial"    # Lrx/subscriptions/SerialSubscription;
    .param p5, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "serializedSubscriber":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 106
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    .line 107
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 108
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    .line 109
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    .line 110
    iput-object p5, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 111
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 112
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 155
    .local v0, "onCompletedWins":Z
    monitor-enter p0

    .line 156
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v1, :cond_a

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    .line 158
    const/4 v0, 0x1

    .line 160
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_18

    .line 161
    if-eqz v0, :cond_17

    .line 162
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 163
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 165
    :cond_17
    return-void

    .line 160
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "onErrorWins":Z
    monitor-enter p0

    .line 141
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v1, :cond_a

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    .line 143
    const/4 v0, 0x1

    .line 145
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_18

    .line 146
    if-eqz v0, :cond_17

    .line 147
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 148
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 150
    :cond_17
    return-void

    .line 145
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 123
    .local v2, "onNextWins":Z
    monitor-enter p0

    .line 124
    :try_start_2
    iget-boolean v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v3, :cond_2b

    .line 125
    iget-wide v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    iput-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    .line 126
    .local v0, "a":J
    const/4 v2, 0x1

    .line 130
    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_2e

    .line 131
    if-eqz v2, :cond_2a

    .line 132
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 133
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-interface {v3, p0, v5, p1, v6}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Subscription;

    invoke-virtual {v4, v3}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 135
    :cond_2a
    return-void

    .line 128
    .end local v0    # "a":J
    :cond_2b
    :try_start_2b
    iget-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    .restart local v0    # "a":J
    goto :goto_f

    .line 130
    .end local v0    # "a":J
    :catchall_2e
    move-exception v3

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public onTimeout(J)V
    .registers 10
    .param p1, "seqId"    # J

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    move-wide v0, p1

    .line 169
    .local v0, "expected":J
    const/4 v3, 0x0

    .line 170
    .local v3, "timeoutWins":Z
    monitor-enter p0

    .line 171
    :try_start_3
    iget-wide v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v4, :cond_11

    .line 172
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    .line 173
    const/4 v3, 0x1

    .line 175
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    .line 176
    if-eqz v3, :cond_22

    .line 177
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    if-nez v4, :cond_26

    .line 178
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v4, v5}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 205
    :cond_22
    :goto_22
    return-void

    .line 175
    :catchall_23
    move-exception v4

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v4

    .line 180
    :cond_26
    new-instance v2, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;-><init>(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;)V

    .line 201
    .local v2, "second":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    invoke-virtual {v4, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 202
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    goto :goto_22
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 117
    return-void
.end method
