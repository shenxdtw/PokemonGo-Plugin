.class Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;
.super Lrx/Subscriber;
.source "OnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 4

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    if-eqz v0, :cond_5

    .line 75
    :goto_4
    return-void

    .line 71
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->main:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    if-eqz v0, :cond_10

    .line 59
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 64
    :goto_f
    return-void

    .line 62
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    .line 63
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->onCompleted()V

    .line 54
    return-void
.end method
