.class public final Lrx/internal/operators/OperatorDoAfterTerminate;
.super Ljava/lang/Object;
.source "OperatorDoAfterTerminate.java"

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
.field final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_d

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_d
    iput-object p1, p0, Lrx/internal/operators/OperatorDoAfterTerminate;->action:Lrx/functions/Action0;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDoAfterTerminate;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
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
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoAfterTerminate$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDoAfterTerminate$1;-><init>(Lrx/internal/operators/OperatorDoAfterTerminate;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
