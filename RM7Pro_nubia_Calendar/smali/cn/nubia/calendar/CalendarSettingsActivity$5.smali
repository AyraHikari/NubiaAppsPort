.class Lcn/nubia/calendar/CalendarSettingsActivity$5;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/CalendarSettingsActivity;->setRingtoneLabel(Landroid/content/Context;Landroid/preference/RingtonePreference;)V
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
    .line 589
    iput-object p1, p0, Lcn/nubia/calendar/CalendarSettingsActivity$5;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 591
    iget-object v3, p0, Lcn/nubia/calendar/CalendarSettingsActivity$5;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    iget-object v4, p0, Lcn/nubia/calendar/CalendarSettingsActivity$5;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 592
    invoke-static {v4}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "preferences_alerts_ringtone"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 591
    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 593
    .local v1, "ringtone":Landroid/media/Ringtone;
    iget-object v3, p0, Lcn/nubia/calendar/CalendarSettingsActivity$5;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "ringtoneTitle":Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 595
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 596
    const/16 v3, 0xb

    iput v3, v0, Landroid/os/Message;->what:I

    .line 597
    iget-object v3, p0, Lcn/nubia/calendar/CalendarSettingsActivity$5;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-static {v3}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$300(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    return-void
.end method
