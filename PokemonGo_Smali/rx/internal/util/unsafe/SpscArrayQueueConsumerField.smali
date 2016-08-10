.class abstract Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;
.super Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL2Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final C_INDEX_OFFSET:J


# instance fields
.field protected consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    const-class v0, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;->C_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpscArrayQueueConsumerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;-><init>(I)V

    .line 62
    return-void
.end method
