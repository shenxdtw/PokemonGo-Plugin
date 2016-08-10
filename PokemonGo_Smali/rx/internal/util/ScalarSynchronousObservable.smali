.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lrx/Observable;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final STRONG_MODE:Z


# instance fields
.field final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const-string v1, "rx.just.strong-mode"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "wp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lrx/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 83
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static createProducer(Lrx/Subscriber;Ljava/lang/Object;)Lrx/Producer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<-TT;>;TT;)",
            "Lrx/Producer;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lrx/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    if-eqz v0, :cond_a

    .line 56
    new-instance v0, Lrx/internal/producers/SingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    .line 58
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    goto :goto_9
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
    .line 91
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$4;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$4;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    instance-of v2, p1, Lrx/internal/schedulers/EventLoopsScheduler;

    if-eqz v2, :cond_18

    move-object v0, p1

    .line 104
    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler;

    .line 105
    .local v0, "els":Lrx/internal/schedulers/EventLoopsScheduler;
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v1, p0, v0}, Lrx/internal/util/ScalarSynchronousObservable$2;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/EventLoopsScheduler;)V

    .line 131
    .end local v0    # "els":Lrx/internal/schedulers/EventLoopsScheduler;
    .local v1, "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    :goto_c
    new-instance v2, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;

    iget-object v3, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-static {v2}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v2

    return-object v2

    .line 112
    .end local v1    # "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    :cond_18
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$3;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$3;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/Scheduler;)V

    .restart local v1    # "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    goto :goto_c
.end method
