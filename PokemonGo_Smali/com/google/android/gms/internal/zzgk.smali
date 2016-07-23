.class public Lcom/google/android/gms/internal/zzgk;
.super Lcom/google/android/gms/internal/zzgf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field protected zzDA:Lcom/google/android/gms/internal/zzei;

.field private zzDz:Lcom/google/android/gms/internal/zzec;

.field private final zzoo:Lcom/google/android/gms/internal/zzcg;

.field private zzox:Lcom/google/android/gms/internal/zzem;

.field private zzzA:Lcom/google/android/gms/internal/zzee;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/internal/zzgg$zza;Lcom/google/android/gms/internal/zzcg;)V
    .registers 7

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzgf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzgg$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgk;->zzox:Lcom/google/android/gms/internal/zzem;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhs$zza;->zzHx:Lcom/google/android/gms/internal/zzee;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzzA:Lcom/google/android/gms/internal/zzee;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgk;->zzoo:Lcom/google/android/gms/internal/zzcg;

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgk;->zzDh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzgf;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzDz:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzDz:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->cancel()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected zzA(I)Lcom/google/android/gms/internal/zzhs;
    .registers 33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgk;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/zzhs;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyY:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyZ:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEM:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzc:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEK:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    if-eqz v6, :cond_ab

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    iget-object v14, v6, Lcom/google/android/gms/internal/zzei;->zzzu:Lcom/google/android/gms/internal/zzed;

    :goto_3d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    if-eqz v6, :cond_ad

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    iget-object v15, v6, Lcom/google/android/gms/internal/zzei;->zzzv:Lcom/google/android/gms/internal/zzen;

    :goto_49
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    if-eqz v6, :cond_af

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzei;->zzzw:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgk;->zzzA:Lcom/google/android/gms/internal/zzee;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    if-eqz v6, :cond_b6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzei;->zzzx:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v18, v0

    :goto_6b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEL:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEJ:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzHz:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEO:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEP:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzHw:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zziz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzeg;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    return-object v2

    :cond_ab
    const/4 v14, 0x0

    goto :goto_3d

    :cond_ad
    const/4 v15, 0x0

    goto :goto_49

    :cond_af
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto :goto_57

    :cond_b6
    const/16 v18, 0x0

    goto :goto_6b
.end method

.method protected zzh(J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzgf$zza;
        }
    .end annotation

    iget-object v11, p0, Lcom/google/android/gms/internal/zzgk;->zzDh:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgk;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgk;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgk;->zzox:Lcom/google/android/gms/internal/zzem;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgk;->zzzA:Lcom/google/android/gms/internal/zzee;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgk;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzth:Z

    sget-object v6, Lcom/google/android/gms/internal/zzby;->zzvw:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/gms/internal/zzgk;->zzoo:Lcom/google/android/gms/internal/zzcg;

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzek;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/internal/zzee;ZJJLcom/google/android/gms/internal/zzcg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzDz:Lcom/google/android/gms/internal/zzec;

    monitor-exit v11
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_59

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzDz:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgk;->zzzA:Lcom/google/android/gms/internal/zzee;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzee;->zzyW:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Ljava/util/List;)Lcom/google/android/gms/internal/zzei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    iget v0, v0, Lcom/google/android/gms/internal/zzei;->zzzt:I

    packed-switch v0, :pswitch_data_66

    new-instance v0, Lcom/google/android/gms/internal/zzgf$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgk;->zzDA:Lcom/google/android/gms/internal/zzei;

    iget v2, v2, Lcom/google/android/gms/internal/zzei;->zzzt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgf$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v11
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0

    :pswitch_5c
    new-instance v0, Lcom/google/android/gms/internal/zzgf$zza;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgf$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_65
    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_65
        :pswitch_5c
    .end packed-switch
.end method
