.class Lrx/Single$21$2;
.super Lrx/Subscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$21;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Single$21;

.field final synthetic val$main:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Single$21;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 1986
    .local p0, "this":Lrx/Single$21$2;, "Lrx/Single$21.2;"
    iput-object p1, p0, Lrx/Single$21$2;->this$1:Lrx/Single$21;

    iput-object p2, p0, Lrx/Single$21$2;->val$main:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 1990
    .local p0, "this":Lrx/Single$21$2;, "Lrx/Single$21.2;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/Single$21$2;->onError(Ljava/lang/Throwable;)V

    .line 1991
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1995
    .local p0, "this":Lrx/Single$21$2;, "Lrx/Single$21.2;"
    iget-object v0, p0, Lrx/Single$21$2;->val$main:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1996
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 2000
    .local p0, "this":Lrx/Single$21$2;, "Lrx/Single$21.2;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/Single$21$2;->onError(Ljava/lang/Throwable;)V

    .line 2001
    return-void
.end method
