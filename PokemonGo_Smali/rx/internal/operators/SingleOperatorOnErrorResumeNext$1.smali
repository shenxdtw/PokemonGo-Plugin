.class final Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNext.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
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
        "Lrx/Single",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resumeSingleInCaseOfError:Lrx/Single;


# direct methods
.method constructor <init>(Lrx/Single;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;->val$resumeSingleInCaseOfError:Lrx/Single;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;->call(Ljava/lang/Throwable;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Single;
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;->val$resumeSingleInCaseOfError:Lrx/Single;

    return-object v0
.end method
