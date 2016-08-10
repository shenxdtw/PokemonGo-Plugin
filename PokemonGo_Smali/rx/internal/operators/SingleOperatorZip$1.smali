.class final Lrx/internal/operators/SingleOperatorZip$1;
.super Ljava/lang/Object;
.source "SingleOperatorZip.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$singles:[Lrx/Single;

.field final synthetic val$zipper:Lrx/functions/FuncN;


# direct methods
.method constructor <init>([Lrx/Single;Lrx/functions/FuncN;)V
    .registers 3

    .prologue
    .line 17
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    iput-object p2, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$zipper:Lrx/functions/FuncN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorZip$1;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    if-nez v1, :cond_10

    .line 21
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v5, "Can\'t zip 0 Singles."

    invoke-direct {v1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 75
    :cond_f
    return-void

    .line 25
    :cond_10
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 26
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 27
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    .line 29
    .local v2, "values":[Ljava/lang/Object;
    new-instance v7, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v7}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 30
    .local v7, "compositeSubscription":Lrx/subscriptions/CompositeSubscription;
    invoke-virtual {p1, v7}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 32
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2b
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    if-ge v8, v1, :cond_f

    .line 33
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37
    move v3, v8

    .line 38
    .local v3, "j":I
    new-instance v0, Lrx/internal/operators/SingleOperatorZip$1$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/SingleOperatorZip$1$1;-><init>(Lrx/internal/operators/SingleOperatorZip$1;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lrx/SingleSubscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 67
    .local v0, "singleSubscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    invoke-virtual {v7, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 69
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_f

    .line 73
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    aget-object v1, v1, v8

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 32
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b
.end method
