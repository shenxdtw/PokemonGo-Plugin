.class Lrx/internal/operators/SingleOnSubscribeUsing$1;
.super Lrx/SingleSubscriber;
.source "SingleOnSubscribeUsing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOnSubscribeUsing;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/SingleOnSubscribeUsing;

.field final synthetic val$child:Lrx/SingleSubscriber;

.field final synthetic val$resource:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOnSubscribeUsing;Ljava/lang/Object;Lrx/SingleSubscriber;)V
    .registers 4

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeUsing$1;, "Lrx/internal/operators/SingleOnSubscribeUsing.1;"
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->this$0:Lrx/internal/operators/SingleOnSubscribeUsing;

    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$resource:Ljava/lang/Object;

    iput-object p3, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeUsing$1;, "Lrx/internal/operators/SingleOnSubscribeUsing.1;"
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->this$0:Lrx/internal/operators/SingleOnSubscribeUsing;

    iget-object v1, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$child:Lrx/SingleSubscriber;

    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$resource:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lrx/internal/operators/SingleOnSubscribeUsing;->handleSubscriptionTimeError(Lrx/SingleSubscriber;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeUsing$1;, "Lrx/internal/operators/SingleOnSubscribeUsing.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->this$0:Lrx/internal/operators/SingleOnSubscribeUsing;

    iget-boolean v2, v2, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeEagerly:Z

    if-eqz v2, :cond_f

    .line 62
    :try_start_6
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->this$0:Lrx/internal/operators/SingleOnSubscribeUsing;

    iget-object v2, v2, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeAction:Lrx/functions/Action1;

    iget-object v3, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_24

    .line 71
    :cond_f
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v2, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 73
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->this$0:Lrx/internal/operators/SingleOnSubscribeUsing;

    iget-boolean v2, v2, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeEagerly:Z

    if-nez v2, :cond_23

    .line 75
    :try_start_1a
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->this$0:Lrx/internal/operators/SingleOnSubscribeUsing;

    iget-object v2, v2, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeAction:Lrx/functions/Action1;

    iget-object v3, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_23} :catch_2e

    .line 81
    :cond_23
    :goto_23
    return-void

    .line 63
    :catch_24
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v2, v0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 76
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2e
    move-exception v1

    .line 77
    .local v1, "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 78
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_23
.end method
