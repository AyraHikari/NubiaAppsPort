.class public Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "MinuteAndSecondPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;,
        Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;,
        Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;
    }
.end annotation


# instance fields
.field private mCallBack:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

.field private mContext:Landroid/content/Context;

.field private mInitialHour:I

.field private mInitialMinute:I

.field private mInitialSecond:I

.field private final mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

.field private mOnClickListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;

.field private mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

.field private mStartButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput p4, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mInitialHour:I

    .line 46
    iput p5, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mInitialMinute:I

    .line 47
    iput p6, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mInitialSecond:I

    .line 48
    iput-object p1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    .local v1, "themeContext":Landroid/content/Context;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;

    if-nez v3, :cond_0

    .line 51
    new-instance v3, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;-><init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;

    .line 53
    :cond_0
    const/4 v3, -0x1

    const v4, 0x7f0d00cf

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    .line 56
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;

    .line 55
    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    const-string v3, "layout_inflater"

    .line 58
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040053

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->setView(Landroid/view/View;)V

    .line 62
    iput-object p3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mCallBack:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    .line 63
    const v3, 0x7f120129

    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    iput-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    .line 65
    iget-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    iget v4, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mInitialHour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 66
    iget-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    iget v4, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 67
    iget-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    iget v4, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mInitialSecond:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 69
    iget-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    if-nez v3, :cond_1

    .line 70
    new-instance v3, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;-><init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)V

    iput-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    .line 73
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    .line 74
    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setOnTimeChangedListener(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 38
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;III)V

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mStartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private getTitleString(III)Ljava/lang/String;
    .locals 3
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private tryNotifyTimeSet()V
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mCallBack:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->clearFocus()V

    .line 86
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mCallBack:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    .line 87
    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    .line 88
    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentMinute()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    .line 89
    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentSecond()I

    move-result v4

    .line 86
    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;->onMinuteAndSecondSet(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;III)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    const-string v1, "PICKER"

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 104
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    .line 110
    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 96
    return-void
.end method

.method public setButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mStartButton:Landroid/widget/Button;

    .line 158
    return-void
.end method

.method public final updateTime(III)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->mMinuteAndSecondPickerView:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 81
    return-void
.end method
