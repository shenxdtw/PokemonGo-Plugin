.class final Lrx/internal/operators/OperatorSequenceEqual$2;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSequenceEqual;->sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$equality:Lrx/functions/Func2;


# direct methods
.method constructor <init>(Lrx/functions/Func2;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lrx/internal/operators/OperatorSequenceEqual$2;->val$equality:Lrx/functions/Func2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    sget-object v4, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    if-ne p1, v4, :cond_15

    move v0, v2

    .line 76
    .local v0, "c1":Z
    :goto_7
    sget-object v4, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    if-ne p2, v4, :cond_17

    move v1, v2

    .line 77
    .local v1, "c2":Z
    :goto_c
    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    .line 78
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 84
    :goto_14
    return-object v2

    .end local v0    # "c1":Z
    .end local v1    # "c2":Z
    :cond_15
    move v0, v3

    .line 75
    goto :goto_7

    .restart local v0    # "c1":Z
    :cond_17
    move v1, v3

    .line 76
    goto :goto_c

    .line 80
    .restart local v1    # "c2":Z
    :cond_19
    if-nez v0, :cond_1d

    if-eqz v1, :cond_22

    .line 81
    :cond_1d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_14

    .line 84
    :cond_22
    iget-object v2, p0, Lrx/internal/operators/OperatorSequenceEqual$2;->val$equality:Lrx/functions/Func2;

    invoke-interface {v2, p1, p2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_14
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorSequenceEqual$2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
