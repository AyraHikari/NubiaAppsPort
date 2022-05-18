.class Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;
.super Ljava/lang/Object;
.source "CalendarAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 491
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 495
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$200(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 496
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$400(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .line 497
    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$300(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 496
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 512
    :cond_0
    return-void

    .line 498
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$500(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 499
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$400(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .line 500
    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$600(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 499
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 501
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$700(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 502
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$400(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .line 503
    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$800(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 502
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 505
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0
.end method
