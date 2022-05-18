.class Lcn/nubia/commonui/widget/TimePickerDialog$a;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/TimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/commonui/widget/TimePickerDialog$a;->a:Lcn/nubia/commonui/widget/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/TimePickerDialog;Lcn/nubia/commonui/widget/TimePickerDialog$1;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TimePickerDialog$a;-><init>(Lcn/nubia/commonui/widget/TimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog$a;->a:Lcn/nubia/commonui/widget/TimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/TimePickerDialog;->access$200(Lcn/nubia/commonui/widget/TimePickerDialog;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 112
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
