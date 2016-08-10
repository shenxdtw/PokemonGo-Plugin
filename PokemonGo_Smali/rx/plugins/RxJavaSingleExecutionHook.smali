.class public abstract Lrx/plugins/RxJavaSingleExecutionHook;
.super Ljava/lang/Object;
.source "RxJavaSingleExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)",
            "Lrx/Single$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "f":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    return-object p1
.end method

.method public onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "lift":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 102
    return-object p1
.end method

.method public onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    .registers 2
    .param p1, "subscription"    # Lrx/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscription;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 87
    return-object p1
.end method

.method public onSubscribeStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "singleInstance":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    return-object p2
.end method
