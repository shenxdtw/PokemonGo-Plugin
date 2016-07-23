.class public abstract Lcom/google/android/gms/gcm/GcmTaskService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/GcmTaskService$zza;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION_EXECUTE_TASK:Ljava/lang/String; = "com.google.android.gms.gcm.ACTION_TASK_READY"

.field public static final SERVICE_ACTION_INITIALIZE:Ljava/lang/String; = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

.field public static final SERVICE_PERMISSION:Ljava/lang/String; = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"


# instance fields
.field private final zzaCo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaCp:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService;->zzdm(Ljava/lang/String;)V

    return-void
.end method

.method private zzdm(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCp:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmTaskService;->stopSelf(I)V

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeTasks()V
    .registers 1

    return-void
.end method

.method public abstract onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    const-class v0, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "callback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v0, "extras"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v1, :cond_30

    instance-of v3, v1, Lcom/google/android/gms/gcm/PendingCallback;

    if-nez v3, :cond_57

    :cond_30
    const-string v0, "GcmTaskService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Could not process request, invalid callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    return v5

    :cond_57
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    monitor-enter v3

    :try_start_5a
    iget-object v4, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCp:I

    invoke-virtual {p0, v4}, Lcom/google/android/gms/gcm/GcmTaskService;->stopSelf(I)V

    iput p3, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCp:I

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_76

    new-instance v3, Lcom/google/android/gms/gcm/GcmTaskService$zza;

    check-cast v1, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/PendingCallback;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/google/android/gms/gcm/GcmTaskService$zza;-><init>(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/GcmTaskService$zza;->start()V

    goto :goto_56

    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0

    :cond_79
    const-string v0, "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->onInitializeTasks()V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    monitor-enter v1

    :try_start_8b
    iput p3, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCp:I

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9a

    iget v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzaCp:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmTaskService;->stopSelf(I)V

    :cond_9a
    monitor-exit v1

    goto :goto_56

    :catchall_9c
    move-exception v0

    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_9c

    throw v0
.end method