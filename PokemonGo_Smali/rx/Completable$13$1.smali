.class Lrx/Completable$13$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$13;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field d:Lrx/Subscription;

.field final synthetic this$0:Lrx/Completable$13;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$resource:Ljava/lang/Object;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$13;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lrx/Completable$CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 901
    iput-object p1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iput-object p2, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    iput-object p4, p0, Lrx/Completable$13$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispose()V
    .registers 5

    .prologue
    .line 904
    iget-object v1, p0, Lrx/Completable$13$1;->d:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 905
    iget-object v1, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 907
    :try_start_f
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-object v1, v1, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_18} :catch_19

    .line 912
    :cond_18
    :goto_18
    return-void

    .line 908
    :catch_19
    move-exception v0

    .line 909
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public onCompleted()V
    .registers 5

    .prologue
    .line 916
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v1, v1, Lrx/Completable$13;->val$eager:Z

    if-eqz v1, :cond_19

    .line 917
    iget-object v1, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 919
    :try_start_10
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-object v1, v1, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_28

    .line 927
    :cond_19
    iget-object v1, p0, Lrx/Completable$13$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 929
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v1, v1, Lrx/Completable$13;->val$eager:Z

    if-nez v1, :cond_27

    .line 930
    invoke-virtual {p0}, Lrx/Completable$13$1;->dispose()V

    .line 932
    :cond_27
    :goto_27
    return-void

    .line 920
    :catch_28
    move-exception v0

    .line 921
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/Completable$13$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 936
    iget-object v2, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v2, v2, Lrx/Completable$13;->val$eager:Z

    if-eqz v2, :cond_19

    .line 937
    iget-object v2, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 939
    :try_start_10
    iget-object v2, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-object v2, v2, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iget-object v3, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_28

    .line 946
    :cond_19
    :goto_19
    iget-object v2, p0, Lrx/Completable$13$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 948
    iget-object v2, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v2, v2, Lrx/Completable$13;->val$eager:Z

    if-nez v2, :cond_27

    .line 949
    invoke-virtual {p0}, Lrx/Completable$13$1;->dispose()V

    .line 951
    :cond_27
    return-void

    .line 940
    :catch_28
    move-exception v1

    .line 941
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_19
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 4
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 955
    iput-object p1, p0, Lrx/Completable$13$1;->d:Lrx/Subscription;

    .line 956
    iget-object v0, p0, Lrx/Completable$13$1;->val$s:Lrx/Completable$CompletableSubscriber;

    new-instance v1, Lrx/Completable$13$1$1;

    invoke-direct {v1, p0}, Lrx/Completable$13$1$1;-><init>(Lrx/Completable$13$1;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 962
    return-void
.end method
