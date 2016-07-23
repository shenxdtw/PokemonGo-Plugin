.class public Lcom/google/android/gms/internal/zzu;
.super Ljava/lang/Object;


# static fields
.field protected static final zzaw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private zzas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private zzat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private zzau:I

.field private final zzav:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzu$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzu$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzu;->zzaw:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzu;->zzas:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzu;->zzat:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzu;->zzau:I

    iput p1, p0, Lcom/google/android/gms/internal/zzu;->zzav:I

    return-void
.end method

.method private declared-synchronized zzy()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzu;->zzau:I

    iget v1, p0, Lcom/google/android/gms/internal/zzu;->zzav:I

    if-le v0, v1, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzu;->zzas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzu;->zzat:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/google/android/gms/internal/zzu;->zzau:I

    array-length v0, v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzu;->zzau:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_1

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized zza([B)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_3
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzu;->zzav:I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2b

    if-le v0, v1, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzu;->zzas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzu;->zzat:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzu;->zzaw:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1c

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzu;->zzat:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzu;->zzau:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzu;->zzau:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzu;->zzy()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2b

    goto :goto_8

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzb(I)[B
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzu;->zzat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzu;->zzat:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    if-lt v2, p1, :cond_28

    iget v2, p0, Lcom/google/android/gms/internal/zzu;->zzau:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzu;->zzau:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzu;->zzat:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzu;->zzas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2f

    :goto_26
    monitor-exit p0

    return-object v0

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2c
    :try_start_2c
    new-array v0, p1, [B
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_2f

    goto :goto_26

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
