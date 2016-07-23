.class final Lcom/unity3d/player/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/Camera;

.field b:Landroid/hardware/Camera$Parameters;

.field c:Landroid/hardware/Camera$Size;

.field d:I

.field e:[I

.field f:Lcom/unity3d/player/b;

.field private final g:[Ljava/lang/Object;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    iput p1, p0, Lcom/unity3d/player/a;->h:I

    const/16 v0, 0x280

    invoke-static {p2, v0}, Lcom/unity3d/player/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->i:I

    const/16 v0, 0x1e0

    invoke-static {p3, v0}, Lcom/unity3d/player/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->j:I

    const/16 v0, 0x18

    invoke-static {p4, v0}, Lcom/unity3d/player/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->k:I

    return-void
.end method

.method private static final a(II)I
    .registers 2

    if-eqz p0, :cond_3

    :goto_2
    return p0

    :cond_3
    move p0, p1

    goto :goto_2
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "none"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "continuous-video"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/a;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lcom/unity3d/player/a$a;)V
    .registers 7

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/unity3d/player/a;->h:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/unity3d/player/a;->f()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    invoke-direct {p0}, Lcom/unity3d/player/a;->e()[I

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->e:[I

    invoke-direct {p0}, Lcom/unity3d/player/a;->d()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->d:I

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/unity3d/player/a;->a(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/unity3d/player/a;->e:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/unity3d/player/a;->e:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v0, Lcom/unity3d/player/a$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/a$1;-><init>(Lcom/unity3d/player/a;Lcom/unity3d/player/a$a;)V

    iget-object v2, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/unity3d/player/a;->d:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    add-int/lit16 v2, v2, 0x1000

    iget-object v3, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    new-array v4, v2, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v3, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v2, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    monitor-exit v1

    return-void

    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw v0
.end method

.method private final d()I
    .registers 3

    const/16 v1, 0x11

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    return v0
.end method

.method private final e()[I
    .registers 15

    iget v0, p0, Lcom/unity3d/player/a;->k:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v6, v0

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/unity3d/player/a;->k:I

    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/unity3d/player/a;->k:I

    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v1, v2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-double v4, v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/4 v9, 0x1

    aget v9, v0, v9

    int-to-double v10, v9

    div-double v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v4, v10

    cmpg-double v9, v4, v2

    if-gez v9, :cond_60

    move-object v2, v0

    move-wide v0, v4

    :goto_5b
    move-wide v12, v0

    move-object v1, v2

    move-wide v2, v12

    goto :goto_2c

    :cond_5f
    return-object v1

    :cond_60
    move-wide v12, v2

    move-object v2, v1

    move-wide v0, v12

    goto :goto_5b
.end method

.method private final f()Landroid/hardware/Camera$Size;
    .registers 19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/unity3d/player/a;->i:I

    int-to-double v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/unity3d/player/a;->j:I

    int-to-double v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    div-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v13, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v13

    div-double v14, v10, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    add-double/2addr v4, v14

    cmpg-double v13, v4, v6

    if-gez v13, :cond_50

    move-wide/from16 v16, v4

    move-object v4, v2

    move-wide/from16 v2, v16

    :goto_4c
    move-wide v6, v2

    move-object v3, v4

    goto :goto_1c

    :cond_4f
    return-object v3

    :cond_50
    move-object v4, v3

    move-wide v2, v6

    goto :goto_4c
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/unity3d/player/a;->h:I

    return v0
.end method

.method public final a(Lcom/unity3d/player/a$a;)V
    .registers 5

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/unity3d/player/a;->b(Lcom/unity3d/player/a$a;)V

    :cond_a
    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/unity3d/player/q;->i:Lcom/unity3d/player/f;

    iget-object v2, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-interface {v0, v2}, Lcom/unity3d/player/f;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    monitor-exit v1

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/b;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/unity3d/player/a$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$2;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/b;

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/b;

    invoke-virtual {v0}, Lcom/unity3d/player/b;->a()V

    :cond_2f
    monitor-exit v1

    goto :goto_1e

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public final a([B)V
    .registers 4

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final b()Landroid/hardware/Camera$Size;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public final c()V
    .registers 4

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    :cond_1a
    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/b;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/b;

    invoke-virtual {v0}, Lcom/unity3d/player/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/b;

    :cond_26
    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method
