.class public Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNext.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final originalSingle:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final resumeFunctionInCaseOfError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Single;Lrx/functions/Func1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    .local p1, "originalSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "resumeFunctionInCaseOfError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_d

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "originalSingle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_d
    if-nez p2, :cond_17

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resumeFunctionInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_17
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->originalSingle:Lrx/Single;

    .line 24
    iput-object p2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->resumeFunctionInCaseOfError:Lrx/functions/Func1;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;)Lrx/functions/Func1;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    .prologue
    .line 9
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->resumeFunctionInCaseOfError:Lrx/functions/Func1;

    return-object v0
.end method

.method public static withFunction(Lrx/Single;Lrx/functions/Func1;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;)",
            "Lrx/internal/operators/SingleOperatorOnErrorResumeNext",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "originalSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/internal/operators/SingleOperatorOnErrorResumeNext",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "originalSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lrx/Single;, "Lrx/Single<+TT;>;"
    if-nez p1, :cond_a

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resumeSingleInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    new-instance v1, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;

    invoke-direct {v1, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;-><init>(Lrx/Single;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;-><init>(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;Lrx/SingleSubscriber;)V

    .line 62
    .local v0, "parent":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 63
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->originalSingle:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 64
    return-void
.end method
