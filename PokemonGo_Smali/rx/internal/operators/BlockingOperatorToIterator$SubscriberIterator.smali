.class public final Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;
.super Lrx/Subscriber;
.source "BlockingOperatorToIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorToIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriberIterator"
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


# static fields
.field static final LIMIT:I


# instance fields
.field private buf:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final notifications:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private received:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    .line 68
    return-void
.end method

.method private take()Lrx/Notification;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 119
    .local v1, "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    if-eqz v1, :cond_b

    .line 122
    .end local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :goto_a
    return-object v1

    .restart local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_b
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Notification;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_15

    move-object v1, v2

    goto :goto_a

    .line 123
    .end local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_15
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->unsubscribe()V

    .line 125
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    if-nez v1, :cond_1f

    .line 93
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->take()Lrx/Notification;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    .line 94
    iget v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    .line 95
    iget v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    sget v2, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->LIMIT:I

    if-lt v1, v2, :cond_1f

    .line 96
    iget v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->request(J)V

    .line 97
    iput v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    .line 100
    :cond_1f
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->isOnError()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 101
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 103
    :cond_32
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 109
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    .line 111
    return-object v0

    .line 113
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->request(J)V

    .line 73
    return-void
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
