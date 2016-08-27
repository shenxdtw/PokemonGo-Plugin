.class Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;
.super Ljava/lang/Object;
.source "BillboardDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

.field final synthetic val$buttonTrigger:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;->this$0:Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

    iput-object p2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;->val$buttonTrigger:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;->this$0:Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;->val$buttonTrigger:Ljava/lang/String;

    # invokes: Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->executeActions(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->access$000(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method
