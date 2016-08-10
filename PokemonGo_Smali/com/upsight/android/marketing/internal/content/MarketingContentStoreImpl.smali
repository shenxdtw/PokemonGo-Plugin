.class Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
.super Lcom/upsight/android/marketing/UpsightMarketingContentStore;
.source "MarketingContentStoreImpl.java"

# interfaces
.implements Lcom/upsight/android/marketing/internal/content/MarketingContentStore;


# static fields
.field public static final DEFAULT_TIME_TO_LIVE_MS:J = 0x927c0L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field private mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private final mContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mParentEligibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScopeEligibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTimestamps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/otto/Bus;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 5
    .param p1, "bus"    # Lcom/squareup/otto/Bus;
    .param p2, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/upsight/android/marketing/UpsightMarketingContentStore;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mBus:Lcom/squareup/otto/Bus;

    .line 79
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 80
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 81
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->get(Ljava/lang/String;)Lcom/upsight/android/marketing/internal/content/MarketingContent;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .registers 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 100
    .local v0, "timestamp":Ljava/lang/Long;
    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_44

    .line 102
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_49

    .line 107
    :goto_42
    monitor-exit p0

    return-object v1

    .line 106
    :cond_44
    :try_start_44
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->remove(Ljava/lang/String;)Z
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_49

    .line 107
    const/4 v1, 0x0

    goto :goto_42

    .line 99
    .end local v0    # "timestamp":Ljava/lang/Long;
    :catchall_49
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getIdsForScope(Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .param p1, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 147
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_32

    .line 148
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 154
    .restart local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_19

    .line 146
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_2f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 150
    .restart local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_32
    :try_start_32
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .end local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, v2

    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_10

    .line 158
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_39
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIdsForScope scope="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ids=[ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_32 .. :try_end_66} :catchall_2f

    .line 160
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized isContentReady(Ljava/lang/String;)Z
    .registers 3
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->getIdsForScope(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized presentScopedContent(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "scopes"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 165
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 166
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_5f

    if-eqz p2, :cond_5f

    array-length v5, p2

    if-lez v5, :cond_5f

    .line 167
    array-length v5, p2

    :goto_12
    if-ge v4, v5, :cond_37

    aget-object v3, p2, v4

    .line 168
    .local v3, "scope":Ljava/lang/String;
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 169
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_26

    .line 170
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 172
    :cond_26
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 173
    .restart local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_34

    goto :goto_23

    .line 165
    .end local v0    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "scope":Ljava/lang/String;
    :catchall_34
    move-exception v4

    monitor-exit p0

    throw v4

    .line 178
    .restart local v0    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :cond_37
    :try_start_37
    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;

    invoke-direct {v1, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    .local v1, "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1, v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markPresentable(Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;Lcom/squareup/otto/Bus;)V

    .line 181
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "presentScopedContent id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_34

    .line 183
    const/4 v4, 0x1

    .line 185
    .end local v1    # "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    :cond_5f
    monitor-exit p0

    return v4
.end method

.method public declared-synchronized presentScopelessContent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 190
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 191
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_49

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 192
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;

    invoke-direct {v1, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v1, "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markPresentable(Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;Lcom/squareup/otto/Bus;)V

    .line 197
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v3, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "presentScopelessContent id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_4b

    .line 199
    const/4 v2, 0x1

    .line 201
    .end local v1    # "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    :cond_49
    monitor-exit p0

    return v2

    .line 190
    .end local v0    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :catchall_4b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public bridge synthetic put(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)Z
    .registers 4

    .prologue
    .line 25
    check-cast p2, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->put(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent;)Z
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    .line 86
    .local v0, "isAdded":Z
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz p2, :cond_1f

    .line 87
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v2}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    .line 92
    :cond_1f
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAdded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    .line 94
    monitor-exit p0

    return v0

    .line 85
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 13
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 113
    monitor-enter p0

    const/4 v4, 0x0

    .line 114
    .local v4, "isRemoved":Z
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_76

    .line 115
    iget-object v8, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_41

    const/4 v4, 0x1

    .line 116
    :goto_12
    if-eqz v4, :cond_76

    .line 117
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, "scope":Ljava/lang/String;
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 121
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1e

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 122
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3e

    goto :goto_1e

    .line 113
    .end local v2    # "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "scope":Ljava/lang/String;
    :catchall_3e
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_41
    move v4, v7

    .line 115
    goto :goto_12

    .line 126
    .restart local v2    # "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_43
    :try_start_43
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "childIdMapItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, "parentId":Ljava/lang/String;
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "childId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 131
    :cond_6d
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4d

    .line 135
    .end local v0    # "childId":Ljava/lang/String;
    .end local v5    # "parentId":Ljava/lang/String;
    :cond_71
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v1    # "childIdMapItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_76
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v8, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isRemoved="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9d
    .catchall {:try_start_43 .. :try_end_9d} :catchall_3e

    .line 141
    monitor-exit p0

    return v4
.end method
