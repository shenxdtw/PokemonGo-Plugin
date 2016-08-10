.class Lrx/Completable$11$1;
.super Lrx/SingleSubscriber;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$11;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$11;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$11;Lrx/Completable$CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 588
    iput-object p1, p0, Lrx/Completable$11$1;->this$0:Lrx/Completable$11;

    iput-object p2, p0, Lrx/Completable$11$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 592
    iget-object v0, p0, Lrx/Completable$11$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 593
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 597
    iget-object v0, p0, Lrx/Completable$11$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 598
    return-void
.end method
