.class Lrx/Observable$26;
.super Lrx/Subscriber;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->subscribe()Lrx/Subscription;
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


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 8515
    .local p0, "this":Lrx/Observable$26;, "Lrx/Observable.26;"
    iput-object p1, p0, Lrx/Observable$26;->this$0:Lrx/Observable;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 1

    .prologue
    .line 8520
    .local p0, "this":Lrx/Observable$26;, "Lrx/Observable.26;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 8524
    .local p0, "this":Lrx/Observable$26;, "Lrx/Observable.26;"
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 8530
    .local p0, "this":Lrx/Observable$26;, "Lrx/Observable.26;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    return-void
.end method
