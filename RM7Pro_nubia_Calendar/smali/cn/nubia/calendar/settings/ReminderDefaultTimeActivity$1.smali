.class Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;
.super Ljava/lang/Object;
.source "ReminderDefaultTimeActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->onBindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 83
    packed-switch p2, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "5"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "15"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "30"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "60"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "1440"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_8
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;->this$0:Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;

    const-string v1, "10080"

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x7f11024e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
