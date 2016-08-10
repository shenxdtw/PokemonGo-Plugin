.class public Lcom/upsight/android/unity/UpsightMarketingManager;
.super Ljava/lang/Object;
.source "UpsightMarketingManager.java"

# interfaces
.implements Lcom/upsight/android/unity/IUpsightExtensionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Upsight-UnityMarketing"


# instance fields
.field private mBillboardMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreparedBillboards:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mPreparedBillboards:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/unity/UpsightMarketingManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/unity/UpsightMarketingManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mPreparedBillboards:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/unity/UpsightMarketingManager;)Lcom/upsight/android/UpsightContext;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/unity/UpsightMarketingManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method


# virtual methods
.method public destroyBillboard(Ljava/lang/String;)V
    .registers 3
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    if-nez v0, :cond_5

    .line 95
    :goto_4
    return-void

    .line 87
    :cond_5
    new-instance v0, Lcom/upsight/android/unity/UpsightMarketingManager$2;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/unity/UpsightMarketingManager$2;-><init>(Lcom/upsight/android/unity/UpsightMarketingManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public init(Lcom/upsight/android/UpsightContext;)V
    .registers 2
    .param p1, "context"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 48
    return-void
.end method

.method public isContentReadyForBillboardWithScope(Ljava/lang/String;)Z
    .registers 5
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    if-nez v2, :cond_6

    .line 60
    :goto_5
    return v1

    .line 56
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2, p1}, Lcom/upsight/android/marketing/UpsightMarketingContentStore;->isContentReady(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 57
    :catch_d
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public onApplicationPaused()V
    .registers 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    if-nez v1, :cond_5

    .line 120
    :goto_4
    return-void

    .line 103
    :cond_5
    invoke-static {}, Lcom/upsight/android/unity/BillboardHandler;->getCurrentScope()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "currentScope":Ljava/lang/String;
    new-instance v1, Lcom/upsight/android/unity/UpsightMarketingManager$3;

    invoke-direct {v1, p0, v0}, Lcom/upsight/android/unity/UpsightMarketingManager$3;-><init>(Lcom/upsight/android/unity/UpsightMarketingManager;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public onApplicationResumed()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    if-nez v0, :cond_5

    .line 140
    :goto_4
    return-void

    .line 128
    :cond_5
    new-instance v0, Lcom/upsight/android/unity/UpsightMarketingManager$4;

    invoke-direct {v0, p0}, Lcom/upsight/android/unity/UpsightMarketingManager$4;-><init>(Lcom/upsight/android/unity/UpsightMarketingManager;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public prepareBillboard(Ljava/lang/String;)V
    .registers 3
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    if-nez v0, :cond_5

    .line 80
    :goto_4
    return-void

    .line 68
    :cond_5
    new-instance v0, Lcom/upsight/android/unity/UpsightMarketingManager$1;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/unity/UpsightMarketingManager$1;-><init>(Lcom/upsight/android/unity/UpsightMarketingManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method
