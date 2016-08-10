.class public final Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;
.super Ljava/lang/Object;
.source "MRAIDOrientationProperties.java"


# static fields
.field public static final FORCE_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final FORCE_ORIENTATION_NONE:I = 0x2

.field public static final FORCE_ORIENTATION_PORTRAIT:I


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;-><init>(ZI)V

    .line 17
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrienation"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    .line 21
    iput p2, p0, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    .line 22
    return-void
.end method

.method public static forceOrientationFromString(Ljava/lang/String;)I
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "portrait"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "landscape"

    aput-object v5, v3, v4

    const-string v4, "none"

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 26
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 27
    .local v0, "idx":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1e

    .line 31
    .end local v0    # "idx":I
    :goto_1d
    return v0

    .restart local v0    # "idx":I
    :cond_1e
    move v0, v2

    goto :goto_1d
.end method


# virtual methods
.method public forceOrientationString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/upsight/mediation/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    packed-switch v0, :pswitch_data_12

    .line 39
    const-string v0, "error"

    :goto_7
    return-object v0

    .line 36
    :pswitch_8
    const-string v0, "portrait"

    goto :goto_7

    .line 37
    :pswitch_b
    const-string v0, "landscape"

    goto :goto_7

    .line 38
    :pswitch_e
    const-string v0, "none"

    goto :goto_7

    .line 35
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method
