.class public Lcom/nianticproject/holoholo/sfida/sfidaplugin/DataStore;
.super Ljava/lang/Object;
.source "DataStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBluetoothAddress(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 12
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    .local v0, "preferences":Landroid/content/SharedPreferences;
    return-void
.end method
