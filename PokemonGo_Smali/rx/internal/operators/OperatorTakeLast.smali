.class public final Lrx/internal/operators/OperatorTakeLast;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;
    }
.end annotation

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
.field final count:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-gez p1, :cond_d

    .line 38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_d
    iput p1, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeLast;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;-><init>(Lrx/Subscriber;I)V

    .line 47
    .local v0, "parent":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    new-instance v1, Lrx/internal/operators/OperatorTakeLast$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorTakeLast$1;-><init>(Lrx/internal/operators/OperatorTakeLast;Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 55
    return-object v0
.end method
