.class Lcn/nubia/commonui/widget/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/DatePickerDialog;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$1;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$1;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$000(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    .line 110
    return-void
.end method
