.class public final Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerMarketingComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

.field private billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

.field private contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

.field private webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/WebViewModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    return-object v0
.end method


# virtual methods
.method public baseMarketingModule(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .registers 3
    .param p1, "baseMarketingModule"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .prologue
    .line 228
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .line 229
    return-object p0
.end method

.method public billboardModule(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .registers 3
    .param p1, "billboardModule"    # Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .prologue
    .line 213
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .line 214
    return-object p0
.end method

.method public build()Lcom/upsight/android/marketing/internal/MarketingComponent;
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    if-nez v0, :cond_23

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .line 189
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_23
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    if-nez v0, :cond_2e

    .line 192
    new-instance v0, Lcom/upsight/android/marketing/internal/content/ContentModule;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/ContentModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    .line 194
    :cond_2e
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    if-nez v0, :cond_39

    .line 195
    new-instance v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .line 197
    :cond_39
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    if-nez v0, :cond_44

    .line 198
    new-instance v0, Lcom/upsight/android/marketing/internal/content/WebViewModule;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/WebViewModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    .line 200
    :cond_44
    new-instance v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;-><init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V

    return-object v0
.end method

.method public contentModule(Lcom/upsight/android/marketing/internal/content/ContentModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .registers 3
    .param p1, "contentModule"    # Lcom/upsight/android/marketing/internal/content/ContentModule;

    .prologue
    .line 218
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/ContentModule;

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    .line 219
    return-object p0
.end method

.method public marketingModule(Lcom/upsight/android/marketing/internal/MarketingModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .registers 2
    .param p1, "marketingModule"    # Lcom/upsight/android/marketing/internal/MarketingModule;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-object p0
.end method

.method public webViewModule(Lcom/upsight/android/marketing/internal/content/WebViewModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .registers 3
    .param p1, "webViewModule"    # Lcom/upsight/android/marketing/internal/content/WebViewModule;

    .prologue
    .line 223
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/WebViewModule;

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    .line 224
    return-object p0
.end method
