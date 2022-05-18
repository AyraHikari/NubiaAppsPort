.class public Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;,
        Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    }
.end annotation


# static fields
.field private static final KEY_IMAGE:Ljava/lang/String; = "image>"

.field private static final KEY_RECORD:Ljava/lang/String; = "record>"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    .line 36
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "mFormatDataString":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 39
    return-void
.end method

.method private showChecklist(Ljava/lang/String;Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;)V
    .locals 5
    .param p1, "checked"    # Ljava/lang/String;
    .param p2, "viewHold"    # Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;

    .prologue
    const v4, 0x7f0d0007

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->checklist:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->checklist:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 268
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 269
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->checklist:Landroid/widget/ImageView;

    const v1, 0x7f020096

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 276
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 277
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007b

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->checklist:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 283
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 284
    iget-object v0, p2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method bind(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;ZLcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;I)V
    .locals 18
    .param p1, "item"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    .param p2, "isLastChild"    # Z
    .param p3, "viewHolder"    # Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    .param p4, "groupPosition"    # I

    .prologue
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "title":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 146
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 150
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 151
    .local v3, "checkedFlag":C
    const/16 v13, 0x30

    if-eq v3, v13, :cond_3

    const/16 v13, 0x31

    if-eq v3, v13, :cond_3

    const/16 v13, 0x32

    if-eq v3, v13, :cond_3

    .line 153
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0105

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 159
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0056

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_2
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getClassify()I

    move-result v4

    .line 175
    .local v4, "classify":I
    const/4 v13, 0x2

    if-ne v4, v13, :cond_a

    .line 176
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    const v14, 0x7f02007e

    .line 178
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_4
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 191
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 192
    .local v12, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_d

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00e9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    .line 194
    .local v7, "left":I
    iput v7, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    :goto_5
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "isNeedImage":Z
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getResource()Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "resource":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "image>"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 203
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->image:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->image:Landroid/widget/ImageView;

    const v14, 0x7f020092

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    const/4 v6, 0x1

    .line 210
    :goto_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "record>"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 211
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->record:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->record:Landroid/widget/ImageView;

    const v14, 0x7f0200a2

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    const/4 v6, 0x1

    .line 218
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getRemind()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getRemindTime()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_10

    .line 220
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->remind:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->remind:Landroid/widget/ImageView;

    const v14, 0x7f0200b7

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    const/4 v6, 0x1

    .line 227
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    .line 228
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->isCheckList:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->isCheckList:Landroid/widget/ImageView;

    const v14, 0x7f02005a

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    const/4 v6, 0x1

    .line 235
    :goto_9
    if-nez v6, :cond_12

    .line 236
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->attributeLayout:Landroid/widget/RelativeLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getModifyDate()J

    move-result-wide v8

    .line 251
    .local v8, "modifyDate":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "dateStr":Ljava/lang/String;
    invoke-static {v8, v9}, Lcn/nubia/notepad/utils/Util;->isToday(J)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v13, v8, v9}, Lcn/nubia/notepad/utils/Util;->getTimeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 258
    :goto_b
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    .end local v3    # "checkedFlag":C
    .end local v4    # "classify":I
    .end local v5    # "dateStr":Ljava/lang/String;
    .end local v6    # "isNeedImage":Z
    .end local v7    # "left":I
    .end local v8    # "modifyDate":J
    .end local v10    # "resource":Ljava/lang/String;
    .end local v12    # "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const-string v13, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->showChecklist(Ljava/lang/String;Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;)V

    goto/16 :goto_1

    .line 139
    :pswitch_1
    const-string v13, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->showChecklist(Ljava/lang/String;Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;)V

    goto/16 :goto_1

    .line 142
    :pswitch_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->showChecklist(Ljava/lang/String;Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;)V

    goto/16 :goto_1

    .line 155
    .restart local v3    # "checkedFlag":C
    :cond_3
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 160
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0106

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 161
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0057

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 162
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0107

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 163
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0059

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 164
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0108

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 165
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a005a

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0103

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 167
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0077

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 168
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0101

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 169
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a006e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 170
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0102

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 171
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0076

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 179
    .restart local v4    # "classify":I
    :cond_a
    const/4 v13, 0x3

    if-ne v4, v13, :cond_b

    .line 180
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    const v14, 0x7f02007c

    .line 182
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 183
    :cond_b
    const/4 v13, 0x4

    if-ne v4, v13, :cond_c

    .line 184
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    const v14, 0x7f02007d

    .line 186
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 188
    :cond_c
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 196
    .restart local v12    # "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00df

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    .line 197
    .restart local v7    # "left":I
    iput v7, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    .line 207
    .restart local v6    # "isNeedImage":Z
    .restart local v10    # "resource":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->image:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 215
    :cond_f
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->record:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 224
    :cond_10
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->remind:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 232
    :cond_11
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->isCheckList:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 238
    :cond_12
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->attributeLayout:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->attributeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    .local v2, "attributeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_13

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00e3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    .line 242
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 247
    :goto_c
    move-object/from16 v0, p3

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->attributeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    .line 244
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00df

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    .line 245
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_c

    .line 255
    .end local v2    # "attributeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "dateStr":Ljava/lang/String;
    .restart local v8    # "modifyDate":J
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const/high16 v14, 0x10000

    invoke-static {v13, v8, v9, v14}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_b

    .line 134
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 70
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    if-nez p4, :cond_0

    .line 78
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f03008c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 80
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;

    invoke-direct {v0, p4}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    .local v0, "holder":Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 86
    .local v1, "item":Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_1

    const/4 p3, 0x1

    .line 88
    :goto_1
    invoke-virtual {p0, v1, p3, v0, p1}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->bind(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;ZLcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;I)V

    .line 89
    return-object p4

    .line 83
    .end local v0    # "holder":Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    .end local v1    # "item":Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;

    .restart local v0    # "holder":Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    goto :goto_0

    .line 86
    .restart local v1    # "item":Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    :cond_1
    const/4 p3, 0x0

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpandable"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    if-nez p3, :cond_0

    .line 120
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 122
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;

    invoke-direct {v0, p3}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    .local v0, "holder":Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->bind(ILjava/lang/String;)V

    .line 128
    return-object p3

    .line 125
    .end local v0    # "holder":Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;

    .restart local v0    # "holder":Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
    goto :goto_0
.end method

.method public getTotalItemCount()I
    .locals 3

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "totalItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public updateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 46
    .local v0, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0    # "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
