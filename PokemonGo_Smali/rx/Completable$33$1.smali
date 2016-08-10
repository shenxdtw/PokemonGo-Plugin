.class Lrx/Completable$33$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$33;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$33;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$33;Lrx/Completable$CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 2224
    iput-object p1, p0, Lrx/Completable$33$1;->this$1:Lrx/Completable$33;

    iput-object p2, p0, Lrx/Completable$33$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 2228
    iget-object v0, p0, Lrx/Completable$33$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 2229
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2233
    iget-object v0, p0, Lrx/Completable$33$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 2234
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 4
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 2238
    iget-object v0, p0, Lrx/Completable$33$1;->val$s:Lrx/Completable$CompletableSubscriber;

    new-instance v1, Lrx/Completable$33$1$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$33$1$1;-><init>(Lrx/Completable$33$1;Lrx/Subscription;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 2254
    return-void
.end method
