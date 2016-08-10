.class public final Lrx/internal/operators/OperatorTake;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final limit:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "limit"    # I

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-gez p1, :cond_1e

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1e
    iput p1, p0, Lrx/internal/operators/OperatorTake;->limit:I

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTake;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTake$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorTake$1;-><init>(Lrx/internal/operators/OperatorTake;Lrx/Subscriber;)V

    .line 120
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorTake;->limit:I

    if-nez v1, :cond_f

    .line 121
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 122
    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 134
    :cond_f
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 136
    return-object v0
.end method
