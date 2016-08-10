.class Lrx/Completable$17;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onAfterComplete:Lrx/functions/Action0;

.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;

.field final synthetic val$onSubscribe:Lrx/functions/Action1;

.field final synthetic val$onUnsubscribe:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .registers 7

    .prologue
    .line 1301
    iput-object p1, p0, Lrx/Completable$17;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$17;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$17;->val$onAfterComplete:Lrx/functions/Action0;

    iput-object p4, p0, Lrx/Completable$17;->val$onError:Lrx/functions/Action1;

    iput-object p5, p0, Lrx/Completable$17;->val$onSubscribe:Lrx/functions/Action1;

    iput-object p6, p0, Lrx/Completable$17;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1301
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$17;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 1304
    iget-object v0, p0, Lrx/Completable$17;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$17$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$17$1;-><init>(Lrx/Completable$17;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1361
    return-void
.end method
