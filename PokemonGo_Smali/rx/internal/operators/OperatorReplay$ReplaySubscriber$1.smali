.class Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V
    .registers 2

    .prologue
    .line 340
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 343
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method
