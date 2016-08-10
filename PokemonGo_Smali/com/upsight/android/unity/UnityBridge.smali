.class public Lcom/upsight/android/unity/UnityBridge;
.super Ljava/lang/Object;
.source "UnityBridge.java"


# static fields
.field protected static final MANAGER_NAME:Ljava/lang/String; = "UpsightManager"

.field protected static final TAG:Ljava/lang/String; = "Upsight"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnitySendMessage(Ljava/lang/String;)V
    .registers 3
    .param p0, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    const-string v0, "UpsightManager"

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parameter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    const-string v0, "UpsightManager"

    if-nez p1, :cond_6

    const-string p1, ""

    .end local p1    # "parameter":Ljava/lang/String;
    :cond_6
    invoke-static {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "r"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-static {}, Lcom/upsight/android/unity/UnityBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 37
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_e

    .line 38
    new-instance v1, Lcom/upsight/android/unity/UnityBridge$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/unity/UnityBridge$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    :cond_e
    return-void
.end method
