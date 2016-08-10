.class Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$1;
.super Ljava/lang/Object;
.source "MRaidVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;->addCloseRegion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$1;->this$0:Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "rti"

    iget-object v2, p0, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$1;->this$0:Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    # getter for: Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;->shouldReturnToInterstitial:Z
    invoke-static {v2}, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;->access$000(Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$1;->this$0:Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$1;->this$0:Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    invoke-virtual {v1}, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;->finish()V

    .line 77
    return-void
.end method
