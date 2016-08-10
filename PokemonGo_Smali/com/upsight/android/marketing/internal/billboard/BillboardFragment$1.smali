.class Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$1;
.super Ljava/lang/Object;
.source "BillboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$1;->this$0:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v2, 0x4

    if-ne p2, v2, :cond_19

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_19

    .line 138
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$1;->this$0:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    # getter for: Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->mBackPressHandler:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$BackPressHandler;
    invoke-static {v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->access$000(Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$BackPressHandler;

    move-result-object v0

    .line 139
    .local v0, "handler":Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$BackPressHandler;
    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$BackPressHandler;->onBackPress()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    .line 141
    .end local v0    # "handler":Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$BackPressHandler;
    :cond_19
    return v1
.end method
