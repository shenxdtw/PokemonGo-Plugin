.class Lrx/Completable$26;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$onComplete:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;)V
    .registers 4

    .prologue
    .line 1879
    iput-object p1, p0, Lrx/Completable$26;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$26;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 1883
    :try_start_0
    iget-object v1, p0, Lrx/Completable$26;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b
    .catchall {:try_start_0 .. :try_end_5} :catchall_1a

    .line 1888
    iget-object v1, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1890
    :goto_a
    return-void

    .line 1884
    :catch_b
    move-exception v0

    .line 1885
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_c
    sget-object v1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 1886
    # invokes: Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    .line 1888
    iget-object v1, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    goto :goto_a

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1a
    move-exception v1

    iget-object v2, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1894
    sget-object v0, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 1895
    iget-object v0, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1896
    # invokes: Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V
    invoke-static {p1}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V

    .line 1897
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1901
    iget-object v0, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 1902
    return-void
.end method
