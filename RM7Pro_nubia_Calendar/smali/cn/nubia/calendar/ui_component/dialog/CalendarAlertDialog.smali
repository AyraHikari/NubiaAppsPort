.class public Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "CalendarAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$CheckItemAdapter;
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mContentPanel:Landroid/widget/LinearLayout;

.field final mContext:Landroid/content/Context;

.field private mCustomPanel:Landroid/widget/FrameLayout;

.field private mCustomTitleView:Landroid/view/View;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mDateAndTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDiaDisItemClick:Z

.field private mIsMultiChoice:Z

.field private mIsSetView:Z

.field private mIsSingleChoice:Z

.field private mIsViewButtonRtl:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessageCharSequence:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeFlag:Z

.field private mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveFlag:Z

.field private mSingleChoiceItemLayout:I

.field private mTitleCharSequence:Ljava/lang/CharSequence;

.field private mTitleTemplate:Landroid/widget/LinearLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopPanel:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mPositiveFlag:Z

    .line 57
    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNegativeFlag:Z

    .line 62
    iput v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconId:I

    .line 67
    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSetView:Z

    .line 76
    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsMultiChoice:Z

    .line 77
    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    .line 78
    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsDiaDisItemClick:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCheckedItem:I

    .line 473
    new-instance v0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$2;-><init>(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mHandler:Landroid/os/Handler;

    .line 491
    new-instance v0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$3;-><init>(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 87
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->resetNubiaAlertDialogLayout()V

    .line 88
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    .line 89
    const-string v0, "layout_inflater"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f11006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleTemplate:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f11004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleView:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContentPanel:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mMessageView:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomPanel:Landroid/widget/FrameLayout;

    .line 100
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomView:Landroid/widget/FrameLayout;

    .line 101
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f1100c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f110011

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mDateAndTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .line 107
    invoke-static {p1}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsViewButtonRtl:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsDiaDisItemClick:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private apply()V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->setupTitle()Z

    .line 538
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->setupContent()V

    .line 539
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->setupButtons()Z

    .line 540
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mView:Landroid/view/View;

    invoke-super {p0, v0}, Lcn/nubia/commonui/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 543
    :cond_0
    return-void
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 466
    .line 467
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 468
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 469
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 470
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    return-void
.end method

.method private createListView([Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    .line 273
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    .line 274
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    if-eqz v0, :cond_3

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mSingleChoiceItemLayout:I

    .line 276
    .local v3, "layout":I
    :goto_0
    new-instance v0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$CheckItemAdapter;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f1100d4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$CheckItemAdapter;-><init>(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 277
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;-><init>(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 296
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCheckedItem:I

    invoke-virtual {v0, v1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 298
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCheckedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 300
    :cond_2
    return-void

    .line 274
    .end local v3    # "layout":I
    :cond_3
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListItemLayout:I

    goto :goto_0

    .line 293
    .restart local v3    # "layout":I
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsMultiChoice:Z

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_1
.end method

.method private resetNubiaAlertDialogLayout()V
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f030039

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListLayout:I

    .line 124
    const v0, 0x7f03003c

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mSingleChoiceItemLayout:I

    .line 125
    const v0, 0x7f03003a

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListItemLayout:I

    .line 126
    return-void
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2
    .param p1, "mWindow"    # Landroid/view/Window;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 116
    .local v0, "mParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    return-void
.end method

.method private setupButtons()Z
    .locals 10

    .prologue
    const v9, 0x7f02008d

    const v8, 0x7f020088

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 399
    const/4 v2, 0x1

    .line 400
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 401
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 402
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 404
    .local v3, "whichButtons":I
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 405
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 413
    :goto_0
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 414
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 422
    :goto_1
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 423
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    :goto_2
    iget-boolean v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mPositiveFlag:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNegativeFlag:Z

    if-eqz v5, :cond_0

    .line 432
    iget-boolean v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsViewButtonRtl:Z

    if-eqz v5, :cond_6

    .line 433
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 434
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 435
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 436
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 446
    :cond_0
    :goto_3
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    if-ne v3, v2, :cond_7

    .line 448
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->centerButton(Landroid/widget/Button;)V

    .line 455
    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 407
    :cond_3
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    or-int/2addr v3, v2

    goto :goto_0

    .line 416
    :cond_4
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    or-int/2addr v3, v0

    goto :goto_1

    .line 425
    :cond_5
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    or-int/2addr v3, v1

    goto :goto_2

    .line 438
    :cond_6
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 439
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 440
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 441
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 449
    :cond_7
    if-ne v3, v0, :cond_8

    .line 450
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->centerButton(Landroid/widget/Button;)V

    goto :goto_4

    .line 451
    :cond_8
    if-ne v3, v1, :cond_1

    .line 452
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->centerButton(Landroid/widget/Button;)V

    goto :goto_4
.end method

.method private setupContent()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x8

    .line 516
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mMessageCharSequence:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mMessageCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->createListView([Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    :cond_0
    :goto_1
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 530
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSetView:Z

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupTitle()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 366
    const/4 v1, 0x1

    .line 367
    .local v1, "hasTitle":Z
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 368
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 371
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v3, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleTemplate:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return v1

    .line 374
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleCharSequence:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 375
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 376
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconId:I

    if-eqz v3, :cond_2

    .line 378
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 380
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    .line 383
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    .line 384
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    .line 385
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 382
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 386
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 389
    :cond_4
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleTemplate:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 459
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 460
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f01011c

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 462
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDateAndTimePickerView()Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mDateAndTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    return-object v0
.end method

.method public mycreate()Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0

    .prologue
    .line 356
    return-object p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->setMyPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .line 200
    :goto_0
    return-void

    .line 190
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->setMyNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    goto :goto_0

    .line 194
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->setMyNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDismissItemClick(Z)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0
    .param p1, "isDismiss"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsDiaDisItemClick:Z

    .line 340
    return-object p0
.end method

.method public setMyCancelable(Z)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 345
    return-object p0
.end method

.method public setMyCustomTitle(Landroid/view/View;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 141
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomTitleView:Landroid/view/View;

    .line 142
    return-object p0
.end method

.method public setMyIcon(I)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 146
    iput p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIconId:I

    .line 147
    return-object p0
.end method

.method public setMyIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 152
    return-object p0
.end method

.method public setMyItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    .line 319
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 320
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 321
    return-object p0
.end method

.method public setMyItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    .line 327
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 328
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 329
    return-object p0
.end method

.method public setMyMessage(I)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mMessageCharSequence:Ljava/lang/CharSequence;

    .line 167
    return-object p0
.end method

.method public setMyMessage(Ljava/lang/CharSequence;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mMessageCharSequence:Ljava/lang/CharSequence;

    .line 172
    return-object p0
.end method

.method public setMyMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 304
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsMultiChoice:Z

    .line 306
    return-object p0
.end method

.method public setMyMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 311
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsMultiChoice:Z

    .line 313
    return-object p0
.end method

.method public setMyNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNegativeFlag:Z

    .line 214
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 215
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 216
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    return-object p0
.end method

.method public setMyNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNegativeFlag:Z

    .line 205
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 206
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    return-object p0
.end method

.method public setMyNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 248
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 249
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 250
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    return-object p0
.end method

.method public setMyNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 240
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 241
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 242
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    return-object p0
.end method

.method public setMyOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 351
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-super {p0, v0}, Lcn/nubia/commonui/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 352
    return-object p0
.end method

.method public setMyPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mPositiveFlag:Z

    .line 232
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 233
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 234
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    return-object p0
.end method

.method public setMyPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mPositiveFlag:Z

    .line 223
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    return-object p0
.end method

.method public setMySingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    .line 257
    iput-object p3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 258
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 259
    iput p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCheckedItem:I

    .line 260
    return-object p0
.end method

.method public setMySingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSingleChoice:Z

    .line 266
    iput-object p3, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 267
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mItems:[Ljava/lang/CharSequence;

    .line 268
    iput p2, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCheckedItem:I

    .line 269
    return-object p0
.end method

.method public setMyTitle(I)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleCharSequence:Ljava/lang/CharSequence;

    .line 157
    return-object p0
.end method

.method public setMyTitle(Ljava/lang/CharSequence;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mTitleCharSequence:Ljava/lang/CharSequence;

    .line 162
    return-object p0
.end method

.method public setMyView(Landroid/view/View;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mIsSetView:Z

    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    return-object p0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->apply()V

    .line 361
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 362
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 363
    return-void
.end method
