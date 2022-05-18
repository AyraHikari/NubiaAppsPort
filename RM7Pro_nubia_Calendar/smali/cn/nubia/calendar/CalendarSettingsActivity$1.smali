.class Lcn/nubia/calendar/CalendarSettingsActivity$1;
.super Landroid/os/Handler;
.source "CalendarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/CalendarSettingsActivity;
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
    .line 107
    iput-object p1, p0, Lcn/nubia/calendar/CalendarSettingsActivity$1;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "musicTitle":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity$1;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-static {v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$000(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    .end local v1    # "musicTitle":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "alertTitle":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity$1;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-static {v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->access$100(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
