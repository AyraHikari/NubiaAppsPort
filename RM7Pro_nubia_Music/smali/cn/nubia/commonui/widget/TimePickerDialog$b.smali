.class Lcn/nubia/commonui/widget/TimePickerDialog$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/TimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/commonui/widget/TimePickerDialog$b;->a:Lcn/nubia/commonui/widget/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/TimePickerDialog;Lcn/nubia/commonui/widget/TimePickerDialog$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/TimePickerDialog$b;-><init>(Lcn/nubia/commonui/widget/TimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcn/nubia/commonui/widget/TimePickerView;II)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
