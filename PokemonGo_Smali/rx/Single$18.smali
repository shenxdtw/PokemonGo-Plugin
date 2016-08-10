.class Lrx/Single$18;
.super Lrx/Subscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$te:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 1783
    .local p0, "this":Lrx/Single$18;, "Lrx/Single.18;"
    iput-object p1, p0, Lrx/Single$18;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$18;->val$te:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 1788
    .local p0, "this":Lrx/Single$18;, "Lrx/Single.18;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1792
    .local p0, "this":Lrx/Single$18;, "Lrx/Single.18;"
    iget-object v0, p0, Lrx/Single$18;->val$te:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 1793
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
    .line 1797
    .local p0, "this":Lrx/Single$18;, "Lrx/Single.18;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Single$18;->val$te:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 1798
    return-void
.end method
