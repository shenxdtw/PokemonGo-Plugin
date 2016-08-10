.class abstract Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;
.super Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-class v0, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->P_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad;-><init>(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final casProducerIndex(JJ)Z
    .registers 14
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method protected final lvProducerIndex()J
    .registers 3

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->producerIndex:J

    return-wide v0
.end method
