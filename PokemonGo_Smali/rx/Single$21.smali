.class Lrx/Single$21;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->takeUntil(Lrx/Observable;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$other:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/Observable;)V
    .registers 3

    .prologue
    .line 1958
    .local p0, "this":Lrx/Single$21;, "Lrx/Single.21;"
    iput-object p1, p0, Lrx/Single$21;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$21;->val$other:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1958
    .local p0, "this":Lrx/Single$21;, "Lrx/Single.21;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$21;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/Single$21;, "Lrx/Single.21;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v3, 0x0

    .line 1961
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1, v3}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 1963
    .local v1, "serial":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v0, Lrx/Single$21$1;

    invoke-direct {v0, p0, v1, v3, v1}, Lrx/Single$21$1;-><init>(Lrx/Single$21;Lrx/Subscriber;ZLrx/Subscriber;)V

    .line 1986
    .local v0, "main":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lrx/Single$21$2;

    invoke-direct {v2, p0, v0}, Lrx/Single$21$2;-><init>(Lrx/Single$21;Lrx/Subscriber;)V

    .line 2004
    .local v2, "so":Lrx/Subscriber;, "Lrx/Subscriber<TE;>;"
    invoke-virtual {v1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 2005
    invoke-virtual {v1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 2007
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 2009
    iget-object v3, p0, Lrx/Single$21;->val$other:Lrx/Observable;

    invoke-virtual {v3, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 2011
    return-object v0
.end method
