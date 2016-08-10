.class Lrx/observables/BlockingObservable$4;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe()V
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

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$error:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .prologue
    .line 470
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$4;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$4;->val$error:[Ljava/lang/Throwable;

    iput-object p3, p0, Lrx/observables/BlockingObservable$4;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 483
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$4;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 484
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 477
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$4;->val$error:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 478
    iget-object v0, p0, Lrx/observables/BlockingObservable$4;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 479
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method
