.class Lcom/upsight/android/internal/persistence/subscription/SubscriptionAdapter;
.super Ljava/lang/Object;
.source "SubscriptionAdapter.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightSubscription;


# instance fields
.field private final mRxSubscription:Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/Subscription;)V
    .registers 2
    .param p1, "rxSubscription"    # Lrx/Subscription;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionAdapter;->mRxSubscription:Lrx/Subscription;

    .line 20
    return-void
.end method


# virtual methods
.method public isSubscribed()Z
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionAdapter;->mRxSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionAdapter;->mRxSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 30
    return-void
.end method
