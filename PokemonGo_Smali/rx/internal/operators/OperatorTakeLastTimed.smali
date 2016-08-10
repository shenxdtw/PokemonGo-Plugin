.class public final Lrx/internal/operators/OperatorTakeLastTimed;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final ageMillis:J

.field final count:I

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_d

    .line 47
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_d
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 50
    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 51
    iput p1, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 52
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 41
    iput-object p4, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;

    iget v3, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    iget-wide v4, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    iget-object v6, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;-><init>(Lrx/Subscriber;IJLrx/Scheduler;)V

    .line 58
    .local v1, "parent":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    new-instance v0, Lrx/internal/operators/OperatorTakeLastTimed$1;

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;-><init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 66
    return-object v1
.end method
