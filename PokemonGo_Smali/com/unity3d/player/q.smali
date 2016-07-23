.class public final Lcom/unity3d/player/q;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Z

.field static final e:Z

.field static final f:Z

.field static final g:Z

.field static final h:Z

.field static final i:Lcom/unity3d/player/f;

.field static final j:Lcom/unity3d/player/e;

.field static final k:Lcom/unity3d/player/h;

.field static final l:Lcom/unity3d/player/g;

.field static final m:Lcom/unity3d/player/i;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_82

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/unity3d/player/q;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v0, v4, :cond_84

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/unity3d/player/q;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_86

    move v0, v1

    :goto_1c
    sput-boolean v0, Lcom/unity3d/player/q;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_88

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/unity3d/player/q;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_8a

    move v0, v1

    :goto_2e
    sput-boolean v0, Lcom/unity3d/player/q;->e:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_8c

    move v0, v1

    :goto_37
    sput-boolean v0, Lcom/unity3d/player/q;->f:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_8e

    move v0, v1

    :goto_40
    sput-boolean v0, Lcom/unity3d/player/q;->g:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_90

    :goto_48
    sput-boolean v1, Lcom/unity3d/player/q;->h:Z

    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    if-eqz v0, :cond_92

    new-instance v0, Lcom/unity3d/player/d;

    invoke-direct {v0}, Lcom/unity3d/player/d;-><init>()V

    :goto_53
    sput-object v0, Lcom/unity3d/player/q;->i:Lcom/unity3d/player/f;

    sget-boolean v0, Lcom/unity3d/player/q;->b:Z

    if-eqz v0, :cond_94

    new-instance v0, Lcom/unity3d/player/c;

    invoke-direct {v0}, Lcom/unity3d/player/c;-><init>()V

    :goto_5e
    sput-object v0, Lcom/unity3d/player/q;->j:Lcom/unity3d/player/e;

    sget-boolean v0, Lcom/unity3d/player/q;->d:Z

    if-eqz v0, :cond_96

    new-instance v0, Lcom/unity3d/player/l;

    invoke-direct {v0}, Lcom/unity3d/player/l;-><init>()V

    :goto_69
    sput-object v0, Lcom/unity3d/player/q;->k:Lcom/unity3d/player/h;

    sget-boolean v0, Lcom/unity3d/player/q;->e:Z

    if-eqz v0, :cond_98

    new-instance v0, Lcom/unity3d/player/k;

    invoke-direct {v0}, Lcom/unity3d/player/k;-><init>()V

    :goto_74
    sput-object v0, Lcom/unity3d/player/q;->l:Lcom/unity3d/player/g;

    sget-boolean v0, Lcom/unity3d/player/q;->h:Z

    if-eqz v0, :cond_7f

    new-instance v3, Lcom/unity3d/player/n;

    invoke-direct {v3}, Lcom/unity3d/player/n;-><init>()V

    :cond_7f
    sput-object v3, Lcom/unity3d/player/q;->m:Lcom/unity3d/player/i;

    return-void

    :cond_82
    move v0, v2

    goto :goto_a

    :cond_84
    move v0, v2

    goto :goto_13

    :cond_86
    move v0, v2

    goto :goto_1c

    :cond_88
    move v0, v2

    goto :goto_25

    :cond_8a
    move v0, v2

    goto :goto_2e

    :cond_8c
    move v0, v2

    goto :goto_37

    :cond_8e
    move v0, v2

    goto :goto_40

    :cond_90
    move v1, v2

    goto :goto_48

    :cond_92
    move-object v0, v3

    goto :goto_53

    :cond_94
    move-object v0, v3

    goto :goto_5e

    :cond_96
    move-object v0, v3

    goto :goto_69

    :cond_98
    move-object v0, v3

    goto :goto_74
.end method
