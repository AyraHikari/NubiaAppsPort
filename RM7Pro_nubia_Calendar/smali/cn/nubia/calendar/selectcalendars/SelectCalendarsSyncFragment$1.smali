.class Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment$1;
.super Ljava/lang/Object;
.source "SelectCalendarsSyncFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment$1;->this$0:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 85
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "nextIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    .line 87
    .local v0, "array":[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment$1;->this$0:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;

    invoke-virtual {v2, v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x7f110058
        :pswitch_0
    .end packed-switch
.end method
