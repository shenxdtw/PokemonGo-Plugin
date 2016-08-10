.class final Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;
.super Lrx/Subscriber;
.source "BlockingOperatorLatest.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestObserverIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field iNotif:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final notify:Ljava/util/concurrent/Semaphore;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnError()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 88
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 90
    :cond_17
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-nez v2, :cond_60

    .line 91
    :cond_23
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-nez v2, :cond_60

    .line 93
    :try_start_27
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_4a

    .line 102
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 103
    .local v1, "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 104
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnError()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 105
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 94
    .end local v1    # "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_4a
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->unsubscribe()V

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 97
    invoke-static {v0}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 98
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 109
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_60
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-nez v2, :cond_6a

    const/4 v2, 0x1

    :goto_69
    return v2

    :cond_6a
    const/4 v2, 0x0

    goto :goto_69
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 115
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->isOnNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 116
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 118
    return-object v0

    .line 121
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_18
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    .line 67
    .local v0, "wasntAvailable":Z
    :goto_9
    if-eqz v0, :cond_10

    .line 68
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 70
    :cond_10
    return-void

    .line 66
    .end local v0    # "wasntAvailable":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
