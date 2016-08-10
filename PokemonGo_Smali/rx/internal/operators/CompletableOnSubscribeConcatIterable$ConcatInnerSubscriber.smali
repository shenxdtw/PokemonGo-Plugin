.class final Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcatIterable;
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

.field final sources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Completable$CompletableSubscriber;Ljava/util/Iterator;)V
    .registers 4
    .param p1, "actual"    # Lrx/Completable$CompletableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Completable$CompletableSubscriber;",
            "Ljava/util/Iterator",
            "<+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 69
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    .line 70
    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 71
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    .line 72
    return-void
.end method


# virtual methods
.method next()V
    .registers 8

    .prologue
    .line 90
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 133
    :cond_8
    :goto_8
    return-void

    .line 94
    :cond_9
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v4

    if-nez v4, :cond_8

    .line 98
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 100
    .local v0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_11
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 106
    :try_start_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_25

    move-result v1

    .line 112
    .local v1, "b":Z
    if-nez v1, :cond_2c

    .line 113
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v4}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_8

    .line 107
    .end local v1    # "b":Z
    :catch_25
    move-exception v3

    .line 108
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v4, v3}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 120
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "b":Z
    :cond_2c
    :try_start_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Completable;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_32} :catch_41

    .line 126
    .local v2, "c":Lrx/Completable;
    if-nez v2, :cond_48

    .line 127
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "The completable returned is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 121
    .end local v2    # "c":Lrx/Completable;
    :catch_41
    move-exception v3

    .line 122
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v4, v3}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 131
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "c":Lrx/Completable;
    :cond_48
    invoke-virtual {v2, p0}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 132
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_11

    goto :goto_8
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 76
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 77
    return-void
.end method
