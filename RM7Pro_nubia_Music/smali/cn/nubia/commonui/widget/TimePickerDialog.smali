.class public Lcn/nubia/commonui/widget/TimePickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/TimePickerDialog$a;,
        Lcn/nubia/commonui/widget/TimePickerDialog$b;,
        Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

.field private mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$a;

.field private mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$b;

.field private final mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;II)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TimePickerDialog;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    sget v0, Lcn/nubia/commonui/R$string;->nubia_time_picker_dialog_title:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TimePickerDialog;->setTitle(I)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$a;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcn/nubia/commonui/widget/TimePickerDialog$a;

    invoke-direct {v1, p0, v4}, Lcn/nubia/commonui/widget/TimePickerDialog$a;-><init>(Lcn/nubia/commonui/widget/TimePickerDialog;Lcn/nubia/commonui/widget/TimePickerDialog$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$a;

    .line 42
    :cond_0
    const/4 v1, -0x1

    const v2, 0x1040013

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$a;

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/commonui/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$a;

    .line 44
    invoke-virtual {p0, v1, v0, v2}, Lcn/nubia/commonui/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 46
    const-string v0, "layout_inflater"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_time_picker_dialog:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 51
    iput-object p3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

    .line 52
    sget v1, Lcn/nubia/commonui/R$id;->nubia_timePickerView:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/TimePickerView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$b;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcn/nubia/commonui/widget/TimePickerDialog$b;

    invoke-direct {v0, p0, v4}, Lcn/nubia/commonui/widget/TimePickerDialog$b;-><init>(Lcn/nubia/commonui/widget/TimePickerDialog;Lcn/nubia/commonui/widget/TimePickerDialog$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$b;

    .line 60
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$b;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->setOnTimeChangedListener(Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;II)V
    .locals 6

    .prologue
    .line 27
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;II)V

    .line 28
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/TimePickerView;->clearFocus()V

    .line 71
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

    iget-object v1, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    .line 72
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    .line 73
    invoke-virtual {v3}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v3

    .line 71
    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;->onTimeSet(Lcn/nubia/commonui/widget/TimePickerView;II)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    const-string v1, "PICKER"

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 87
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/TimePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 80
    return-void
.end method

.method public final updateTime(II)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 66
    return-void
.end method
