.class Lrx/observables/AsyncOnSubscribe$6;
.super Lrx/Subscriber;
.source "AsyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->call(Lrx/Subscriber;)V
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
.field final synthetic this$0:Lrx/observables/AsyncOnSubscribe;

.field final synthetic val$actualSubscriber:Lrx/Subscriber;

.field final synthetic val$outerProducer:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;


# direct methods
.method constructor <init>(Lrx/observables/AsyncOnSubscribe;Lrx/Subscriber;Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;)V
    .registers 4

    .prologue
    .line 315
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$6;->this$0:Lrx/observables/AsyncOnSubscribe;

    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    iput-object p3, p0, Lrx/observables/AsyncOnSubscribe$6;->val$outerProducer:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 328
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 329
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 323
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 324
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 333
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$outerProducer:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->setConcatProducer(Lrx/Producer;)V

    .line 334
    return-void
.end method
