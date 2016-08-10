.class Lrx/Single$20$2;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$20;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Single$20;

.field final synthetic val$main:Lrx/Subscriber;

.field final synthetic val$serial:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Single$20;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 1910
    .local p0, "this":Lrx/Single$20$2;, "Lrx/Single$20.2;"
    iput-object p1, p0, Lrx/Single$20$2;->this$1:Lrx/Single$20;

    iput-object p2, p0, Lrx/Single$20$2;->val$main:Lrx/Subscriber;

    iput-object p3, p0, Lrx/Single$20$2;->val$serial:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 1913
    .local p0, "this":Lrx/Single$20$2;, "Lrx/Single$20.2;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/Single$20$2;->onError(Ljava/lang/Throwable;)V

    .line 1914
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1918
    .local p0, "this":Lrx/Single$20$2;, "Lrx/Single$20.2;"
    iget-object v0, p0, Lrx/Single$20$2;->val$main:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1919
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1923
    .local p0, "this":Lrx/Single$20$2;, "Lrx/Single$20.2;"
    iget-object v0, p0, Lrx/Single$20$2;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 1924
    return-void
.end method
