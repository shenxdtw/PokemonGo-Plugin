.class Lrx/Completable$23;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$predicate:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 1632
    iput-object p1, p0, Lrx/Completable$23;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$23;->val$predicate:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1632
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$23;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 1635
    iget-object v0, p0, Lrx/Completable$23;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$23$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$23$1;-><init>(Lrx/Completable$23;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1666
    return-void
.end method
