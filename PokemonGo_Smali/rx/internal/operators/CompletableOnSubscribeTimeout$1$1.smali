.class Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeTimeout$1;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 79
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 73
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 67
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 68
    return-void
.end method
