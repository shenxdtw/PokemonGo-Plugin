.class final Lrx/internal/operators/OperatorReplay$4;
.super Lrx/observables/ConnectableObservable;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->observeOn(Lrx/observables/ConnectableObservable;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/observables/ConnectableObservable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$co:Lrx/observables/ConnectableObservable;


# direct methods
.method constructor <init>(Lrx/Observable$OnSubscribe;Lrx/observables/ConnectableObservable;)V
    .registers 3

    .prologue
    .line 111
    .local p1, "x0":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$4;->val$co:Lrx/observables/ConnectableObservable;

    invoke-direct {p0, p1}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-void
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$4;->val$co:Lrx/observables/ConnectableObservable;

    invoke-virtual {v0, p1}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 115
    return-void
.end method
