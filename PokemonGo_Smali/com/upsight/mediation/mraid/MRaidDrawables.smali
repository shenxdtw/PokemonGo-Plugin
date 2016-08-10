.class public Lcom/upsight/mediation/mraid/MRaidDrawables;
.super Ljava/lang/Object;
.source "MRaidDrawables.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRaidDrawables"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableForImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "fallbackColor"    # I

    .prologue
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 23
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v2, :cond_17

    .line 24
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 26
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_4e

    .line 38
    :goto_16
    return-object v0

    .line 30
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 31
    .local v1, "id":I
    if-eqz v1, :cond_30

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_16

    .line 34
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_30
    const-string v3, "MRaidDrawables"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load button image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_16

    .line 27
    .end local v1    # "id":I
    :catch_4e
    move-exception v3

    goto :goto_16
.end method
