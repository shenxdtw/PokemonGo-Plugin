.class Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMerge.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->onNext(Lrx/Completable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field d:Lrx/Subscription;

.field innerDone:Z

.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 132
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    if-eqz v0, :cond_5

    .line 143
    :cond_4
    :goto_4
    return-void

    .line 135
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    .line 136
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->d:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 138
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    .line 140
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-nez v0, :cond_4

    .line 141
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    const-wide/16 v2, 0x1

    # invokes: Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V
    invoke-static {v0, v2, v3}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->access$100(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    if-eqz v0, :cond_10

    .line 115
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 128
    :cond_f
    :goto_f
    return-void

    .line 118
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    .line 119
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->d:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 121
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->getOrCreateErrors()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    .line 125
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->delayErrors:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-nez v0, :cond_f

    .line 126
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    const-wide/16 v2, 0x1

    # invokes: Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V
    invoke-static {v0, v2, v3}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->access$000(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V

    goto :goto_f
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 108
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->d:Lrx/Subscription;

    .line 109
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 110
    return-void
.end method
