.class Lcom/upsight/mediation/mraid/MRAIDView$10;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$10;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$10;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->close()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2500(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 941
    return-void
.end method
