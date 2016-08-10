.class public Lrx/internal/operators/SingleOperatorZip;
.super Ljava/lang/Object;
.source "SingleOperatorZip.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "singles":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    .local p1, "zipper":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lrx/internal/operators/SingleOperatorZip$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorZip$1;-><init>([Lrx/Single;Lrx/functions/FuncN;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method
