.class Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;
.super Ljava/lang/Object;
.source "DateAndTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;Ljava/lang/CharSequence;IIIII)V
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
    .line 149
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$200(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;->toggle()V

    .line 153
    return-void
.end method
