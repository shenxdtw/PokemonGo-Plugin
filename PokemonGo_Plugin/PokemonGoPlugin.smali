.class public Lccu/ant/pokemon_crackview/PokemonGoPlugin;
.super Ljava/lang/Object;
.source "PokemonGoPlugin.java"


# static fields
.field private static RUN_THREAD:Z

.field public static btnClick:Landroid/view/View$OnClickListener;

.field private static layout_main:Landroid/widget/LinearLayout;

.field private static mFloatView:Landroid/widget/Button;

.field private static mMoveDown:Landroid/widget/Button;

.field private static mMoveLeft:Landroid/widget/Button;

.field private static mMoveRight:Landroid/widget/Button;

.field private static mMoveUp:Landroid/widget/Button;

.field private static mSetting:Landroid/widget/Button;

.field private static mx:I

.field private static my:I

.field private static ocrThread:Ljava/lang/Thread;

.field private static range:I

.field private static vis:Z

.field private static x:F

.field private static y:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->vis:Z

    .line 31
    sput-boolean v1, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z

    .line 32
    sput v1, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I

    .line 191
    new-instance v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;

    invoke-direct {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;-><init>()V

    sput-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->btnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()F
    .registers 1

    .prologue
    .line 27
    sget v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->x:F

    return v0
.end method

.method static synthetic access$002(F)F
    .registers 1
    .param p0, "x0"    # F

    .prologue
    .line 27
    sput p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->x:F

    return p0
.end method

.method static synthetic access$100()F
    .registers 1

    .prologue
    .line 27
    sget v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->y:F

    return v0
.end method

.method static synthetic access$1000()Landroid/widget/Button;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveRight:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(F)F
    .registers 1
    .param p0, "x0"    # F

    .prologue
    .line 27
    sput p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->y:F

    return p0
.end method

.method static synthetic access$1100()Landroid/widget/Button;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mSetting:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z

    return p0
.end method

.method static synthetic access$1300()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->ocrThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 27
    sput-object p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->ocrThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$1400()I
    .registers 1

    .prologue
    .line 27
    sget v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 27
    sput p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I

    return p0
.end method

.method static synthetic access$1408()I
    .registers 2

    .prologue
    .line 27
    sget v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 27
    sget v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mx:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 27
    sput p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mx:I

    return p0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 27
    sget v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->my:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 27
    sput p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->my:I

    return p0
.end method

.method static synthetic access$400()Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500()Landroid/widget/Button;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mFloatView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->vis:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->vis:Z

    return p0
.end method

.method static synthetic access$700()Landroid/widget/Button;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveUp:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/Button;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveDown:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/Button;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveLeft:Landroid/widget/Button;

    return-object v0
.end method

.method public static createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;
    .registers 8
    .param p0, "m"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 177
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 178
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101030e

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 179
    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 181
    .local v2, "size":I
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 184
    sget-object v3, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->btnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 186
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-object v0
.end method

.method public static showTool(Landroid/app/Activity;)V
    .registers 16
    .param p0, "m"    # Landroid/app/Activity;

    .prologue
    const/16 v14, 0x64

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x2

    .line 41
    :try_start_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/pokemon.location"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_45

    .line 44
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    .local v3, "fout":Ljava/io/FileOutputStream;
    const-string v9, "45.417619\r\n"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 46
    const-string v9, "-75.701228"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_45} :catch_10e

    .line 51
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v7    # "path":Ljava/lang/String;
    :cond_45
    :goto_45
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-direct {v0, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "as":Landroid/widget/AbsoluteLayout;
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;

    .line 56
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v10, v11, v11, v14, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v4, "l1_content":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .local v5, "l2_content":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x101030e

    invoke-virtual {v9, v10, v6, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v12, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v8, v9

    .line 78
    .local v8, "size":I
    const-string v9, "\ud83d\udc31"

    invoke-static {p0, v9}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    sput-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mFloatView:Landroid/widget/Button;

    .line 79
    const-string v9, "\u2b06"

    invoke-static {p0, v9}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    sput-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveUp:Landroid/widget/Button;

    .line 80
    const-string v9, "\u2b07"

    invoke-static {p0, v9}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    sput-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveDown:Landroid/widget/Button;

    .line 81
    const-string v9, "\u2b05"

    invoke-static {p0, v9}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    sput-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveLeft:Landroid/widget/Button;

    .line 82
    const-string v9, "\u27a1"

    invoke-static {p0, v9}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    sput-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveRight:Landroid/widget/Button;

    .line 83
    const-string v9, "\u2721"

    invoke-static {p0, v9}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    sput-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mSetting:Landroid/widget/Button;

    .line 86
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mFloatView:Landroid/widget/Button;

    new-instance v10, Lccu/ant/pokemon_crackview/PokemonGoPlugin$1;

    invoke-direct {v10}, Lccu/ant/pokemon_crackview/PokemonGoPlugin$1;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mFloatView:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveUp:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mSetting:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveLeft:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveDown:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveRight:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    sget-object v9, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 171
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v9}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    return-void

    .line 49
    .end local v0    # "as":Landroid/widget/AbsoluteLayout;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "l1_content":Landroid/widget/LinearLayout;
    .end local v5    # "l2_content":Landroid/widget/LinearLayout;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    .end local v8    # "size":I
    :catch_10e
    move-exception v9

    goto/16 :goto_45
.end method

.method public static writePokeminTxt(I)V
    .registers 17
    .param p0, "direction"    # I

    .prologue
    .line 256
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/pokemon.location"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 259
    .local v3, "fin":Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v10, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 261
    .local v6, "latitude":D
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 262
    .local v8, "longitude":D
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4e

    .line 269
    packed-switch p0, :pswitch_data_154

    .line 299
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :goto_4d
    return-void

    .line 264
    :catch_4e
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_4d

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "latitude":D
    .restart local v8    # "longitude":D
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :pswitch_50
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    const-wide v14, 0x4062c00000000000L    # 150.0

    add-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 272
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    sub-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 292
    :goto_79
    :try_start_79
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 293
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/pokemon.location"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_99} :catch_14c

    .line 294
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_99
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 295
    .local v4, "fout":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 296
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 297
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ca} :catch_14f

    move-object v1, v2

    .line 298
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_4d

    .line 275
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :pswitch_cc
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    const-wide v14, 0x4062c00000000000L    # 150.0

    add-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    sub-double/2addr v6, v12

    .line 276
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    sub-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 277
    goto :goto_79

    .line 279
    :pswitch_f6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, -0x3fc7000000000000L    # -25.0

    add-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 280
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    const-wide v14, 0x4062c00000000000L    # 150.0

    sub-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 281
    goto/16 :goto_79

    .line 283
    :pswitch_121
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    sub-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 284
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    const-wide v14, 0x4062c00000000000L    # 150.0

    sub-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v11

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    sub-double/2addr v8, v12

    .line 285
    goto/16 :goto_79

    .line 298
    :catch_14c
    move-exception v11

    goto/16 :goto_4d

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_14f
    move-exception v11

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto/16 :goto_4d

    .line 269
    nop

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_50
        :pswitch_cc
        :pswitch_f6
        :pswitch_121
    .end packed-switch
.end method
