.class public Lcom/zte/mifavor/widget/ZTEDaysOfWeek;
.super Landroid/widget/LinearLayout;
.source "ZTEDaysOfWeek.java"


# static fields
.field private static mCheckedColor:I = -0x10000

.field private static final mUncheckedColor:I = -0x181819


# instance fields
.field private isEnabled:Z

.field private mDays:I

.field private mView:Landroid/view/View;

.field private mWeekButton:[Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    .line 20
    new-array p2, p2, [Landroid/widget/ToggleButton;

    iput-object p2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isEnabled:Z

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 28
    sget p2, Lcom/zte/extres/R$layout;->zte_days_of_week:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    .line 30
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InitToggleButton()V
    .locals 9

    .line 120
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->repeat_mon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 121
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v3, Lcom/zte/extres/R$id;->repeat_tue:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 122
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v4, Lcom/zte/extres/R$id;->repeat_wed:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 123
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v5, Lcom/zte/extres/R$id;->repeat_thu:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v6, Lcom/zte/extres/R$id;->repeat_fri:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v7, Lcom/zte/extres/R$id;->repeat_sat:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 126
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->repeat_sun:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 128
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$1;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$2;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$2;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v4

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$3;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$3;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v5

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$4;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$4;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v6

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$5;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$5;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v7

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$6;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$6;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v8

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$7;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$7;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setChecked()V

    .line 167
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;IZ)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->set(IZ)V

    return-void
.end method

.method private isSet(I)Z
    .locals 1

    .line 60
    iget p0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private set(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 65
    iget p2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    shl-int/2addr v0, p1

    or-int/2addr p2, v0

    iput p2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    goto :goto_0

    .line 67
    :cond_0
    iget p2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    shl-int/2addr v0, p1

    not-int v0, v0

    and-int/2addr p2, v0

    iput p2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    .line 69
    :goto_0
    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object p1, p2, p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround(Landroid/widget/ToggleButton;)V

    return-void
.end method

.method private setButtonBackGround()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround(Landroid/widget/ToggleButton;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setButtonBackGround(Landroid/widget/ToggleButton;)V
    .locals 1

    .line 171
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 172
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    sget p1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mCheckedColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const p1, -0x181819

    .line 175
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method private setChecked()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 107
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v0, v2, :cond_2

    .line 115
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround(Landroid/widget/ToggleButton;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static setValue(I)V
    .locals 0

    .line 35
    sput p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mCheckedColor:I

    return-void
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    const/4 v0, 0x7

    .line 83
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 85
    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isSet(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDays()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isEnabled:Z

    return p0
.end method

.method public isEveryDaySet()Z
    .locals 1

    .line 102
    iget p0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRepeatSet()Z
    .locals 0

    .line 95
    iget p0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBackGroundColor(I)V
    .locals 0

    .line 41
    invoke-static {p1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setValue(I)V

    return-void
.end method

.method public setDays(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    .line 78
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->InitToggleButton()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 49
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isEnabled:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
