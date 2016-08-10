.class public Lcom/upsight/mediation/vast/util/DefaultMediaPicker;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Lcom/upsight/mediation/vast/processor/VASTMediaPicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMediaPicker"

.field private static final maxPixels:I = 0x1388


# instance fields
.field SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceArea:I

.field private deviceHeight:I

.field private deviceWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->setDeviceWidthHeight(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->context:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->setDeviceWidthHeight()V

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/upsight/mediation/vast/util/DefaultMediaPicker;)I
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/util/DefaultMediaPicker;

    .prologue
    .line 22
    iget v0, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceArea:I

    return v0
.end method

.method private getBestMatch(Ljava/util/List;)Lcom/upsight/mediation/vast/model/VASTMediaFile;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/mediation/vast/model/VASTMediaFile;",
            ">;)",
            "Lcom/upsight/mediation/vast/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/mediation/vast/model/VASTMediaFile;

    .line 186
    .local v1, "media":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->isMediaFileCompatible(Lcom/upsight/mediation/vast/model/VASTMediaFile;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    .end local v1    # "media":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private isMediaFileCompatible(Lcom/upsight/mediation/vast/model/VASTMediaFile;)Z
    .registers 4
    .param p1, "media"    # Lcom/upsight/mediation/vast/model/VASTMediaFile;

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prefilterMediaFiles(Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/mediation/vast/model/VASTMediaFile;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    const/16 v9, 0x1388

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/mediation/vast/model/VASTMediaFile;

    .line 79
    .local v2, "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 87
    :cond_20
    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v0

    .line 89
    .local v0, "height":Ljava/math/BigInteger;
    if-nez v0, :cond_2a

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 94
    :cond_2a
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 95
    .local v5, "videoHeight":I
    if-lez v5, :cond_32

    if-lt v5, v9, :cond_36

    .line 97
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 103
    :cond_36
    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v7

    .line 104
    .local v7, "width":Ljava/math/BigInteger;
    if-nez v7, :cond_40

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 109
    :cond_40
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 110
    .local v6, "videoWidth":I
    if-lez v6, :cond_48

    if-lt v6, v9, :cond_4c

    .line 112
    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 118
    :cond_4c
    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 126
    .end local v0    # "height":Ljava/math/BigInteger;
    .end local v2    # "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "videoHeight":I
    .end local v6    # "videoWidth":I
    .end local v7    # "width":Ljava/math/BigInteger;
    :cond_5a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    return v8
.end method

.method private setDeviceWidthHeight()V
    .registers 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceWidth:I

    .line 135
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceHeight:I

    .line 136
    iget v1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceWidth:I

    iget v2, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceArea:I

    .line 137
    return-void
.end method

.method private setDeviceWidthHeight(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceWidth:I

    .line 141
    iput p2, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceHeight:I

    .line 142
    iget v0, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceWidth:I

    iget v1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceArea:I

    .line 143
    return-void
.end method


# virtual methods
.method public pickVideo(Ljava/util/List;)Lcom/upsight/mediation/vast/model/VASTMediaFile;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/mediation/vast/model/VASTMediaFile;",
            ">;)",
            "Lcom/upsight/mediation/vast/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    .local p1, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->prefilterMediaFiles(Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_a

    .line 56
    :cond_9
    :goto_9
    return-object v0

    .line 54
    :cond_a
    new-instance v1, Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;

    invoke-direct {v1, p0, v0}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;-><init>(Lcom/upsight/mediation/vast/util/DefaultMediaPicker;Lcom/upsight/mediation/vast/util/DefaultMediaPicker$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->getBestMatch(Ljava/util/List;)Lcom/upsight/mediation/vast/model/VASTMediaFile;

    move-result-object v0

    .line 56
    .local v0, "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    goto :goto_9
.end method
