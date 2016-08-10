.class public final enum Lcom/mopub/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/volley/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/volley/Request$Priority;

.field public static final enum HIGH:Lcom/mopub/volley/Request$Priority;

.field public static final enum IMMEDIATE:Lcom/mopub/volley/Request$Priority;

.field public static final enum LOW:Lcom/mopub/volley/Request$Priority;

.field public static final enum NORMAL:Lcom/mopub/volley/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    new-instance v0, Lcom/mopub/volley/Request$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/mopub/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/volley/Request$Priority;->LOW:Lcom/mopub/volley/Request$Priority;

    .line 495
    new-instance v0, Lcom/mopub/volley/Request$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/mopub/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/volley/Request$Priority;->NORMAL:Lcom/mopub/volley/Request$Priority;

    .line 496
    new-instance v0, Lcom/mopub/volley/Request$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/mopub/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/volley/Request$Priority;->HIGH:Lcom/mopub/volley/Request$Priority;

    .line 497
    new-instance v0, Lcom/mopub/volley/Request$Priority;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/mopub/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/volley/Request$Priority;->IMMEDIATE:Lcom/mopub/volley/Request$Priority;

    .line 493
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mopub/volley/Request$Priority;

    sget-object v1, Lcom/mopub/volley/Request$Priority;->LOW:Lcom/mopub/volley/Request$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/volley/Request$Priority;->NORMAL:Lcom/mopub/volley/Request$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/volley/Request$Priority;->HIGH:Lcom/mopub/volley/Request$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/volley/Request$Priority;->IMMEDIATE:Lcom/mopub/volley/Request$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mopub/volley/Request$Priority;->$VALUES:[Lcom/mopub/volley/Request$Priority;

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
    .line 493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/volley/Request$Priority;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 493
    const-class v0, Lcom/mopub/volley/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request$Priority;

    return-object v0
.end method

.method public static values()[Lcom/mopub/volley/Request$Priority;
    .registers 1

    .prologue
    .line 493
    sget-object v0, Lcom/mopub/volley/Request$Priority;->$VALUES:[Lcom/mopub/volley/Request$Priority;

    invoke-virtual {v0}, [Lcom/mopub/volley/Request$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/volley/Request$Priority;

    return-object v0
.end method
