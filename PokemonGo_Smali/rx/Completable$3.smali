.class final Lrx/Completable$3;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->amb([Lrx/Completable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:[Lrx/Completable;


# direct methods
.method constructor <init>([Lrx/Completable;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lrx/Completable$3;->val$sources:[Lrx/Completable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$3;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 12
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 125
    new-instance v7, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v7}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 126
    .local v7, "set":Lrx/subscriptions/CompositeSubscription;
    invoke-interface {p1, v7}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 128
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 130
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Lrx/Completable$3$1;

    invoke-direct {v3, p0, v6, v7, p1}, Lrx/Completable$3$1;-><init>(Lrx/Completable$3;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/Completable$CompletableSubscriber;)V

    .line 156
    .local v3, "inner":Lrx/Completable$CompletableSubscriber;
    iget-object v0, p0, Lrx/Completable$3;->val$sources:[Lrx/Completable;

    .local v0, "arr$":[Lrx/Completable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v4, :cond_20

    aget-object v1, v0, v2

    .line 157
    .local v1, "c":Lrx/Completable;
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 177
    .end local v1    # "c":Lrx/Completable;
    :cond_20
    :goto_20
    return-void

    .line 160
    .restart local v1    # "c":Lrx/Completable;
    :cond_21
    if-nez v1, :cond_3f

    .line 161
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v8, "One of the sources is null"

    invoke-direct {v5, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 162
    .local v5, "npe":Ljava/lang/NullPointerException;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 163
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 164
    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 166
    :cond_39
    sget-object v8, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v8, v5}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 170
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :cond_3f
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_20

    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_20

    .line 175
    invoke-virtual {v1, v3}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method
