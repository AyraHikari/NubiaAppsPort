.class Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/DatePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p2, "x1"    # Lcn/nubia/commonui/widget/DatePickerDialog$1;

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 472
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 473
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1900(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    .line 474
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$2000(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 476
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
