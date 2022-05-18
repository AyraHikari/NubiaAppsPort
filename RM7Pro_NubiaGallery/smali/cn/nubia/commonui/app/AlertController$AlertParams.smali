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

.field public mMaxHeightRatio:F

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
    .locals 2

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1030
    iput v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 1032
    iput v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconAttrId:I

    .line 1055
    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v1, -0x1

    .line 1059
    iput v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 v1, 0x1

    .line 1067
    iput-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1068
    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsContentDividerVisibleParams:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 1069
    iput v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMaxHeightRatio:F

    .line 1086
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1087
    iput-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    .line 1088
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lcn/nubia/commonui/app/AlertController;)V
    .locals 10

    .line 1156
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1157
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$900(Lcn/nubia/commonui/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/app/AlertController$RecycleListView;

    .line 1160
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    invoke-static {p1, v1}, Lcn/nubia/commonui/app/AlertController;->access$1002(Lcn/nubia/commonui/app/AlertController;Z)Z

    .line 1161
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    invoke-static {p1, v1}, Lcn/nubia/commonui/app/AlertController;->access$1102(Lcn/nubia/commonui/app/AlertController;Z)Z

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createListView: mIsSingleChoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsMultiChoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 1164
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 1165
    new-instance v9, Lcn/nubia/commonui/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1166
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$1200(Lcn/nubia/commonui/app/AlertController;)I

    move-result v4

    const v5, 0x7f090187

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/commonui/app/AlertController$AlertParams$1;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcn/nubia/commonui/app/AlertController$RecycleListView;)V

    goto :goto_2

    .line 1180
    :cond_0
    new-instance v9, Lcn/nubia/commonui/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/commonui/app/AlertController$AlertParams$2;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/commonui/app/AlertController$RecycleListView;Lcn/nubia/commonui/app/AlertController;)V

    goto :goto_2

    .line 1207
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    .line 1208
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$1300(Lcn/nubia/commonui/app/AlertController;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$1400(Lcn/nubia/commonui/app/AlertController;)I

    move-result v1

    :goto_0
    move v4, v1

    .line 1209
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v2, 0x7f090187

    if-nez v1, :cond_4

    .line 1210
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcn/nubia/commonui/app/AlertController$CheckedItemAdapter;

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v1, v3, v4, v2, v5}, Lcn/nubia/commonui/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_1
    move-object v9, v1

    goto :goto_2

    .line 1213
    :cond_4
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    new-array v1, v8, [I

    aput v2, v1, v7

    move-object v2, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1218
    :goto_2
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcn/nubia/commonui/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_5

    .line 1219
    invoke-interface {v1, v0}, Lcn/nubia/commonui/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1225
    :cond_5
    invoke-static {p1, v9}, Lcn/nubia/commonui/app/AlertController;->access$1502(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1226
    iget v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/app/AlertController;->access$1602(Lcn/nubia/commonui/app/AlertController;I)I

    .line 1228
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    .line 1229
    new-instance v1, Lcn/nubia/commonui/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/commonui/app/AlertController$AlertParams$3;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Lcn/nubia/commonui/app/AlertController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    .line 1238
    :cond_6
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    .line 1239
    new-instance v1, Lcn/nubia/commonui/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v0, p1}, Lcn/nubia/commonui/app/AlertController$AlertParams$4;-><init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Lcn/nubia/commonui/app/AlertController$RecycleListView;Lcn/nubia/commonui/app/AlertController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1252
    :cond_7
    :goto_3
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    .line 1253
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1256
    :cond_8
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_9

    .line 1257
    invoke-virtual {v0, v8}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_4

    .line 1258
    :cond_9
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 1259
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1261
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1262
    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertController;->access$1702(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/commonui/app/AlertController;)V
    .locals 7

    .line 1092
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 1095
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1096
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1098
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    .line 1102
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    .line 1104
    :cond_3
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    .line 1105
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setIcon(I)V

    .line 1108
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsContentDividerVisibleParams:Z

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setContentDivider(Z)V

    .line 1109
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMaxHeightRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_5

    .line 1110
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setMaxHeightRatio(F)V

    .line 1112
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 1113
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1115
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, -0x1

    .line 1116
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1119
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v2, -0x2

    .line 1120
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1123
    :cond_8
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    const/4 v2, -0x3

    .line 1124
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1127
    :cond_9
    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 1128
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1132
    :cond_a
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 1133
    :cond_b
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertController$AlertParams;->createListView(Lcn/nubia/commonui/app/AlertController;)V

    .line 1135
    :cond_c
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 1136
    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_d

    .line 1137
    iget v3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1140
    :cond_d
    invoke-virtual {p1, v2}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1142
    :cond_e
    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_f

    .line 1143
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertController;->setView(I)V

    :cond_f
    :goto_1
    return-void
.end method
