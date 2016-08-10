.class Lrx/Observable$5;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->collect(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$collector:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action2;)V
    .registers 3

    .prologue
    .line 4019
    .local p0, "this":Lrx/Observable$5;, "Lrx/Observable.5;"
    iput-object p1, p0, Lrx/Observable$5;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$5;->val$collector:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 4023
    .local p0, "this":Lrx/Observable$5;, "Lrx/Observable.5;"
    .local p1, "state":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$5;->val$collector:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4024
    return-object p1
.end method
