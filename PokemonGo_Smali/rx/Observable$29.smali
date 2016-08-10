.class Lrx/Observable$29;
.super Lrx/Subscriber;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
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
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;

.field final synthetic val$onNext:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 5

    .prologue
    .line 8660
    .local p0, "this":Lrx/Observable$29;, "Lrx/Observable.29;"
    iput-object p1, p0, Lrx/Observable$29;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$29;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Observable$29;->val$onError:Lrx/functions/Action1;

    iput-object p4, p0, Lrx/Observable$29;->val$onNext:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 2

    .prologue
    .line 8664
    .local p0, "this":Lrx/Observable$29;, "Lrx/Observable.29;"
    iget-object v0, p0, Lrx/Observable$29;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 8665
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 8669
    .local p0, "this":Lrx/Observable$29;, "Lrx/Observable.29;"
    iget-object v0, p0, Lrx/Observable$29;->val$onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 8670
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 8674
    .local p0, "this":Lrx/Observable$29;, "Lrx/Observable.29;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$29;->val$onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 8675
    return-void
.end method
