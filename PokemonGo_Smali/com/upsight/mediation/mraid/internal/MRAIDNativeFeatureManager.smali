.class public Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;
.super Ljava/lang/Object;
.source "MRAIDNativeFeatureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDNativeFeatureManager"


# instance fields
.field private context:Landroid/content/Context;

.field private supportedNativeFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "supportedNativeFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public isCalendarSupported()Z
    .registers 5

    .prologue
    .line 23
    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "calendar"

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_34

    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_34

    const/4 v0, 0x1

    .line 27
    .local v0, "retval":Z
    :goto_1b
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCalendarSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return v0

    .line 26
    .end local v0    # "retval":Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isInlineVideoSupported()Z
    .registers 5

    .prologue
    .line 33
    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "inlineVideo"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 34
    .local v0, "retval":Z
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInlineVideoSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return v0
.end method

.method public isSmsSupported()Z
    .registers 5

    .prologue
    .line 39
    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "sms"

    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2e

    const/4 v0, 0x1

    .line 42
    .local v0, "retval":Z
    :goto_15
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return v0

    .line 41
    .end local v0    # "retval":Z
    :cond_2e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isStorePictureSupported()Z
    .registers 5

    .prologue
    .line 47
    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "storePicture"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    .local v0, "retval":Z
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStorePictureSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v0
.end method

.method public isTelSupported()Z
    .registers 5

    .prologue
    .line 53
    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "tel"

    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v2, "android.permission.CALL_PHONE"

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2e

    const/4 v0, 0x1

    .line 56
    .local v0, "retval":Z
    :goto_15
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTelSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return v0

    .line 55
    .end local v0    # "retval":Z
    :cond_2e
    const/4 v0, 0x0

    goto :goto_15
.end method
