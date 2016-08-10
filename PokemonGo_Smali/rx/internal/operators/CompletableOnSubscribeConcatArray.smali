.class public final Lrx/internal/operators/CompletableOnSubscribeConcatArray;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcatArray.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;
    }
.end annotation


# instance fields
.field final sources:[Lrx/Completable;


# direct methods
.method public constructor <init>([Lrx/Completable;)V
    .registers 2
    .param p1, "sources"    # [Lrx/Completable;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray;->sources:[Lrx/Completable;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcatArray;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 34
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;

    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray;->sources:[Lrx/Completable;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;-><init>(Lrx/Completable$CompletableSubscriber;[Lrx/Completable;)V

    .line 35
    .local v0, "inner":Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;
    iget-object v1, v0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-interface {p1, v1}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 36
    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->next()V

    .line 37
    return-void
.end method
