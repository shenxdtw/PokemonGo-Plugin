.class Lrx/Observable$18;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(Lrx/functions/Func1;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
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

.field final synthetic val$bufferSize:I

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$time:J

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8

    .prologue
    .line 7195
    .local p0, "this":Lrx/Observable$18;, "Lrx/Observable.18;"
    iput-object p1, p0, Lrx/Observable$18;->this$0:Lrx/Observable;

    iput p2, p0, Lrx/Observable$18;->val$bufferSize:I

    iput-wide p3, p0, Lrx/Observable$18;->val$time:J

    iput-object p5, p0, Lrx/Observable$18;->val$unit:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lrx/Observable$18;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7195
    .local p0, "this":Lrx/Observable$18;, "Lrx/Observable.18;"
    invoke-virtual {p0}, Lrx/Observable$18;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7198
    .local p0, "this":Lrx/Observable$18;, "Lrx/Observable.18;"
    iget-object v0, p0, Lrx/Observable$18;->this$0:Lrx/Observable;

    iget v1, p0, Lrx/Observable$18;->val$bufferSize:I

    iget-wide v2, p0, Lrx/Observable$18;->val$time:J

    iget-object v4, p0, Lrx/Observable$18;->val$unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/Observable$18;->val$scheduler:Lrx/Scheduler;

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->replay(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
