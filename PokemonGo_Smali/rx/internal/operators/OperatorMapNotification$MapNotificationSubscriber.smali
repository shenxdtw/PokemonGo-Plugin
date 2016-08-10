.class final Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;
.super Lrx/Subscriber;
.source "OperatorMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapNotificationSubscriber"
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


# static fields
.field static final COMPLETED_FLAG:J = -0x8000000000000000L

.field static final REQUESTED_MASK:J = 0x7fffffffffffffffL


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field final onCompleted:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final onError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final onNext:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field produced:J

.field final producer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Producer;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/functions/Func0",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p3, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TR;>;"
    .local p4, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 81
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    .line 82
    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->onNext:Lrx/functions/Func1;

    .line 83
    iput-object p3, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->onError:Lrx/functions/Func1;

    .line 84
    iput-object p4, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->onCompleted:Lrx/functions/Func0;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    return-void
.end method


# virtual methods
.method accountProduced()V
    .registers 5

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->produced:J

    .line 124
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 125
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2, v0, v1}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 127
    :cond_15
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->accountProduced()V

    .line 115
    :try_start_3
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->onCompleted:Lrx/functions/Func0;

    invoke-interface {v1}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->value:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_f

    .line 119
    :goto_b
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->tryEmit()V

    .line 120
    return-void

    .line 116
    :catch_f
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_b
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->accountProduced()V

    .line 104
    :try_start_3
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->onError:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->value:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_f

    .line 108
    :goto_b
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->tryEmit()V

    .line 109
    return-void

    .line 105
    :catch_f
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-wide v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->produced:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->produced:J

    .line 94
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->onNext:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 98
    :goto_12
    return-void

    .line 95
    :catch_13
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method requestInner(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_1f

    .line 163
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "n >= 0 required but it was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 165
    :cond_1f
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_26

    .line 207
    :cond_25
    :goto_25
    return-void

    .line 169
    :cond_26
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 171
    .local v2, "r":J
    const-wide/high16 v8, -0x8000000000000000L

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6f

    .line 172
    const-wide v8, 0x7fffffffffffffffL

    and-long v6, v2, v8

    .line 173
    .local v6, "v":J
    invoke-static {v6, v7, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v8

    const-wide/high16 v10, -0x8000000000000000L

    or-long v4, v8, v10

    .line 174
    .local v4, "u":J
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 175
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_25

    .line 176
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v8}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_61

    .line 177
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    iget-object v9, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 179
    :cond_61
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v8}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_25

    .line 180
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v8}, Lrx/Subscriber;->onCompleted()V

    goto :goto_25

    .line 186
    .end local v4    # "u":J
    .end local v6    # "v":J
    :cond_6f
    invoke-static {v2, v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v4

    .line 187
    .restart local v4    # "u":J
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 193
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 194
    .local v1, "localProducer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Producer;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Producer;

    .line 195
    .local v0, "actualProducer":Lrx/Producer;
    if-eqz v0, :cond_89

    .line 196
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    goto :goto_25

    .line 198
    :cond_89
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 199
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actualProducer":Lrx/Producer;
    check-cast v0, Lrx/Producer;

    .line 200
    .restart local v0    # "actualProducer":Lrx/Producer;
    if-eqz v0, :cond_25

    .line 201
    iget-object v8, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 202
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_25

    .line 203
    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    goto/16 :goto_25
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 8
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    const-wide/16 v4, 0x0

    .line 131
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 132
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 133
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_18

    .line 134
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 139
    :cond_18
    return-void

    .line 137
    .end local v0    # "r":J
    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Producer already set!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method tryEmit()V
    .registers 11

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    .line 143
    :cond_4
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 144
    .local v0, "r":J
    and-long v2, v0, v6

    cmp-long v2, v2, v8

    if-eqz v2, :cond_11

    .line 159
    :cond_10
    :goto_10
    return-void

    .line 147
    :cond_11
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    or-long v4, v0, v6

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    cmp-long v2, v0, v8

    if-nez v2, :cond_27

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    .line 149
    :cond_27
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_36

    .line 150
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 152
    :cond_36
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_10

    .line 153
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_10
.end method
