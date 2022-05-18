.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;
.super Ljava/lang/Object;
.source "NubiaLunarTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p2, "x1"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 652
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 653
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 655
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
