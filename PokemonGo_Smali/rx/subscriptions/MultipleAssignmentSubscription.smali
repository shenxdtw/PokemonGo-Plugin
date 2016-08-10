.class public final Lrx/subscriptions/MultipleAssignmentSubscription;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/MultipleAssignmentSubscription$State;
    }
.end annotation


# instance fields
.field final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subscriptions/MultipleAssignmentSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    const/4 v2, 0x0

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lrx/subscriptions/MultipleAssignmentSubscription$State;-><init>(ZLrx/Subscription;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    iget-object v0, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

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
    iget-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/MultipleAssignmentSubscription$State;>;"
    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    .line 86
    .local v2, "oldState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    iget-boolean v3, v2, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

    if-eqz v3, :cond_1a

    .line 87
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 93
    :goto_19
    return-void

    .line 90
    :cond_1a
    invoke-virtual {v2, p1}, Lrx/subscriptions/MultipleAssignmentSubscription$State;->set(Lrx/Subscription;)Lrx/subscriptions/MultipleAssignmentSubscription$State;

    move-result-object v1

    .line 92
    .local v1, "newState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_19
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .line 58
    iget-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/MultipleAssignmentSubscription$State;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    .line 61
    .local v2, "oldState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    iget-boolean v3, v2, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

    if-eqz v3, :cond_d

    .line 68
    :goto_c
    return-void

    .line 64
    :cond_d
    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription$State;->unsubscribe()Lrx/subscriptions/MultipleAssignmentSubscription$State;

    move-result-object v1

    .line 66
    .local v1, "newState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, v2, Lrx/subscriptions/MultipleAssignmentSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V

    goto :goto_c
.end method
