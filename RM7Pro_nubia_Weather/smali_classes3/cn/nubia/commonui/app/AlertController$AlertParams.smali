.class public Lcn/nubia/commonui/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsContentDividerVisibleParams:Z

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcn/nubia/commonui/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 959
    iput v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconAttrId:I

    .line 982
    iput-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 986
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 994
    iput-boolean v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 995
    iput-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsContentDividerVisibleParams:Z

    .line 1012
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1013
    iput-boolean v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    .line 1014
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1015
    return-void
.end method

.method private createListView(Lcn/nubia/commonui/app/AlertController;)V
    .locals 10
    .param p1, "dialog"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1079
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1080
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$900(Lcn/nubia/commonui/app/AlertController;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/app/AlertController$RecycleListView;

    .line 1083
    .local v6, "listView":Lcn/nubia/commonui/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    invoke-static {p1, v1}, Lcn/nubia/commonui/app/AlertController;->access$1002(Lcn/nubia/commonui/app/AlertController;Z)Z

    .line 1084
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    invoke-static {p1, v1}, Lcn/nubia/commonui/app/AlertController;->access$1102(Lcn/nubia/commonui/app/AlertController;Z)Z

    .line 1085
    const-string v1, "AlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createListView: mIsSingleChoice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsMultiChoice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 1087
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 1088
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1089
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$1200(Lcn/nubia/commonui/app/AlertController;)I

    move-result v3

    sget v4, Lcn/nubia/commonui/R$id;->text1:I

    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/app/AlertController$AlertParams$1;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcn/nubia/commonui/app/AlertController$RecycleListView;)V

    .line 1141
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcn/nubia/commonui/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcn/nubia/commonui/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcn/nubia/commonui/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1148
    :cond_0
    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertController;->access$1502(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1149
    iget v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/app/AlertController;->access$1602(Lcn/nubia/commonui/app/AlertController;I)I

    .line 1151
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1152
    new-instance v1, Lcn/nubia/commonui/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/commonui/app/AlertController$AlertParams$3;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Lcn/nubia/commonui/app/AlertController;)V

    invoke-virtual {v6, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1175
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 1176
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1179
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1180
    invoke-virtual {v6, v9}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1184
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcn/nubia/commonui/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1185
    invoke-static {p1, v6}, Lcn/nubia/commonui/app/AlertController;->access$1702(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1186
    return-void

    .line 1103
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/commonui/app/AlertController$AlertParams$2;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/commonui/app/AlertController$RecycleListView;Lcn/nubia/commonui/app/AlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1130
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    .line 1131
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$1300(Lcn/nubia/commonui/app/AlertController;)I

    move-result v2

    .line 1132
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 1133
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1131
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$1400(Lcn/nubia/commonui/app/AlertController;)I

    move-result v2

    goto :goto_3

    .line 1133
    .restart local v2    # "layout":I
    :cond_7
    new-instance v0, Lcn/nubia/commonui/app/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$id;->text1:I

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1136
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v4, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v7, v4, v5

    new-array v7, v9, [I

    sget v8, Lcn/nubia/commonui/R$id;->text1:I

    aput v8, v7, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1161
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 1162
    new-instance v1, Lcn/nubia/commonui/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcn/nubia/commonui/app/AlertController$AlertParams$4;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Lcn/nubia/commonui/app/AlertController$RecycleListView;Lcn/nubia/commonui/app/AlertController;)V

    invoke-virtual {v6, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1181
    :cond_a
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1182
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcn/nubia/commonui/app/AlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    const/4 v3, 0x0

    .line 1018
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1019
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1034
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsContentDividerVisibleParams:Z

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setContentDivider(Z)V

    .line 1035
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1038
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1039
    const/4 v0, -0x1

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1042
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1043
    const/4 v0, -0x2

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1046
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1047
    const/4 v0, -0x3

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1050
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 1051
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1055
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 1056
    :cond_6
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertController$AlertParams;->createListView(Lcn/nubia/commonui/app/AlertController;)V

    .line 1058
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1059
    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_d

    .line 1060
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 1076
    :cond_8
    :goto_1
    return-void

    .line 1021
    :cond_9
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 1022
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1024
    :cond_a
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1025
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1027
    :cond_b
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_c

    .line 1028
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    .line 1030
    :cond_c
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_0

    .line 1031
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1063
    :cond_d
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1065
    :cond_e
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_8

    .line 1066
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setView(I)V

    goto :goto_1
.end method
