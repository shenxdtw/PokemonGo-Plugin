.class public final enum Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;
.super Ljava/lang/Enum;
.source "TRACKING_EVENTS_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum acceptInvitation:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum close:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum collapse:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum complete:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum creativeView:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum expand:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum firstQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum fullscreen:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum midpoint:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum mute:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum pause:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum progress:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum resume:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum rewind:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum skip:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum start:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum thirdQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum unmute:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "creativeView"

    invoke-direct {v0, v1, v3}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->creativeView:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 13
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "start"

    invoke-direct {v0, v1, v4}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->start:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 14
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "midpoint"

    invoke-direct {v0, v1, v5}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 15
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "firstQuartile"

    invoke-direct {v0, v1, v6}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 16
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "thirdQuartile"

    invoke-direct {v0, v1, v7}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 17
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "complete"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->complete:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 18
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "mute"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->mute:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 19
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "unmute"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->unmute:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 20
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "pause"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->pause:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 21
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "rewind"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->rewind:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 22
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "resume"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->resume:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 23
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "fullscreen"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->fullscreen:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 24
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "expand"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->expand:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 25
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "collapse"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->collapse:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 26
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "acceptInvitation"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->acceptInvitation:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 27
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "close"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->close:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 28
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "skip"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->skip:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 29
    new-instance v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "progress"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->progress:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 11
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    sget-object v1, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->creativeView:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->start:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->complete:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->mute:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->unmute:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->pause:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->rewind:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->resume:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->fullscreen:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->expand:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->collapse:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->acceptInvitation:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->close:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->skip:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->progress:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->$VALUES:[Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->$VALUES:[Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v0}, [Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method
