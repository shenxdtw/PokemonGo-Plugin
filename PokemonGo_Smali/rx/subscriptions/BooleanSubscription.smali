.class public final Lrx/subscriptions/BooleanSubscription;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field static final EMPTY_ACTION:Lrx/functions/Action0;


# instance fields
.field final actionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Lrx/subscriptions/BooleanSubscription$1;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription$1;-><init>()V

    sput-object v0, Lrx/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lrx/functions/Action0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
.end method

.method private constructor <init>(Lrx/functions/Action0;)V
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static create()Lrx/subscriptions/BooleanSubscription;
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    return-object v0
.end method

.method public static create(Lrx/functions/Action0;)Lrx/subscriptions/BooleanSubscription;
    .registers 2
    .param p0, "onUnsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 57
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0, p0}, Lrx/subscriptions/BooleanSubscription;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lrx/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lrx/functions/Action0;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final unsubscribe()V
    .registers 4

    .prologue
    .line 67
    iget-object v1, p0, Lrx/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/functions/Action0;

    .line 68
    .local v0, "action":Lrx/functions/Action0;
    sget-object v1, Lrx/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lrx/functions/Action0;

    if-eq v0, v1, :cond_1f

    .line 69
    iget-object v1, p0, Lrx/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lrx/functions/Action0;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "action":Lrx/functions/Action0;
    check-cast v0, Lrx/functions/Action0;

    .line 70
    .restart local v0    # "action":Lrx/functions/Action0;
    if-eqz v0, :cond_1f

    sget-object v1, Lrx/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lrx/functions/Action0;

    if-eq v0, v1, :cond_1f

    .line 71
    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 74
    :cond_1f
    return-void
.end method
