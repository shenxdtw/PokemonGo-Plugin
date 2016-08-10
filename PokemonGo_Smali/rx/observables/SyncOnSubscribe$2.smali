.class final Lrx/observables/SyncOnSubscribe$2;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/SyncOnSubscribe;->createSingleState(Lrx/functions/Func0;Lrx/functions/Action2;Lrx/functions/Action1;)Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TS;",
        "Lrx/Observer",
        "<-TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/functions/Action2;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$2;->val$next:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p2, Lrx/Observer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$2;->call(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "subscriber":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$2;->val$next:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    return-object p1
.end method
