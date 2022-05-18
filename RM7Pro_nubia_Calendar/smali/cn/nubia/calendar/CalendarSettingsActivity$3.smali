.class Lcn/nubia/calendar/CalendarSettingsActivity$3;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/CalendarSettingsActivity;->initPrefrence(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/CalendarSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/CalendarSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/CalendarSettingsActivity;

    .prologue
    .line 286
    iput-object p1, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 290
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "huangdi"

    const-string v9, "onPreferenceClick="

    invoke-static {v8, v9}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :try_start_0
    const-string v8, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 296
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 297
    const-string v8, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :goto_0
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 302
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 305
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_4

    .line 306
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 307
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 309
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "mDefaultRingTone":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 311
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "preferences_music_ringtone"

    .line 312
    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "mRingTone":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 315
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "preferences_music_silent"

    const/4 v10, 0x0

    .line 316
    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 314
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 317
    .local v4, "mSilent":Ljava/lang/Boolean;
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 318
    invoke-virtual {v8, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 319
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 321
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x4

    .line 320
    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 323
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 326
    .local v6, "ringtoneUri":Landroid/net/Uri;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v12, :cond_1

    .line 327
    const/4 v6, 0x0

    .line 329
    :cond_1
    const-string v9, "URL_VALUE"

    if-nez v6, :cond_3

    const-string v8, "content://media/internal/audio/media/10000"

    :goto_1
    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v8, "music_type"

    const/4 v9, 0x4

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Lcn/nubia/calendar/CalendarSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 345
    .end local v2    # "mDefaultRingTone":Ljava/lang/String;
    .end local v3    # "mRingTone":Ljava/lang/String;
    .end local v4    # "mSilent":Ljava/lang/Boolean;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ringtoneUri":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_2
    return v11

    .line 299
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    const-string v8, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 331
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "mDefaultRingTone":Ljava/lang/String;
    .restart local v3    # "mRingTone":Ljava/lang/String;
    .restart local v4    # "mSilent":Ljava/lang/Boolean;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ringtoneUri":Landroid/net/Uri;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 337
    .end local v2    # "mDefaultRingTone":Ljava/lang/String;
    .end local v3    # "mRingTone":Ljava/lang/String;
    .end local v4    # "mSilent":Ljava/lang/Boolean;
    .end local v6    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    const-string v8, "music_type"

    const/4 v9, 0x4

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$3;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Lcn/nubia/calendar/CalendarSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
