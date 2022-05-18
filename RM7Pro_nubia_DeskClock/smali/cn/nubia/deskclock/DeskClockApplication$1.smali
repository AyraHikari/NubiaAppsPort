.class Lcn/nubia/deskclock/DeskClockApplication$1;
.super Ljava/lang/Object;
.source "DeskClockApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/DeskClockApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/DeskClockApplication;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/DeskClockApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/DeskClockApplication;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$000(Lcn/nubia/deskclock/DeskClockApplication;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/deskclock/util/ReyunUtils;->init(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "AlarmClock"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 80
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "last_snooze_time_millis"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 81
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarmDataBeforeUptate"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 82
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 83
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    :goto_0
    const-string v1, "COUNTDOWN"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 98
    const-string v1, "isFirstLaunch"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 99
    const-string v1, "time_pref"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 100
    const-string v1, "update_time"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 101
    const-string v1, "city_list_file"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 102
    const-string v1, "city_list_file_widget"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 103
    const-string v1, "notifcation_time_pref"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 104
    const-string v1, "stopwatch_sharedpref"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 105
    return-void

    .line 85
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v2}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    .line 86
    invoke-static {v3}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    .line 87
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v2}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "AlarmClock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    .line 88
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v2}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "last_snooze_time_millis"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    .line 89
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v2}, Lcn/nubia/deskclock/DeskClockApplication;->access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarmDataBeforeUptate"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "AlarmClock"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 92
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "last_snooze_time_millis"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 93
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarmDataBeforeUptate"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 94
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 95
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication$1;->this$0:Lcn/nubia/deskclock/DeskClockApplication;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClockApplication;->access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto/16 :goto_0
.end method
