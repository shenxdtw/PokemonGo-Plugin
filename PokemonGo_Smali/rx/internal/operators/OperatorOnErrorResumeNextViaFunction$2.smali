.class final Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withOther(Lrx/Observable;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$other:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;->val$other:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;->call(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Observable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;->val$other:Lrx/Observable;

    return-object v0
.end method
