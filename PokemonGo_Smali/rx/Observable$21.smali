.class Lrx/Observable$21;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(Lrx/functions/Func1;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$time:J

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 6

    .prologue
    .line 7311
    .local p0, "this":Lrx/Observable$21;, "Lrx/Observable.21;"
    iput-object p1, p0, Lrx/Observable$21;->this$0:Lrx/Observable;

    iput-wide p2, p0, Lrx/Observable$21;->val$time:J

    iput-object p4, p0, Lrx/Observable$21;->val$unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lrx/Observable$21;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7311
    .local p0, "this":Lrx/Observable$21;, "Lrx/Observable.21;"
    invoke-virtual {p0}, Lrx/Observable$21;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7314
    .local p0, "this":Lrx/Observable$21;, "Lrx/Observable.21;"
    iget-object v0, p0, Lrx/Observable$21;->this$0:Lrx/Observable;

    iget-wide v2, p0, Lrx/Observable$21;->val$time:J

    iget-object v1, p0, Lrx/Observable$21;->val$unit:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lrx/Observable$21;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
