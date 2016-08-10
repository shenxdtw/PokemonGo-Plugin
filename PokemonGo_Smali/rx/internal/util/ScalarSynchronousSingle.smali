.class public final Lrx/internal/util/ScalarSynchronousSingle;
.super Lrx/Single;
.source "ScalarSynchronousSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;,
        Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;,
        Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Single",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousSingle$1;

    invoke-direct {v0, p1}, Lrx/internal/util/ScalarSynchronousSingle$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    .line 44
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static final create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousSingle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousSingle;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousSingle;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Single",
            "<+TR;>;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Single<+TR;>;>;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousSingle$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2;-><init>(Lrx/internal/util/ScalarSynchronousSingle;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousSingle;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;
    .registers 5
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    instance-of v1, p1, Lrx/internal/schedulers/EventLoopsScheduler;

    if-eqz v1, :cond_13

    move-object v0, p1

    .line 60
    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler;

    .line 61
    .local v0, "es":Lrx/internal/schedulers/EventLoopsScheduler;
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;-><init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousSingle;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v1

    .line 63
    .end local v0    # "es":Lrx/internal/schedulers/EventLoopsScheduler;
    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;-><init>(Lrx/Scheduler;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousSingle;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v1

    goto :goto_12
.end method
