.class public Lcn/nubia/notepad/adapter/NotePadListAdapter;
.super Landroid/widget/CursorAdapter;
.source "NotePadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotePadListAdapter"


# instance fields
.field private mContentsData:Lcn/nubia/notepad/utils/ContentsData;

.field private mContext:Landroid/content/Context;

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mIsActionMode:Z

.field private mIsRevertMode:Z

.field private mIsSearchMode:Z

.field private mNotesData:Lcn/nubia/notepad/utils/NotesData;

.field private mQuerySpannableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/SpannableStringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryText:Ljava/lang/String;

.field private mSelectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mSelectedItem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mlabelData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "from"    # [Ljava/lang/String;
    .param p4, "to"    # [I
    .param p5, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Lcom/nostra13/universalimageloader/core/DisplayImageOptions;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p6, "labelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 56
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcn/nubia/notepad/utils/NotesData;

    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData;

    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/ContentsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    .line 60
    iput-object p5, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 61
    iput-object p6, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mlabelData:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method private getLabelTitleById(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 290
    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mlabelData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 291
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 292
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v1

    .line 295
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showTitle(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;)V
    .locals 16
    .param p1, "note"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .param p2, "viewHolder"    # Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, "title":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getBuildTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "secondTitle":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "null"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 204
    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mSecondTitle:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mIsSearchMode:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, "isTitleSearch":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 215
    .local v10, "startIndex":I
    add-int/lit8 v13, v10, -0xa

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 216
    .local v8, "start":I
    invoke-virtual {v12, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "searchTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 218
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    .local v6, "spannable":Landroid/text/SpannableStringBuilder;
    :try_start_0
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0085

    .line 224
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    .line 226
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v10

    .line 227
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    .line 226
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v15, 0x21

    .line 221
    invoke-virtual {v6, v13, v10, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const/4 v2, 0x1

    .line 237
    .end local v3    # "searchTitle":Ljava/lang/String;
    .end local v6    # "spannable":Landroid/text/SpannableStringBuilder;
    .end local v8    # "start":I
    .end local v10    # "startIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 239
    .local v11, "startIndex2":I
    add-int/lit8 v13, v11, -0xa

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 240
    .local v9, "start2":I
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "searchTitle2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 242
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    .local v7, "spannable2":Landroid/text/SpannableStringBuilder;
    :try_start_1
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0085

    .line 248
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    .line 250
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v11

    .line 251
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    .line 250
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v15, 0x21

    .line 245
    invoke-virtual {v7, v13, v11, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :goto_2
    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .end local v2    # "isTitleSearch":Z
    .end local v4    # "searchTitle2":Ljava/lang/String;
    .end local v7    # "spannable2":Landroid/text/SpannableStringBuilder;
    .end local v9    # "start2":I
    .end local v11    # "startIndex2":I
    :cond_1
    return-void

    .line 207
    :cond_2
    move-object/from16 v0, p2

    iget-object v13, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mSecondTitle:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 229
    .restart local v2    # "isTitleSearch":Z
    .restart local v3    # "searchTitle":Ljava/lang/String;
    .restart local v6    # "spannable":Landroid/text/SpannableStringBuilder;
    .restart local v8    # "start":I
    .restart local v10    # "startIndex":I
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 253
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "searchTitle":Ljava/lang/String;
    .end local v6    # "spannable":Landroid/text/SpannableStringBuilder;
    .end local v8    # "start":I
    .end local v10    # "startIndex":I
    .restart local v4    # "searchTitle2":Ljava/lang/String;
    .restart local v7    # "spannable2":Landroid/text/SpannableStringBuilder;
    .restart local v9    # "start2":I
    .restart local v11    # "startIndex2":I
    :catch_1
    move-exception v1

    .line 254
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private updateStatusForActionMode(Landroid/widget/CheckBox;I)V
    .locals 2
    .param p1, "cb"    # Landroid/widget/CheckBox;
    .param p2, "key"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    return-void
.end method

.method private updateStatusForNormal(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "cb"    # Landroid/widget/CheckBox;

    .prologue
    .line 279
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 281
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 282
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;

    .line 114
    .local v10, "viewHolder":Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;
    if-eqz p3, :cond_0

    .line 115
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v0, p3}, Lcn/nubia/notepad/utils/NotesData;->getNoteDataByCursor(Landroid/database/Cursor;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v9

    .line 116
    .local v9, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    if-nez v9, :cond_1

    .line 196
    .end local v9    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v9    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_1
    :try_start_0
    invoke-direct {p0, v9, v10}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->showTitle(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    iget-boolean v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 127
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mImgFrameLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v3, v3, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mImageList:Ljava/util/List;

    const/4 v4, 0x0

    .line 130
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v2, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/16 v4, 0x96

    const/16 v5, 0x96

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;II)V

    .line 134
    iget-object v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 135
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mImgCount:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mImgCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mImageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v1    # "uri":Ljava/lang/String;
    :goto_2
    iget-boolean v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRecord:Z

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrRecord:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :goto_3
    iget-boolean v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    if-eqz v0, :cond_6

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 152
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrRemind:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :goto_4
    iget-boolean v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    if-eqz v0, :cond_7

    .line 158
    const v0, 0x7f02009c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    :goto_5
    iget v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 164
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrChecked:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :goto_6
    iget v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    invoke-direct {p0, v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getLabelTitleById(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "label":Ljava/lang/String;
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrlabel:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-wide v2, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {p2, v2, v3}, Lcn/nubia/notepad/utils/Util;->getDateStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "dateStr":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-wide v2, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {p2, v2, v3}, Lcn/nubia/notepad/utils/Util;->getTimeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 184
    :cond_2
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-boolean v0, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mIsActionMode:Z

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    invoke-direct {p0, v0, v2}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->updateStatusForActionMode(Landroid/widget/CheckBox;I)V

    .line 192
    :goto_7
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrTime:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 122
    .end local v6    # "dateStr":Ljava/lang/String;
    .end local v8    # "label":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 123
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 138
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_3
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mImgCount:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 141
    .end local v1    # "uri":Ljava/lang/String;
    :cond_4
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mImgFrameLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 147
    :cond_5
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrRecord:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 154
    :cond_6
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrRemind:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 160
    :cond_7
    const v0, 0x7f02009d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 166
    :cond_8
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrChecked:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 189
    .restart local v6    # "dateStr":Ljava/lang/String;
    .restart local v8    # "label":Ljava/lang/String;
    :cond_9
    iget-object v0, v10, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->updateStatusForNormal(Landroid/widget/CheckBox;)V

    goto :goto_7
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 66
    const-string v0, "NotePadListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNoteId(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/utils/NotesData;->getNoteIdByCursor(Landroid/database/Cursor;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 84
    const v2, 0x7f030034

    invoke-static {p1, v2, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;

    invoke-direct {v1, p0, v3}, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/adapter/NotePadListAdapter;Lcn/nubia/notepad/adapter/NotePadListAdapter$1;)V

    .line 87
    .local v1, "viewHolder":Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;
    const v2, 0x7f0f00dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mMainTitle:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0f00de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mSecondTitle:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0f00e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mImgCount:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0f00e2

    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrRecord:Landroid/widget/ImageView;

    .line 92
    const v2, 0x7f0f00e3

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrRemind:Landroid/widget/ImageView;

    .line 94
    const v2, 0x7f0f00e1

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrChecked:Landroid/widget/ImageView;

    .line 96
    const v2, 0x7f0f00ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrlabel:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0f00e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrTime:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0f00e7

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 100
    const v2, 0x7f0f00e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrImage:Landroid/widget/ImageView;

    .line 102
    const v2, 0x7f0f00e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mImgFrameLayout:Landroid/view/View;

    .line 104
    const v2, 0x7f0f00df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mAttrLinearLayout:Landroid/widget/LinearLayout;

    .line 105
    const v2, 0x7f0f00dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->mListItemLayout:Landroid/widget/LinearLayout;

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    return-object v0
.end method

.method public setIsActionMode(Z)V
    .locals 0
    .param p1, "actionMode"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mIsActionMode:Z

    .line 300
    return-void
.end method

.method public setIsRevertMode(Z)V
    .locals 0
    .param p1, "revert"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mIsRevertMode:Z

    .line 320
    return-void
.end method

.method public setIsSearchMode(Z)V
    .locals 0
    .param p1, "searchMode"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mIsSearchMode:Z

    .line 304
    return-void
.end method

.method public setQuerySpannableMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/text/SpannableStringBuilder;>;"
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQuerySpannableMap:Ljava/util/Map;

    .line 316
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mQueryText:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setSelectMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectMap:Ljava/util/HashMap;

    .line 308
    return-void
.end method
