.class final Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NormalScheduledEmission"
.end annotation

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
.field private final scheduler:Lrx/Scheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Scheduler;Ljava/lang/Object;)V
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    .line 93
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->value:Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    .local p1, "singleSubscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 99
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 100
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;-><init>(Lrx/SingleSubscriber;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 101
    return-void
.end method
