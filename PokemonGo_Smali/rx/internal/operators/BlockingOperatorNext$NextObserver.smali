.class Lrx/internal/operators/BlockingOperatorNext$NextObserver;
.super Lrx/Subscriber;
.source "BlockingOperatorNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final waiting:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    invoke-virtual {p1}, Lrx/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 169
    :cond_10
    move-object v1, p1

    .line 170
    .local v1, "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_11
    :goto_11
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 171
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 174
    .local v0, "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lrx/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 175
    move-object v1, v0

    goto :goto_11

    .line 180
    .end local v0    # "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    .end local v1    # "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_2b
    return-void
.end method

.method setWaiting(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 188
    return-void
.end method

.method public takeNext()Lrx/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->setWaiting(I)V

    .line 184
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    return-object v0
.end method
