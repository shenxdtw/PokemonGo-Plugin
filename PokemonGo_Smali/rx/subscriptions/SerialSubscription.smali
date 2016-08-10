.class public final Lrx/subscriptions/SerialSubscription;
.super Ljava/lang/Object;
.source "SerialSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/SerialSubscription$State;
    }
.end annotation


# instance fields
.field final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subscriptions/SerialSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lrx/subscriptions/SerialSubscription$State;

    const/4 v2, 0x0

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/SerialSubscription$State;

    iget-object v0, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/SerialSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    return v0
.end method

.method public set(Lrx/Subscription;)V
    .registers 7
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 78
    if-nez p1, :cond_a

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Subscription can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_a
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/SerialSubscription$State;>;"
    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/SerialSubscription$State;

    .line 86
    .local v2, "oldState":Lrx/subscriptions/SerialSubscription$State;
    iget-boolean v3, v2, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v3, :cond_1a

    .line 87
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 94
    :goto_19
    return-void

    .line 90
    :cond_1a
    invoke-virtual {v2, p1}, Lrx/subscriptions/SerialSubscription$State;->set(Lrx/Subscription;)Lrx/subscriptions/SerialSubscription$State;

    move-result-object v1

    .line 92
    .local v1, "newState":Lrx/subscriptions/SerialSubscription$State;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 93
    iget-object v3, v2, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V

    goto :goto_19
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .line 57
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/SerialSubscription$State;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/SerialSubscription$State;

    .line 60
    .local v2, "oldState":Lrx/subscriptions/SerialSubscription$State;
    iget-boolean v3, v2, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v3, :cond_d

    .line 67
    :goto_c
    return-void

    .line 63
    :cond_d
    invoke-virtual {v2}, Lrx/subscriptions/SerialSubscription$State;->unsubscribe()Lrx/subscriptions/SerialSubscription$State;

    move-result-object v1

    .line 65
    .local v1, "newState":Lrx/subscriptions/SerialSubscription$State;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    iget-object v3, v2, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V

    goto :goto_c
.end method
