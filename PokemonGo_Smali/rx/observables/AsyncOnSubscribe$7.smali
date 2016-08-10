.class Lrx/observables/AsyncOnSubscribe$7;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<TT;>;",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/AsyncOnSubscribe;


# direct methods
.method constructor <init>(Lrx/observables/AsyncOnSubscribe;)V
    .registers 2

    .prologue
    .line 337
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$7;, "Lrx/observables/AsyncOnSubscribe.7;"
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$7;->this$0:Lrx/observables/AsyncOnSubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 337
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$7;, "Lrx/observables/AsyncOnSubscribe.7;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$7;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$7;, "Lrx/observables/AsyncOnSubscribe.7;"
    .local p1, "v":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p1}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
