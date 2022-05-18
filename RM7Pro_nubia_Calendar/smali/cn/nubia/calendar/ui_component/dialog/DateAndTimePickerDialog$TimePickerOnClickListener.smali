.class Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;
.super Ljava/lang/Object;
.source "DateAndTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p2, "x1"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;-><init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 648
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 649
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$2200(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    .line 650
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 652
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
