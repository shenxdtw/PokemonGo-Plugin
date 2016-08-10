.class Lrx/Completable$27;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action1;)V
    .registers 5

    .prologue
    .line 1921
    iput-object p1, p0, Lrx/Completable$27;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$27;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p4, p0, Lrx/Completable$27;->val$onError:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 1925
    :try_start_0
    iget-object v1, p0, Lrx/Completable$27;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 1930
    iget-object v1, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1931
    :goto_a
    return-void

    .line 1926
    :catch_b
    move-exception v0

    .line 1927
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/Completable$27;->onError(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1936
    :try_start_0
    iget-object v2, p0, Lrx/Completable$27;->val$onError:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b
    .catchall {:try_start_0 .. :try_end_5} :catchall_2d

    .line 1942
    iget-object v2, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1944
    :goto_a
    return-void

    .line 1937
    :catch_b
    move-exception v1

    .line 1938
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_c
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2d

    .line 1939
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1e
    sget-object v2, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 1940
    # invokes: Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_34

    .line 1942
    iget-object v2, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    move-object p1, v0

    .line 1943
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_a

    .line 1942
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_2d
    move-exception v2

    :goto_2e
    iget-object v3, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    throw v2

    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :catchall_34
    move-exception v2

    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_2e
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1948
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 1949
    return-void
.end method
