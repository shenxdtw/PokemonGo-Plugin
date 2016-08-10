.class public final Lrx/internal/operators/CompletableOnSubscribeConcatIterable;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;->sources:Ljava/lang/Iterable;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 7
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 39
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_1a

    move-result-object v2

    .line 46
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v2, :cond_26

    .line 47
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    invoke-interface {p1, v3}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 48
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The iterator returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 55
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :goto_19
    return-void

    .line 40
    :catch_1a
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    invoke-interface {p1, v3}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 42
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_26
    new-instance v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;-><init>(Lrx/Completable$CompletableSubscriber;Ljava/util/Iterator;)V

    .line 53
    .local v1, "inner":Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
    iget-object v3, v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-interface {p1, v3}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 54
    invoke-virtual {v1}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    goto :goto_19
.end method
