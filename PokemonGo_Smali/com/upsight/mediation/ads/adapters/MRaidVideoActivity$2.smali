.class Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$2;
.super Ljava/lang/Object;
.source "MRaidVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 81
    iput-object p1, p0, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$2;->this$0:Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity$2;->this$0:Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    # getter for: Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;->access$100(Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    return-void
.end method
