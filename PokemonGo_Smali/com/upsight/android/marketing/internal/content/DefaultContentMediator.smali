.class public final Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;
.super Lcom/upsight/android/marketing/UpsightContentMediator;
.source "DefaultContentMediator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/marketing/UpsightContentMediator",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_PROVIDER:Ljava/lang/String; = "upsight"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/upsight/android/marketing/UpsightContentMediator;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    .registers 11
    .param p2, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p3, "model"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/content/MarketingContentModel;>;"
    const/4 v1, 0x0

    .line 55
    .local v1, "modelObject":Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    :try_start_1
    iget-object v2, p2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mGson:Lcom/google/gson/Gson;

    invoke-static {p3, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->from(Lcom/google/gson/JsonElement;Lcom/google/gson/Gson;)Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 60
    :goto_7
    return-object v1

    .line 56
    :catch_8
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Upsight"

    const-string v4, "Failed to parse content model"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public bridge synthetic buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;->buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    move-result-object v0

    return-object v0
.end method

.method public buildContentView(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)Landroid/view/View;
    .registers 9
    .param p2, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/content/MarketingContentModel;>;"
    iget-object v3, p2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/upsight/android/marketing/R$layout;->upsight_marketing_content_view:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "contentView":Landroid/view/View;
    sget v3, Lcom/upsight/android/marketing/R$id;->upsight_marketing_content_view_close_button:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, "closeButton":Landroid/widget/ImageView;
    new-instance v3, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$1;

    invoke-direct {v3, p0, p1}, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$1;-><init>(Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v3, Lcom/upsight/android/marketing/R$id;->upsight_marketing_content_view_web_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 80
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    iget-object v3, p2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentTemplateWebViewClientFactory:Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;

    invoke-virtual {v3, p1}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->create(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    invoke-virtual {v3}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getTemplateUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    return-object v1
.end method

.method public displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
    .registers 7
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "fragment"    # Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;",
            "Landroid/app/FragmentManager;",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/content/MarketingContentModel;>;"
    const/4 v2, -0x1

    .line 91
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p3}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->getContentViewContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v2, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;

    invoke-direct {v2, p0, p1}, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator$2;-><init>(Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    invoke-virtual {p3, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->setBackPressHandler(Lcom/upsight/android/marketing/internal/billboard/BillboardFragment$BackPressHandler;)V

    .line 108
    invoke-virtual {p3}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_23

    .line 109
    const/4 v2, 0x0

    invoke-virtual {p3, p2, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 113
    :cond_23
    const-string v2, "content_displayed"

    invoke-virtual {p1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public getContentProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const-string v0, "upsight"

    return-object v0
.end method

.method public getDimensions(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/content/MarketingContentModel;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v0, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    invoke-virtual {v2}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getDialogLayouts()Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;

    move-result-object v1

    .line 139
    .local v1, "layouts":Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;
    if-eqz v1, :cond_55

    .line 141
    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    if-lez v2, :cond_33

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    if-lez v2, :cond_33

    .line 142
    new-instance v2, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;

    sget-object v3, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Portrait:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    iget-object v4, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v4, v4, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    iget-object v5, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v5, v5, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    invoke-direct {v2, v3, v4, v5}, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;-><init>(Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;II)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_33
    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    if-eqz v2, :cond_55

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    if-lez v2, :cond_55

    iget-object v2, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v2, v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    if-lez v2, :cond_55

    .line 147
    new-instance v2, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;

    sget-object v3, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Landscape:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    iget-object v4, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v4, v4, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->w:I

    iget-object v5, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;->landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;

    iget v5, v5, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;->h:I

    invoke-direct {v2, v3, v4, v5}, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;-><init>(Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;II)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_55
    return-object v0
.end method

.method public getPresentationStyle(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;)",
            "Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/content/MarketingContentModel;>;"
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getPresentationStyle()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "transition":Ljava/lang/String;
    const-string v1, "dialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 127
    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Dialog:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 132
    :goto_14
    return-object v1

    .line 128
    :cond_15
    const-string v1, "fullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 129
    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Fullscreen:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    goto :goto_14

    .line 132
    :cond_20
    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->None:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    goto :goto_14
.end method

.method public hideContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
    .registers 5
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "fragment"    # Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;",
            "Landroid/app/FragmentManager;",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/content/MarketingContentModel;>;"
    invoke-virtual {p3}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->getContentViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 121
    return-void
.end method
