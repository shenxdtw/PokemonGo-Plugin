.class final Lrx/observables/AsyncOnSubscribe$2;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->createSingleState(Lrx/functions/Func0;Lrx/functions/Action3;Lrx/functions/Action1;)Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func3",
        "<TS;",
        "Ljava/lang/Long;",
        "Lrx/Observer",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action3;


# direct methods
.method constructor <init>(Lrx/functions/Action3;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$2;->val$next:Lrx/functions/Action3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;
    .registers 5
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/Long;",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)TS;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p3, "subscriber":Lrx/Observer;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$2;->val$next:Lrx/functions/Action3;

    invoke-interface {v0, p1, p2, p3}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Observer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/observables/AsyncOnSubscribe$2;->call(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
