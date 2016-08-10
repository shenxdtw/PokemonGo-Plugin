.class Lrx/observables/BlockingObservable$6;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/Subscriber;)V
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

.field final synthetic val$theProducer:[Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;[Lrx/Producer;)V
    .registers 5

    .prologue
    .line 561
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$6;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    iput-object p4, p0, Lrx/observables/BlockingObservable$6;->val$theProducer:[Lrx/Producer;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 572
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 573
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 568
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 569
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
    .line 564
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 583
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/BlockingObservable;->ON_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 577
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$theProducer:[Lrx/Producer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 578
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/BlockingObservable;->SET_PRODUCER:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method
