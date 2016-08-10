.class Lrx/Completable$21;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->lift(Lrx/Completable$CompletableOperator;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onLift:Lrx/Completable$CompletableOperator;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Completable$CompletableOperator;)V
    .registers 3

    .prologue
    .line 1524
    iput-object p1, p0, Lrx/Completable$21;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$21;->val$onLift:Lrx/Completable$CompletableOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1524
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$21;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 1530
    :try_start_0
    iget-object v2, p0, Lrx/Completable$21;->val$onLift:Lrx/Completable$CompletableOperator;

    invoke-interface {v2, p1}, Lrx/Completable$CompletableOperator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$CompletableSubscriber;

    .line 1532
    .local v1, "sw":Lrx/Completable$CompletableSubscriber;
    iget-object v2, p0, Lrx/Completable$21;->this$0:Lrx/Completable;

    invoke-virtual {v2, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_10

    .line 1538
    return-void

    .line 1533
    .end local v1    # "sw":Lrx/Completable$CompletableSubscriber;
    :catch_e
    move-exception v0

    .line 1534
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 1535
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_10
    move-exception v0

    .line 1536
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method
