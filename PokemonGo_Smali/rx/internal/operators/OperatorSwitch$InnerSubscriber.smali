.class final Lrx/internal/operators/OperatorSwitch$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final id:J

.field private final parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V
    .registers 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .local p3, "parent":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 391
    iput-wide p1, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J

    .line 392
    iput-object p3, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    .line 393
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)J
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$InnerSubscriber;

    .prologue
    .line 384
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J

    return-wide v0
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 412
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->complete(J)V

    .line 413
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 407
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J

    invoke-virtual {v0, p1, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error(Ljava/lang/Throwable;J)V

    .line 408
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-virtual {v0, p1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emit(Ljava/lang/Object;Lrx/internal/operators/OperatorSwitch$InnerSubscriber;)V

    .line 403
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 6
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 397
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:J

    invoke-virtual {v0, p1, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->innerProducer(Lrx/Producer;J)V

    .line 398
    return-void
.end method
