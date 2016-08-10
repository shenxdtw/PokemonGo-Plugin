.class public final Lrx/internal/operators/OperatorScan;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorScan$InitialProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final NO_INITIAL_VALUE:Ljava/lang/Object;


# instance fields
.field final accumulator:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final initialValueFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorScan$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValueFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    .line 75
    iput-object p2, p0, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    .line 76
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "initialValue":Ljava/lang/Object;, "TR;"
    sget-object v3, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    if-ne v0, v3, :cond_10

    .line 96
    new-instance v2, Lrx/internal/operators/OperatorScan$2;

    invoke-direct {v2, p0, p1, p1}, Lrx/internal/operators/OperatorScan$2;-><init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V

    .line 165
    :goto_f
    return-object v2

    .line 129
    :cond_10
    new-instance v1, Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorScan$InitialProducer;-><init>(Ljava/lang/Object;Lrx/Subscriber;)V

    .line 131
    .local v1, "ip":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    new-instance v2, Lrx/internal/operators/OperatorScan$3;

    invoke-direct {v2, p0, v0, v1}, Lrx/internal/operators/OperatorScan$3;-><init>(Lrx/internal/operators/OperatorScan;Ljava/lang/Object;Lrx/internal/operators/OperatorScan$InitialProducer;)V

    .line 163
    .local v2, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 164
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_f
.end method
