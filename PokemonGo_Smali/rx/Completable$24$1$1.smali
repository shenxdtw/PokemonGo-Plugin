.class Lrx/Completable$24$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$24$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$24$1;


# direct methods
.method constructor <init>(Lrx/Completable$24$1;)V
    .registers 2

    .prologue
    .line 1710
    iput-object p1, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1714
    iget-object v0, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    iget-object v0, v0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 1715
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1719
    iget-object v0, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    iget-object v0, v0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 1720
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1724
    iget-object v0, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    iget-object v0, v0, Lrx/Completable$24$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 1725
    return-void
.end method
