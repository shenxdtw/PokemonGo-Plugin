.class public final enum Lcom/upsight/mediation/vast/Postroll/Postroll$Type;
.super Ljava/lang/Enum;
.source "Postroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/mediation/vast/Postroll/Postroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/mediation/vast/Postroll/Postroll$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

.field public static final enum DEFAULT:Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

.field public static final enum MRAID:Lcom/upsight/mediation/vast/Postroll/Postroll$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    const-string v1, "MRAID"

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;->MRAID:Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    new-instance v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;->DEFAULT:Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    sget-object v1, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;->MRAID:Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;->DEFAULT:Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;->$VALUES:[Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/mediation/vast/Postroll/Postroll$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    return-object v0
.end method

.method public static values()[Lcom/upsight/mediation/vast/Postroll/Postroll$Type;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/upsight/mediation/vast/Postroll/Postroll$Type;->$VALUES:[Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    invoke-virtual {v0}, [Lcom/upsight/mediation/vast/Postroll/Postroll$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/mediation/vast/Postroll/Postroll$Type;

    return-object v0
.end method
