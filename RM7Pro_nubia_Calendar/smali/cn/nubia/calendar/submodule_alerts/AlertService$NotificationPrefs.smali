.class Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationPrefs"
.end annotation


# static fields
.field private static final EMPTY_RINGTONE:Ljava/lang/String; = ""


# instance fields
.field private context:Landroid/content/Context;

.field private defaultVibrate:I

.field private doPopup:I

.field private prefs:Landroid/content/SharedPreferences;

.field quietUpdate:Z

.field private ringtone:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "quietUpdate"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->doPopup:I

    .line 1268
    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 1269
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 1275
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    .line 1276
    iput-object p2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    .line 1277
    iput-boolean p3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    .line 1278
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;

    .prologue
    .line 1260
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;

    .prologue
    .line 1260
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;

    .prologue
    .line 1260
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->getDoPopup()Z

    move-result v0

    return v0
.end method

.method private getDefaultVibrate()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1300
    iget v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-gez v7, :cond_0

    .line 1304
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "preferences_alerts_vibrateWhen"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1306
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "preferences_alerts_vibrateWhen"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1324
    .local v4, "vibrateWhen":Ljava/lang/String;
    :goto_0
    const-string v7, "always"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1325
    iput v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 1348
    :goto_1
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    .line 1349
    invoke-static {v7}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "preferences_alerts_vibrate"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1352
    .local v1, "bVibrate":Z
    if-eqz v1, :cond_8

    .line 1353
    iput v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 1366
    .end local v1    # "bVibrate":Z
    .end local v4    # "vibrateWhen":Ljava/lang/String;
    :cond_0
    :goto_2
    iget v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-ne v7, v5, :cond_9

    :goto_3
    return v5

    .line 1308
    :cond_1
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "preferences_alerts_vibrate"

    .line 1309
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1312
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "preferences_alerts_vibrate"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1314
    .local v3, "vibrate":Z
    if-eqz v3, :cond_2

    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const v8, 0x7f0c025f

    .line 1315
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1318
    .restart local v4    # "vibrateWhen":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 1315
    .end local v4    # "vibrateWhen":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const v8, 0x7f0c025e

    .line 1317
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1320
    .end local v3    # "vibrate":Z
    :cond_3
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const v8, 0x7f0c025d

    .line 1321
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "vibrateWhen":Ljava/lang/String;
    goto :goto_0

    .line 1326
    :cond_4
    const-string v7, "silent"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1327
    iput v6, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    goto :goto_1

    .line 1331
    :cond_5
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const-string v8, "audio"

    .line 1332
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1336
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "preferences_alerts_ringtone"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1339
    .local v2, "ringtone":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-eq v7, v5, :cond_6

    const-string v7, ""

    .line 1340
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1341
    :cond_6
    iput v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    goto :goto_1

    .line 1345
    :cond_7
    iput v6, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    goto :goto_1

    .line 1355
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "ringtone":Ljava/lang/String;
    .restart local v1    # "bVibrate":Z
    :cond_8
    iput v6, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    goto :goto_2

    .end local v1    # "bVibrate":Z
    .end local v4    # "vibrateWhen":Ljava/lang/String;
    :cond_9
    move v5, v6

    .line 1366
    goto :goto_3
.end method

.method private getDoPopup()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1287
    iget v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->doPopup:I

    if-gez v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "preferences_pop_window"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->doPopup:I

    .line 1296
    :cond_0
    :goto_0
    iget v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->doPopup:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    .line 1292
    :cond_1
    iput v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->doPopup:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1296
    goto :goto_1
.end method

.method private getRingtoneAndSilence()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1370
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1371
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    if-eqz v2, :cond_1

    .line 1372
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 1380
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "preferences_calendar_event_reminder"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1387
    .local v0, "eventReminder":Z
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 1388
    .local v1, "retVal":Ljava/lang/String;
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 1389
    return-object v1

    .line 1374
    .end local v0    # "eventReminder":Z
    .end local v1    # "retVal":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "preferences_alerts_ringtone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    goto :goto_0
.end method
