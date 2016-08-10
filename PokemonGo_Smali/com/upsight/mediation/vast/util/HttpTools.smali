.class public Lcom/upsight/mediation/vast/util/HttpTools;
.super Ljava/lang/Object;
.source "HttpTools.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/upsight/mediation/vast/util/HttpTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/mediation/vast/util/HttpTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/upsight/mediation/vast/util/HttpTools;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static httpGetURL(Ljava/lang/String;Ljava/lang/String;Lcom/upsight/mediation/vast/VASTPlayer;)V
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "currentPlayer"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 22
    new-instance v0, Lcom/upsight/mediation/vast/util/HttpTools$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/upsight/mediation/vast/util/HttpTools$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/upsight/mediation/vast/VASTPlayer;)V

    .line 62
    invoke-virtual {v0}, Lcom/upsight/mediation/vast/util/HttpTools$1;->start()V

    .line 68
    :cond_e
    return-void
.end method
