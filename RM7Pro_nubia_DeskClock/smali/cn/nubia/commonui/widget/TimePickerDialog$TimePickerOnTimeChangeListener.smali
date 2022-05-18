.class Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnTimeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/TimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/TimePickerDialog;Lcn/nubia/commonui/widget/TimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/widget/TimePickerDialog;
    .param p2, "x1"    # Lcn/nubia/commonui/widget/TimePickerDialog$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lcn/nubia/commonui/widget/TimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcn/nubia/commonui/widget/TimePickerView;II)V
    .locals 0
    .param p1, "view"    # Lcn/nubia/commonui/widget/TimePickerView;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 102
    return-void
.end method
