.class Lrx/Observable$20;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(Lrx/functions/Func1;ILrx/Scheduler;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<TT;>;",
        "Lrx/Observable",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$selector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)V
    .registers 4

    .prologue
    .line 7238
    .local p0, "this":Lrx/Observable$20;, "Lrx/Observable.20;"
    iput-object p1, p0, Lrx/Observable$20;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$20;->val$selector:Lrx/functions/Func1;

    iput-object p3, p0, Lrx/Observable$20;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7238
    .local p0, "this":Lrx/Observable$20;, "Lrx/Observable.20;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Observable$20;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7241
    .local p0, "this":Lrx/Observable$20;, "Lrx/Observable.20;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lrx/Observable$20;->val$selector:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    iget-object v1, p0, Lrx/Observable$20;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
