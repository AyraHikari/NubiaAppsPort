.class public Lcn/nubia/notepad/provider/GlobalSearchProvider;
.super Landroid/content/ContentProvider;
.source "GlobalSearchProvider.java"


# static fields
.field private static final NOTES_SUGGESTS:I = 0x1

.field private static final SEARCH_AUTHRORITY:Ljava/lang/String; = "cn.nubia.notepad.GlobalSearchProvider"

.field private static final SUGGEST_COLUMN_TEXT_3:Ljava/lang/String; = "suggest_column_text_3"

.field private static final TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefalutTip2:Ljava/lang/String;

.field private mDefalutTip3:Ljava/lang/String;

.field private mDefalutTip5:Ljava/lang/String;

.field private mDefaultTip6:Ljava/lang/String;

.field private mNotesData:Lcn/nubia/notepad/utils/NotesData;

.field private suggestResult:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 29
    const-class v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.notepad.GlobalSearchProvider"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.notepad.GlobalSearchProvider"

    const-string v2, "search_suggest_query/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.notepad.GlobalSearchProvider"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_column_text_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->suggestResult:[Ljava/lang/String;

    return-void
.end method

.method private createSearchRelultTitle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "queryResult"    # Ljava/lang/String;
    .param p2, "queryText"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    const/4 v8, 0x0

    .line 209
    const-string v0, ""

    .line 210
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 211
    .local v4, "length":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 212
    .local v3, "index":I
    add-int/lit8 v6, v3, -0xa

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 213
    .local v5, "start":I
    div-int/lit8 v6, p3, 0x2

    sub-int v7, v4, v3

    .line 214
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v2, v3, v6

    .line 215
    .local v2, "end":I
    if-nez v5, :cond_0

    .line 216
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 219
    :cond_0
    :try_start_0
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private parseQuery(Landroid/database/MatrixCursor;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "mMatrixCursor"    # Landroid/database/MatrixCursor;
    .param p2, "note"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "noteContent"    # Ljava/lang/String;
    .param p5, "queryText"    # Ljava/lang/String;

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 178
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 180
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    .line 181
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v13

    div-int v10, v12, v13

    .line 182
    .local v10, "textWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 184
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 185
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 186
    .local v9, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0072

    .line 188
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v7, v12

    .line 190
    .local v7, "padding":I
    mul-int/lit8 v12, v7, 0x2

    sub-int v11, v9, v12

    .line 192
    .local v11, "viewWidth":I
    div-int v4, v11, v10

    .line 194
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {v12, v14, v15}, Lcn/nubia/notepad/utils/Util;->getDateStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "dateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00a6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {v12, v14, v15}, Lcn/nubia/notepad/utils/Util;->getTimeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 199
    :cond_0
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p3, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->createSearchRelultTitle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget v15, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    .line 202
    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    move-object/from16 v0, p2

    iget v14, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    .line 203
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 199
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method private parseQuery(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 9
    .param p1, "mMatrixCursor"    # Landroid/database/MatrixCursor;
    .param p2, "queryText"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip2:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip3:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip5:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefaultTip6:Ljava/lang/String;

    .line 125
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v7, "noteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;>;"
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    const-string v1, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcn/nubia/notepad/utils/NotesData;->getNotesData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 127
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 128
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 129
    .local v2, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    iget-object v0, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 130
    iget-object v0, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "text"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v4, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 135
    .local v4, "noteContent":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip2:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v3, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip2:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip2:Ljava/lang/String;

    .end local v4    # "noteContent":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->parseQuery(Landroid/database/MatrixCursor;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .restart local v4    # "noteContent":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip3:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v3, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip3:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip3:Ljava/lang/String;

    .end local v4    # "noteContent":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->parseQuery(Landroid/database/MatrixCursor;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .restart local v4    # "noteContent":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip5:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v3, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip5:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefalutTip5:Ljava/lang/String;

    .end local v4    # "noteContent":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->parseQuery(Landroid/database/MatrixCursor;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .restart local v4    # "noteContent":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefaultTip6:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v3, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefaultTip6:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mDefaultTip6:Ljava/lang/String;

    .end local v4    # "noteContent":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->parseQuery(Landroid/database/MatrixCursor;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .restart local v4    # "noteContent":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_7
    iget-object v3, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->parseQuery(Landroid/database/MatrixCursor;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v2    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .end local v4    # "noteContent":Ljava/lang/String;
    .end local v6    # "index":I
    :cond_8
    return-void
.end method

.method private startSearch(Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .locals 2
    .param p1, "mQueryText"    # Ljava/lang/String;
    .param p2, "mMatrixCursor"    # Landroid/database/MatrixCursor;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->parseQuery(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 68
    sget-object v0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/multinotes"

    return-object v0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcn/nubia/notepad/utils/NotesData;

    iget-object v1, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "mMatrixCursor":Landroid/database/MatrixCursor;
    sget-object v2, Lcn/nubia/notepad/provider/GlobalSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    new-instance v0, Landroid/database/MatrixCursor;

    .end local v0    # "mMatrixCursor":Landroid/database/MatrixCursor;
    iget-object v2, p0, Lcn/nubia/notepad/provider/GlobalSearchProvider;->suggestResult:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 83
    .restart local v0    # "mMatrixCursor":Landroid/database/MatrixCursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "query":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcn/nubia/notepad/provider/GlobalSearchProvider;->startSearch(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
