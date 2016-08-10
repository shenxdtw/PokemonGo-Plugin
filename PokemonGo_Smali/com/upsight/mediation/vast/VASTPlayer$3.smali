.class Lcom/upsight/mediation/vast/VASTPlayer$3;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/VASTPlayer;->sendError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/VASTPlayer;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/VASTPlayer;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/upsight/mediation/vast/VASTPlayer$3;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    iput p2, p0, Lcom/upsight/mediation/vast/VASTPlayer$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer$3;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    iget v1, p0, Lcom/upsight/mediation/vast/VASTPlayer$3;->val$error:I

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 222
    return-void
.end method
