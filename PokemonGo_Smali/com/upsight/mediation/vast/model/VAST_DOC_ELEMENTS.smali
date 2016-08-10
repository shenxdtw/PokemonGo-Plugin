.class public final enum Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;
.super Ljava/lang/Enum;
.source "VAST_DOC_ELEMENTS.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vastAdTagURI:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vastVersion:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vastVersionAttribute:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vasts:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vastVersion"

    const-string v2, "2.0"

    invoke-direct {v0, v1, v3, v2}, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vastVersion:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    .line 13
    new-instance v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vasts"

    const-string v2, "VASTS"

    invoke-direct {v0, v1, v4, v2}, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vasts:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    .line 14
    new-instance v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vastAdTagURI"

    const-string v2, "VASTAdTagURI"

    invoke-direct {v0, v1, v5, v2}, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vastAdTagURI:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    .line 15
    new-instance v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vastVersionAttribute"

    const-string v2, "version"

    invoke-direct {v0, v1, v6, v2}, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vastVersionAttribute:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    sget-object v1, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vastVersion:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vasts:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vastAdTagURI:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vastVersionAttribute:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->$VALUES:[Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->value:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    return-object v0
.end method

.method public static values()[Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->$VALUES:[Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    invoke-virtual {v0}, [Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->value:Ljava/lang/String;

    return-object v0
.end method
