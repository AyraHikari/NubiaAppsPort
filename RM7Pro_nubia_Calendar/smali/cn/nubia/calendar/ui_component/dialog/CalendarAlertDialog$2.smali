.class Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$2;
.super Landroid/os/Handler;
.source "CalendarAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 473
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 476
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 489
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 480
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 481
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 486
    .end local v0    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->dismiss()V

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
