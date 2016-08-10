.class public final Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;
.super Ljava/lang/Object;
.source "SingleOnSubscribeDelaySubscriptionOther.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final main:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/Observable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Observable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    .local p1, "main":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "other":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->main:Lrx/Single;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    .local p1, "subscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;-><init>(Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;Lrx/SingleSubscriber;)V

    .line 55
    .local v0, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 56
    .local v2, "serial":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v2}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 58
    new-instance v1, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;

    invoke-direct {v1, p0, v0, v2}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;-><init>(Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;Lrx/SingleSubscriber;Lrx/subscriptions/SerialSubscription;)V

    .line 87
    .local v1, "otherSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<Ljava/lang/Object;>;"
    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 89
    iget-object v3, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 90
    return-void
.end method
