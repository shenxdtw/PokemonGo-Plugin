.class final Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcatArray.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcatArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerSubscriber"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final actual:Lrx/Completable$CompletableSubscriber;

.field index:I

.field final sd:Lrx/subscriptions/SerialSubscription;

.field final sources:[Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable$CompletableSubscriber;[Lrx/Completable;)V
    .registers 4
    .param p1, "actual"    # Lrx/Completable$CompletableSubscriber;
    .param p2, "sources"    # [Lrx/Completable;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    .line 52
    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sources:[Lrx/Completable;

    .line 53
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    .line 54
    return-void
.end method


# virtual methods
.method next()V
    .registers 4

    .prologue
    .line 72
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 94
    :cond_8
    :goto_8
    return-void

    .line 76
    :cond_9
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_8

    .line 80
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sources:[Lrx/Completable;

    .line 82
    .local v0, "a":[Lrx/Completable;
    :cond_11
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 86
    iget v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->index:I

    .line 87
    .local v1, "idx":I
    array-length v2, v0

    if-ne v1, v2, :cond_28

    .line 88
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_8

    .line 92
    :cond_28
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_8
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->next()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 59
    return-void
.end method
