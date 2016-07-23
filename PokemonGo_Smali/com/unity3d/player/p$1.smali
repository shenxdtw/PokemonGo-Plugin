.class final Lcom/unity3d/player/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/p;


# direct methods
.method constructor <init>(Lcom/unity3d/player/p;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/p$1;->a:Lcom/unity3d/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/q;->b:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/unity3d/player/q;->j:Lcom/unity3d/player/e;

    invoke-interface {v0, p0, p1}, Lcom/unity3d/player/e;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/p$1;->a:Lcom/unity3d/player/p;

    invoke-static {v0}, Lcom/unity3d/player/p;->a(Lcom/unity3d/player/p;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/unity3d/player/p$1;->a:Lcom/unity3d/player/p;

    invoke-static {v1}, Lcom/unity3d/player/p;->b(Lcom/unity3d/player/p;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_35

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_42

    invoke-static {v1, v0}, Lcom/unity3d/player/p$1;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_31
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_35
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3d

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3d
    invoke-static {v1, v0}, Lcom/unity3d/player/p$1;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method
