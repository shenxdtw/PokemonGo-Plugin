.class Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentSubscriber"
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
.field private busy:Z

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private missed:Z

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile terminalNotification:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Notification<TT;>;>;"
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 75
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    .line 77
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    iput-object p1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    .line 83
    return-void
.end method

.method private decrementRequested()V
    .registers 7

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    .local v0, "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 120
    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    .line 124
    :goto_f
    return-void

    .line 123
    :cond_10
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_f
.end method

.method private drain()V
    .registers 7

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    if-eqz v2, :cond_a

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    .line 134
    monitor-exit p0

    .line 165
    :cond_9
    :goto_9
    return-void

    .line 136
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_39

    .line 138
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 139
    .local v0, "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_d
    iget-object v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 141
    iget-object v1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 142
    .local v1, "tn":Lrx/Notification;, "Lrx/Notification<TT;>;"
    if-eqz v1, :cond_3c

    .line 143
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3c

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 147
    iget-object v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 149
    iget-object v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_9

    .line 136
    .end local v0    # "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v1    # "tn":Lrx/Notification;, "Lrx/Notification<TT;>;"
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2

    .line 158
    .restart local v0    # "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v1    # "tn":Lrx/Notification;, "Lrx/Notification<TT;>;"
    :cond_3c
    monitor-enter p0

    .line 159
    :try_start_3d
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    if-nez v2, :cond_49

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    .line 161
    monitor-exit p0

    goto :goto_9

    .line 163
    :catchall_46
    move-exception v2

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_46

    throw v2

    :cond_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_46

    goto :goto_d
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 99
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    .line 100
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 105
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 106
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    .line 107
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
    .line 111
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->decrementRequested()V

    .line 113
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->request(J)V

    .line 88
    return-void
.end method

.method requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 92
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->request(J)V

    .line 93
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    .line 94
    return-void
.end method
