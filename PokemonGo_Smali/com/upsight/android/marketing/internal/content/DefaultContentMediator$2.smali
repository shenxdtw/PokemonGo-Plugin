.class Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;
.super Ljava/lang/Object;
.source "DefaultContentMediator.java"

# interfaces
.implements Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$BackPressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;->displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsDismissed:Z

.field final synthetic this$0:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

.field final synthetic val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;->this$0:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;->mIsDismissed:Z

    return-void
.end method


# virtual methods
.method public onBackPress()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;->mIsDismissed:Z

    if-nez v0, :cond_e

    .line 101
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    const-string v1, "content_dismissed"

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 102
    iput-boolean v2, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;->mIsDismissed:Z

    .line 104
    :cond_e
    return v2
.end method
