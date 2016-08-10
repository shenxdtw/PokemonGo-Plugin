.class final Lrx/subscriptions/RefCountSubscription$InnerSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "RefCountSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerSubscription"
.end annotation


# instance fields
.field final parent:Lrx/subscriptions/RefCountSubscription;


# direct methods
.method public constructor <init>(Lrx/subscriptions/RefCountSubscription;)V
    .registers 2
    .param p1, "parent"    # Lrx/subscriptions/RefCountSubscription;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 131
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    .line 132
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->get()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public unsubscribe()V
    .registers 3

    .prologue
    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribeAChild()V

    .line 138
    :cond_d
    return-void
.end method
