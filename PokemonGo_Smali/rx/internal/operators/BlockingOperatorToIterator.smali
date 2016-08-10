.class public final Lrx/internal/operators/BlockingOperatorToIterator;
.super Ljava/lang/Object;
.source "BlockingOperatorToIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIterator(Lrx/Observable;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;

    invoke-direct {v0}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;-><init>()V

    .line 53
    .local v0, "subscriber":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    invoke-virtual {p0}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 54
    return-object v0
.end method
