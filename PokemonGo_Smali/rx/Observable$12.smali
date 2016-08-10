.class Lrx/Observable$12;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$onTerminate:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 4894
    .local p0, "this":Lrx/Observable$12;, "Lrx/Observable.12;"
    iput-object p1, p0, Lrx/Observable$12;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$12;->val$onTerminate:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 2

    .prologue
    .line 4897
    .local p0, "this":Lrx/Observable$12;, "Lrx/Observable.12;"
    iget-object v0, p0, Lrx/Observable$12;->val$onTerminate:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 4898
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 4902
    .local p0, "this":Lrx/Observable$12;, "Lrx/Observable.12;"
    iget-object v0, p0, Lrx/Observable$12;->val$onTerminate:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 4903
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 4907
    .local p0, "this":Lrx/Observable$12;, "Lrx/Observable.12;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    return-void
.end method
