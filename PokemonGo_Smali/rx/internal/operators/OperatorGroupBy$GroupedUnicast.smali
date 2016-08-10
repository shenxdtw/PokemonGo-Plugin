.class final Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;
.super Lrx/observables/GroupedObservable;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupedUnicast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/GroupedObservable",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field final state:Lrx/internal/operators/OperatorGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    invoke-direct {p0, p1, p2}, Lrx/observables/GroupedObservable;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    .line 356
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    .line 357
    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Z)Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;
    .registers 6
    .param p1, "bufferSize"    # I
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<*TK;TT;>;Z)",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<*TK;TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lrx/internal/operators/OperatorGroupBy$State;-><init>(ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V

    .line 349
    .local v0, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    new-instance v1, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;-><init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V

    return-object v1
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .prologue
    .line 368
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$State;->onComplete()V

    .line 369
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 364
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->onError(Ljava/lang/Throwable;)V

    .line 365
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
    .line 360
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 361
    return-void
.end method
