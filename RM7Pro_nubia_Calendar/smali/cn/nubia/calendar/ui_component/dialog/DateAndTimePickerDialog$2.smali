.class Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;
.super Ljava/lang/Object;
.source "DateAndTimePickerDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setupNubiaSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 522
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 525
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0, p2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$602(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Z)Z

    .line 526
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->isLunarMode:Z

    .line 529
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1900(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    .line 530
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$700(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->noticeTimeChange()V

    .line 539
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->isLunarMode:Z

    .line 535
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$2000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    .line 536
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$2100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    goto :goto_0
.end method
