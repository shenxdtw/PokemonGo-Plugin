.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip;,
        Lrx/internal/operators/OperatorZip$ZipProducer;,
        Lrx/internal/operators/OperatorZip$ZipSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;[",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func2;

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 72
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func3;

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 77
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func4;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func4;

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 82
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func5;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func5;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 87
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func6;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func6;

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 92
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func7;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func7;

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 97
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func8;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func8;

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 102
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func9;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func9;

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 107
    return-void
.end method

.method public constructor <init>(Lrx/functions/FuncN;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "f":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 67
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<-[",
            "Lrx/Observable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v2, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v3, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    invoke-direct {v2, p1, v3}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    .line 113
    .local v2, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v0, v2}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 114
    .local v0, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorZip$ZipSubscriber;

    invoke-direct {v1, p0, p1, v2, v0}, Lrx/internal/operators/OperatorZip$ZipSubscriber;-><init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    .line 116
    .local v1, "subscriber":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 117
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 119
    return-object v1
.end method
