.class Lrx/internal/util/ScalarSynchronousSingle$2$1;
.super Lrx/Subscriber;
.source "ScalarSynchronousSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousSingle$2;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/util/ScalarSynchronousSingle$2;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousSingle$2;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->this$1:Lrx/internal/util/ScalarSynchronousSingle$2;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    .local p1, "r":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 149
    return-void
.end method
