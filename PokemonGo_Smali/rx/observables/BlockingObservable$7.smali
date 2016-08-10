.class Lrx/observables/BlockingObservable$7;
.super Ljava/lang/Object;
.source "BlockingObservable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3

    .prologue
    .line 588
    .local p0, "this":Lrx/observables/BlockingObservable$7;, "Lrx/observables/BlockingObservable.7;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$7;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$7;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 591
    .local p0, "this":Lrx/observables/BlockingObservable$7;, "Lrx/observables/BlockingObservable.7;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$7;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/BlockingObservable;->UNSUBSCRIBE:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 592
    return-void
.end method
