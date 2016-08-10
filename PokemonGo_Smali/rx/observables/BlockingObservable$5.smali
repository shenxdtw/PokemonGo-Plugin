.class Lrx/observables/BlockingObservable$5;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$nl:Lrx/internal/operators/NotificationLite;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;)V
    .registers 4

    .prologue
    .line 507
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$5;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 518
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 514
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 515
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method
