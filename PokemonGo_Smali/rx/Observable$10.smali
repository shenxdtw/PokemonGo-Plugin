.class Lrx/Observable$10;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;
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

.field final synthetic val$onError:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action1;)V
    .registers 3

    .prologue
    .line 4775
    .local p0, "this":Lrx/Observable$10;, "Lrx/Observable.10;"
    iput-object p1, p0, Lrx/Observable$10;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$10;->val$onError:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 1

    .prologue
    .line 4778
    .local p0, "this":Lrx/Observable$10;, "Lrx/Observable.10;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 4782
    .local p0, "this":Lrx/Observable$10;, "Lrx/Observable.10;"
    iget-object v0, p0, Lrx/Observable$10;->val$onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 4783
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
    .line 4787
    .local p0, "this":Lrx/Observable$10;, "Lrx/Observable.10;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    return-void
.end method
