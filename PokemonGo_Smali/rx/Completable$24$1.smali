.class Lrx/Completable$24$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$24;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$24;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$sd:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/Completable$24;Lrx/Completable$CompletableSubscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 4

    .prologue
    .line 1684
    iput-object p1, p0, Lrx/Completable$24$1;->this$1:Lrx/Completable$24;

    iput-object p2, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    iput-object p3, p0, Lrx/Completable$24$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1688
    iget-object v0, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 1689
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1696
    :try_start_3
    iget-object v4, p0, Lrx/Completable$24$1;->this$1:Lrx/Completable$24;

    iget-object v4, v4, Lrx/Completable$24;->val$errorMapper:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_2c

    .line 1703
    .local v0, "c":Lrx/Completable;
    if-nez v0, :cond_43

    .line 1704
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The completable returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1705
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v3, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1706
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v4, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1728
    .end local v0    # "c":Lrx/Completable;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .restart local p1    # "e":Ljava/lang/Throwable;
    :goto_2b
    return-void

    .line 1697
    :catch_2c
    move-exception v2

    .line 1698
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1699
    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v4, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1700
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_2b

    .line 1710
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/Completable;
    :cond_43
    new-instance v4, Lrx/Completable$24$1$1;

    invoke-direct {v4, p0}, Lrx/Completable$24$1$1;-><init>(Lrx/Completable$24$1;)V

    invoke-virtual {v0, v4}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    goto :goto_2b
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1732
    iget-object v0, p0, Lrx/Completable$24$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 1733
    return-void
.end method
