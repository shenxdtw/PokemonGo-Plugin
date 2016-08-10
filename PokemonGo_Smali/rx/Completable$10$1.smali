.class Lrx/Completable$10$1;
.super Lrx/Subscriber;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$10;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$10;

.field final synthetic val$cs:Lrx/Completable$CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$10;Lrx/Completable$CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 553
    iput-object p1, p0, Lrx/Completable$10$1;->this$0:Lrx/Completable$10;

    iput-object p2, p0, Lrx/Completable$10$1;->val$cs:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lrx/Completable$10$1;->val$cs:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 558
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 562
    iget-object v0, p0, Lrx/Completable$10$1;->val$cs:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 563
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 568
    return-void
.end method
