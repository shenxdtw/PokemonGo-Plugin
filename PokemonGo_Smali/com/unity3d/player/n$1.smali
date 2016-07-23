.class final Lcom/unity3d/player/n$1;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/n;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/FragmentManager;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/unity3d/player/n;


# direct methods
.method constructor <init>(Lcom/unity3d/player/n;Ljava/util/List;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/unity3d/player/n$1;->d:Lcom/unity3d/player/n;

    iput-object p2, p0, Lcom/unity3d/player/n$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/unity3d/player/n$1;->b:Landroid/app/FragmentManager;

    iput-object p4, p0, Lcom/unity3d/player/n$1;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    const/16 v0, 0x3e09

    if-eq p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_2f

    array-length v1, p3

    if-ge v0, v1, :cond_2f

    const/4 v2, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, p3, v0

    if-nez v1, :cond_2c

    const-string v1, " granted"

    :goto_1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2c
    const-string v1, " denied"

    goto :goto_1e

    :cond_2f
    iget-object v0, p0, Lcom/unity3d/player/n$1;->b:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/unity3d/player/n$1;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4
.end method

.method public final onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/unity3d/player/n$1;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x3e09

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/player/n$1;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
