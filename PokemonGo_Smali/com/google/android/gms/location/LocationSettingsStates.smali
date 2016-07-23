.class public final Lcom/google/android/gms/location/LocationSettingsStates;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaEQ:Z

.field private final zzaER:Z

.field private final zzaES:Z

.field private final zzaET:Z

.field private final zzaEU:Z

.field private final zzaEV:Z

.field private final zzaEW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZZZZZ)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "gpsUsable"    # Z
    .param p3, "nlpUsable"    # Z
    .param p4, "bleUsable"    # Z
    .param p5, "gpsPresent"    # Z
    .param p6, "nlpPresent"    # Z
    .param p7, "blePresent"    # Z
    .param p8, "userLocationReportingOn"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEQ:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaER:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaES:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaET:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEU:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEV:Z

    iput-boolean p8, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEW:Z

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationSettingsStates;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.location.LOCATION_SETTINGS_STATES"

    sget-object v1, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    return v0
.end method

.method public isBlePresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEV:Z

    return v0
.end method

.method public isBleUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaES:Z

    return v0
.end method

.method public isGpsPresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaET:Z

    return v0
.end method

.method public isGpsUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEQ:Z

    return v0
.end method

.method public isLocationPresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaET:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEU:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLocationUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEQ:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaER:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isNetworkLocationPresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEU:Z

    return v0
.end method

.method public isNetworkLocationUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaER:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzh;->zza(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzwA()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaEW:Z

    return v0
.end method
