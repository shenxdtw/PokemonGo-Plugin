.class Lcom/voxelbusters/nativeplugins/utilities/MiscUtilities$1;
.super Ljava/lang/Object;
.source "MiscUtilities.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/utilities/MiscUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 6
    .param p1, "info1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "info2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 17
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->isSocialNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 18
    .local v0, "info1Required":Z
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->isSocialNetwork(Ljava/lang/String;)Z

    move-result v1

    .line 20
    .local v1, "info2Required":Z
    if-eqz v0, :cond_14

    if-nez v1, :cond_16

    :cond_14
    if-eqz v0, :cond_18

    .line 22
    :cond_16
    const/4 v2, -0x1

    .line 30
    :goto_17
    return v2

    .line 24
    :cond_18
    if-eqz v1, :cond_1c

    .line 26
    const/4 v2, 0x1

    goto :goto_17

    .line 30
    :cond_1c
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/voxelbusters/nativeplugins/utilities/MiscUtilities$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
