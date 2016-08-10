.class Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;
.super Lrx/SingleSubscriber;
.source "SingleOnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->call(Lrx/SingleSubscriber;)V
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
.field final synthetic this$0:Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

.field final synthetic val$subscriber:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->this$0:Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
