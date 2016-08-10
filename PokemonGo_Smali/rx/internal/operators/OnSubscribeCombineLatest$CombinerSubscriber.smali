.class final Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombinerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final index:I

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "parent":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 371
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    .line 372
    iput p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    .line 373
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 374
    iget v0, p1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->request(J)V

    .line 375
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 398
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 403
    :goto_4
    return-void

    .line 401
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    .line 402
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 387
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_10

    .line 388
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 394
    :goto_f
    return-void

    .line 391
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->onError(Ljava/lang/Throwable;)V

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    .line 393
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_f
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 383
    :goto_4
    return-void

    .line 382
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method public requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 406
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->request(J)V

    .line 407
    return-void
.end method
