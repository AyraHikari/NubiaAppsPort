.class Lcn/nubia/calendar/CalendarSettingsActivity$4;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 348
    iput-object p1, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    .line 350
    const-string v0, ""

    .line 351
    .local v0, "mDefaultRingToneString":Ljava/lang/String;
    const-string v4, ""

    .line 353
    .local v4, "ringToneTitle":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 355
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 356
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_0
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 359
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    .line 358
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "preferences_music_ringtone"

    .line 359
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "mRingToneString":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 361
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;

    move-result-object v8

    .line 360
    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "preferences_music_silent"

    const/4 v10, 0x0

    .line 361
    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 360
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 362
    .local v2, "mSilent":Ljava/lang/Boolean;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 363
    .local v5, "ringtoneUri":Landroid/net/Uri;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 364
    const/4 v5, 0x0

    .line 366
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v5, :cond_4

    .line 367
    :cond_2
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0213

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 378
    :cond_3
    :goto_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 379
    .local v3, "msg":Landroid/os/Message;
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    const/16 v8, 0xa

    iput v8, v3, Landroid/os/Message;->what:I

    .line 381
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-static {v8}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$300(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void

    .line 369
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-static {v5, v8}, Lcn/nubia/calendar/util/Utils;->CalendarMusicFileExists(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 371
    invoke-static {v11}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 373
    :cond_5
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-static {v8, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 374
    .local v6, "seleRingtone":Landroid/media/Ringtone;
    if-eqz v6, :cond_3

    .line 375
    iget-object v8, p0, Lcn/nubia/calendar/CalendarSettingsActivity$4;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v6, v8}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
