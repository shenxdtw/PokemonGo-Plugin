.class final Lrx/Completable$13;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completableFunc1:Lrx/functions/Func1;

.field final synthetic val$disposer:Lrx/functions/Action1;

.field final synthetic val$eager:Z

.field final synthetic val$resourceFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V
    .registers 5

    .prologue
    .line 849
    iput-object p1, p0, Lrx/Completable$13;->val$resourceFunc0:Lrx/functions/Func0;

    iput-object p2, p0, Lrx/Completable$13;->val$completableFunc1:Lrx/functions/Func1;

    iput-object p3, p0, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iput-boolean p4, p0, Lrx/Completable$13;->val$eager:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 849
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$13;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 13
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 855
    :try_start_3
    iget-object v5, p0, Lrx/Completable$13;->val$resourceFunc0:Lrx/functions/Func0;

    invoke-interface {v5}, Lrx/functions/Func0;->call()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_2a

    move-result-object v4

    .line 865
    .local v4, "resource":Ljava/lang/Object;, "TR;"
    :try_start_9
    iget-object v5, p0, Lrx/Completable$13;->val$completableFunc1:Lrx/functions/Func1;

    invoke-interface {v5, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_36

    .line 884
    .local v0, "cs":Lrx/Completable;
    if-nez v0, :cond_90

    .line 886
    :try_start_13
    iget-object v5, p0, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    invoke-interface {v5, v4}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_6b

    .line 894
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 895
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "The completable supplied is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 964
    .end local v0    # "cs":Lrx/Completable;
    .end local v4    # "resource":Ljava/lang/Object;, "TR;"
    :goto_29
    return-void

    .line 856
    :catch_2a
    move-exception v1

    .line 857
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 858
    invoke-interface {p1, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 866
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "resource":Ljava/lang/Object;, "TR;"
    :catch_36
    move-exception v1

    .line 868
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_37
    iget-object v5, p0, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    invoke-interface {v5, v4}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_4a

    .line 877
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 879
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 880
    invoke-interface {p1, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 869
    :catch_4a
    move-exception v2

    .line 870
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 871
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 873
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 874
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 887
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "cs":Lrx/Completable;
    :catch_6b
    move-exception v2

    .line 888
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 890
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 891
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "The completable supplied is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 899
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_90
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 901
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Lrx/Completable$13$1;

    invoke-direct {v5, p0, v3, v4, p1}, Lrx/Completable$13$1;-><init>(Lrx/Completable$13;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v0, v5}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    goto :goto_29
.end method
