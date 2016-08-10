.class Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$1;
.super Ljava/lang/Object;
.source "DefaultContentMediator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;->buildContentView(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

.field final synthetic val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    const-string v1, "content_dismissed"

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 75
    return-void
.end method
