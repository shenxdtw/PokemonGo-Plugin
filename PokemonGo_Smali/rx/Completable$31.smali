.class Lrx/Completable$31;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->toSingle(Lrx/functions/Func0;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$completionValueFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Func0;)V
    .registers 3

    .prologue
    .line 2157
    iput-object p1, p0, Lrx/Completable$31;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$31;->val$completionValueFunc0:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2157
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$31;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2160
    .local p1, "s":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lrx/Completable$31;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$31$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$31$1;-><init>(Lrx/Completable$31;Lrx/SingleSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 2191
    return-void
.end method
