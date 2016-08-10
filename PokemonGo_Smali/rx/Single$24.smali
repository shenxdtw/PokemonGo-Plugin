.class Lrx/Single$24;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->doOnSuccess(Lrx/functions/Action1;)Lrx/Single;
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
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$onSuccess:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/functions/Action1;)V
    .registers 3

    .prologue
    .line 2294
    .local p0, "this":Lrx/Single$24;, "Lrx/Single.24;"
    iput-object p1, p0, Lrx/Single$24;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$24;->val$onSuccess:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 2297
    .local p0, "this":Lrx/Single$24;, "Lrx/Single.24;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2301
    .local p0, "this":Lrx/Single$24;, "Lrx/Single.24;"
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
    .line 2305
    .local p0, "this":Lrx/Single$24;, "Lrx/Single.24;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Single$24;->val$onSuccess:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 2306
    return-void
.end method
