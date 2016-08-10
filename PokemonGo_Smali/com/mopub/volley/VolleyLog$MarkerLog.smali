.class Lcom/mopub/volley/VolleyLog$MarkerLog;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/VolleyLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkerLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;
    }
.end annotation


# static fields
.field public static final ENABLED:Z

.field private static final MIN_DURATION_FOR_LOGGING_MS:J


# instance fields
.field private mFinished:Z

.field private final mMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mopub/volley/VolleyLog$MarkerLog;->ENABLED:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mFinished:Z

    return-void
.end method

.method private getTotalDuration()J
    .registers 7

    .prologue
    .line 167
    iget-object v4, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 168
    const-wide/16 v4, 0x0

    .line 173
    :goto_a
    return-wide v4

    .line 171
    :cond_b
    iget-object v4, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;

    iget-wide v0, v4, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 172
    .local v0, "first":J
    iget-object v4, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    iget-object v5, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;

    iget-wide v2, v4, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 173
    .local v2, "last":J
    sub-long v4, v2, v0

    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;J)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadId"    # J

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mFinished:Z

    if-eqz v0, :cond_10

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Marker added to finished log"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 126
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 130
    :cond_10
    :try_start_10
    iget-object v6, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    new-instance v0, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    .line 131
    monitor-exit p0

    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mFinished:Z

    if-nez v0, :cond_11

    .line 160
    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/mopub/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 161
    const-string v0, "Marker log finalized without finish() - uncaught exit point for request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_11
    return-void
.end method

.method public declared-synchronized finish(Ljava/lang/String;)V
    .registers 16
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 139
    monitor-enter p0

    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 141
    invoke-direct {p0}, Lcom/mopub/volley/VolleyLog$MarkerLog;->getTotalDuration()J
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_62

    move-result-wide v0

    .line 142
    .local v0, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_10

    .line 153
    :cond_e
    monitor-exit p0

    return-void

    .line 146
    :cond_10
    :try_start_10
    iget-object v8, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;

    iget-wide v4, v8, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 147
    .local v4, "prevTime":J
    const-string v8, "(%-4d ms) %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v8, p0, Lcom/mopub/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;

    .line 149
    .local v3, "marker":Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;
    iget-wide v6, v3, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 150
    .local v6, "thisTime":J
    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-wide v12, v3, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;->thread:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v3, Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_10 .. :try_end_60} :catchall_62

    .line 151
    move-wide v4, v6

    .line 152
    goto :goto_33

    .line 139
    .end local v0    # "duration":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "marker":Lcom/mopub/volley/VolleyLog$MarkerLog$Marker;
    .end local v4    # "prevTime":J
    .end local v6    # "thisTime":J
    :catchall_62
    move-exception v8

    monitor-exit p0

    throw v8
.end method
