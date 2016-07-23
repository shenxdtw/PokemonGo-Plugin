.class abstract Lcom/unity3d/player/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:I

.field private c:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/t;

    invoke-virtual {v0}, Lcom/unity3d/player/t;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/unity3d/player/b;->a:Landroid/app/Activity;

    const/4 v0, 0x3

    iput v0, p0, Lcom/unity3d/player/b;->b:I

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/b;)Landroid/view/SurfaceView;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/b;->c:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic a(Lcom/unity3d/player/b;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/b;->c:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic b(Lcom/unity3d/player/b;)I
    .registers 2

    iget v0, p0, Lcom/unity3d/player/b;->b:I

    return v0
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/unity3d/player/b$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/b$1;-><init>(Lcom/unity3d/player/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/unity3d/player/b$2;

    invoke-direct {v1, p0}, Lcom/unity3d/player/b$2;-><init>(Lcom/unity3d/player/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method
