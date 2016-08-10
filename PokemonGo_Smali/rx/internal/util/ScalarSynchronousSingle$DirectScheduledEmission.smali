.class final Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;
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
    name = "DirectScheduledEmission"
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
.field private final es:Lrx/internal/schedulers/EventLoopsScheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V
    .registers 3
    .param p1, "es"    # Lrx/internal/schedulers/EventLoopsScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/schedulers/EventLoopsScheduler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    .line 75
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->value:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->call(Lrx/SingleSubscriber;)V

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
    .line 80
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    .local p1, "singleSubscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;-><init>(Lrx/SingleSubscriber;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler;->scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 81
    return-void
.end method
