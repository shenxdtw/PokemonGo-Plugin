.class final Lrx/internal/operators/OperatorReplay$2;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$connectableFactory:Lrx/functions/Func0;

.field final synthetic val$selector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$2;->val$connectableFactory:Lrx/functions/Func0;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$2;->val$selector:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$2;->val$connectableFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/observables/ConnectableObservable;

    .line 64
    .local v0, "co":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TU;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$2;->val$selector:Lrx/functions/Func1;

    invoke-interface {v3, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_1c

    .line 70
    .local v2, "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    invoke-virtual {v2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 72
    new-instance v3, Lrx/internal/operators/OperatorReplay$2$1;

    invoke-direct {v3, p0, p1}, Lrx/internal/operators/OperatorReplay$2$1;-><init>(Lrx/internal/operators/OperatorReplay$2;Lrx/Subscriber;)V

    invoke-virtual {v0, v3}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 78
    .end local v0    # "co":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TU;>;"
    .end local v2    # "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    :goto_1b
    return-void

    .line 65
    :catch_1c
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_1b
.end method
