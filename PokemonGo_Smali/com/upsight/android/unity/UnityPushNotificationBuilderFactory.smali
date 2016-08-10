.class public Lcom/upsight/android/unity/UnityPushNotificationBuilderFactory;
.super Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;
.source "UnityPushNotificationBuilderFactory.java"


# static fields
.field private static final NOTIFICATION_ICON_RES_NAME:Ljava/lang/String; = "upsight_notification_icon"

.field private static final NOTIFICATION_ICON_RES_TYPE:Ljava/lang/String; = "drawable"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationBuilder(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 10
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "upsight_notification_icon"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "iconResId":I
    if-nez v0, :cond_18

    .line 28
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 31
    :cond_18
    invoke-super {p0, p1, p2, p3, p4}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->getNotificationBuilder(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    return-object v2
.end method
