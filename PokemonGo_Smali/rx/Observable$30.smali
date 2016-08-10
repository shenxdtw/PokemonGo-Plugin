.class Lrx/Observable$30;
.super Lrx/Subscriber;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;
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
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/Observer;)V
    .registers 3

    .prologue
    .line 8698
    .local p0, "this":Lrx/Observable$30;, "Lrx/Observable.30;"
    iput-object p1, p0, Lrx/Observable$30;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$30;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 8702
    .local p0, "this":Lrx/Observable$30;, "Lrx/Observable.30;"
    iget-object v0, p0, Lrx/Observable$30;->val$observer:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 8703
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 8707
    .local p0, "this":Lrx/Observable$30;, "Lrx/Observable.30;"
    iget-object v0, p0, Lrx/Observable$30;->val$observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 8708
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 8712
    .local p0, "this":Lrx/Observable$30;, "Lrx/Observable.30;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$30;->val$observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 8713
    return-void
.end method
