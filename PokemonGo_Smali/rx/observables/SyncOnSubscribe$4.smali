.class final Lrx/observables/SyncOnSubscribe$4;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/SyncOnSubscribe;->createStateless(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Void;",
        "Lrx/Observer",
        "<-TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/functions/Action1;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$4;->val$next:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Observer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$4;->call(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;
    .registers 4
    .param p1, "state"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lrx/Observer",
            "<-TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "subscriber":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$4;->val$next:Lrx/functions/Action1;

    invoke-interface {v0, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method
