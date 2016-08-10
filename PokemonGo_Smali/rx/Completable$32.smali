.class Lrx/Completable$32;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->toSingleDefault(Ljava/lang/Object;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$completionValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/Completable;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 2204
    iput-object p1, p0, Lrx/Completable$32;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$32;->val$completionValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2207
    iget-object v0, p0, Lrx/Completable$32;->val$completionValue:Ljava/lang/Object;

    return-object v0
.end method
