.class Lrx/Single$17;
.super Lrx/SingleSubscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->subscribe(Lrx/Observer;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/Observer;)V
    .registers 3

    .prologue
    .line 1648
    .local p0, "this":Lrx/Single$17;, "Lrx/Single.17;"
    iput-object p1, p0, Lrx/Single$17;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$17;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1656
    .local p0, "this":Lrx/Single$17;, "Lrx/Single.17;"
    iget-object v0, p0, Lrx/Single$17;->val$observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 1657
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1651
    .local p0, "this":Lrx/Single$17;, "Lrx/Single.17;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Single$17;->val$observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 1652
    iget-object v0, p0, Lrx/Single$17;->val$observer:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 1653
    return-void
.end method
