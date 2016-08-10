.class Lrx/internal/operators/OnSubscribeAmb$1;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeAmb;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeAmb;

.field final synthetic val$choice:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeAmb;Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/OnSubscribeAmb$Selection;)V
    .registers 4

    .prologue
    .line 367
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeAmb$1;->val$choice:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeAmb$1;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->val$choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .local v0, "c":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v0, :cond_d

    .line 374
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    .line 380
    :cond_d
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->unsubscribeAmbSubscribers(Ljava/util/Collection;)V

    .line 381
    return-void
.end method
