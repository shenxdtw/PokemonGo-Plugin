.class Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;
.super Ljava/lang/Object;
.source "MRAIDInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDInterstitial;->mraidViewLoaded(Lcom/upsight/mediation/mraid/MRAIDView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDInterstitial;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;->this$0:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;->this$0:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    iget-boolean v0, v0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->isReady:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;->this$0:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->access$000(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 71
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;->this$0:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->access$000(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;->this$0:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    invoke-interface {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;->mraidInterstitialLoaded(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 75
    :goto_19
    return-void

    .line 73
    :cond_1a
    const-string v0, "MRAIDInterstitial"

    const-string v1, "No longer ready"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
