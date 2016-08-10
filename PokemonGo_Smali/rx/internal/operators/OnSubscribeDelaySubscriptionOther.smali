.class public final Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscriptionOther.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final main:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    .local p1, "main":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "other":Lrx/Observable;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->main:Lrx/Observable;

    .line 37
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 44
    .local v2, "serial":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 46
    invoke-static {p1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    .line 49
    .local v0, "child":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;

    invoke-direct {v1, p0, v0, v2}, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;-><init>(Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V

    .line 78
    .local v1, "otherSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 80
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 81
    return-void
.end method
