.class public Lcom/zte/mifavor/widget/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public mColor:I

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mInfoButtonListener:Landroid/view/View$OnClickListener;

.field public mInfoButtonText:Ljava/lang/CharSequence;

.field public mIsCheckedColumn:Ljava/lang/String;

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

.field public mOnPrepareListViewListener:Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;

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

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1053
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    .line 1055
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconAttrId:I

    .line 1080
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    .line 1084
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    const/4 v1, 0x1

    .line 1092
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1094
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mColor:I

    .line 1097
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1098
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    .line 1099
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lcom/zte/mifavor/widget/AlertController;)V
    .locals 10

    .line 1184
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1185
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$1100(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    .line 1188
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 1189
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 1190
    new-instance v9, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1191
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$1200(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v4

    const v5, 0x1020014

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/zte/mifavor/widget/AlertController$RecycleListView;)V

    goto :goto_3

    .line 1205
    :cond_0
    new-instance v9, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/zte/mifavor/widget/AlertController$RecycleListView;Lcom/zte/mifavor/widget/AlertController;)V

    goto :goto_3

    .line 1232
    :cond_1
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    .line 1233
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$1300(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$1400(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v1

    goto :goto_0

    .line 1234
    :goto_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v2, 0x1020014

    if-nez v1, :cond_4

    .line 1235
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1238
    :cond_4
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    new-array v7, v8, [I

    aput v2, v7, v9

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    :goto_2
    move-object v9, v1

    .line 1243
    :goto_3
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_5

    .line 1244
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1250
    :cond_5
    invoke-static {p1, v9}, Lcom/zte/mifavor/widget/AlertController;->access$1502(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1251
    iget v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/zte/mifavor/widget/AlertController;->access$1602(Lcom/zte/mifavor/widget/AlertController;I)I

    .line 1253
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    .line 1254
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController;)V

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    .line 1263
    :cond_6
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    .line 1264
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController$RecycleListView;Lcom/zte/mifavor/widget/AlertController;)V

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1277
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    .line 1278
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1281
    :cond_8
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_9

    .line 1282
    invoke-virtual {v0, v8}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_5

    .line 1283
    :cond_9
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 1284
    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1286
    :cond_a
    :goto_5
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean p0, v0, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1287
    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->access$1702(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lcom/zte/mifavor/widget/AlertController;)V
    .locals 7

    .line 1103
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1110
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mColor:I

    if-eq v0, v1, :cond_2

    .line 1111
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mColor:I

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setTitleColor(I)V

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_4

    .line 1118
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    .line 1120
    :cond_4
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconAttrId:I

    if-lez v0, :cond_5

    .line 1121
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    .line 1124
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 1125
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1127
    :cond_6
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1128
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1131
    :cond_7
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v0, -0x2

    .line 1132
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1135
    :cond_8
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    const/4 v0, -0x3

    .line 1136
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1139
    :cond_9
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mForceInverseBackground:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1140
    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/AlertController;->setInverseBackgroundForced(Z)V

    .line 1144
    :cond_a
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_10

    :cond_b
    const/4 v0, 0x0

    .line 1145
    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$1002(I)I

    .line 1146
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1147
    invoke-static {}, Lcom/zte/mifavor/widget/AlertController;->access$1000()I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$1002(I)I

    .line 1149
    :cond_c
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1150
    invoke-static {}, Lcom/zte/mifavor/widget/AlertController;->access$1000()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$1002(I)I

    .line 1152
    :cond_d
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1153
    invoke-static {}, Lcom/zte/mifavor/widget/AlertController;->access$1000()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$1002(I)I

    .line 1155
    :cond_e
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/zte/mifavor/widget/AlertController;->access$1000()I

    move-result v0

    if-nez v0, :cond_f

    .line 1156
    sget v0, Lcom/zte/extres/R$attr;->recycleListViewStyle:I

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$902(I)I

    .line 1158
    :cond_f
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/AlertController$AlertParams;->createListView(Lcom/zte/mifavor/widget/AlertController;)V

    .line 1160
    :cond_10
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 1161
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_11

    .line 1162
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1165
    :cond_11
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1167
    :cond_12
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_13

    .line 1168
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setView(I)V

    .line 1170
    :cond_13
    :goto_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInfoButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 1171
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInfoButtonText:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInfoButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, p0}, Lcom/zte/mifavor/widget/AlertController;->setInfoButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_14
    return-void
.end method
