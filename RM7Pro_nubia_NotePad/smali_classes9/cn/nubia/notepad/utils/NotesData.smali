.class public Lcn/nubia/notepad/utils/NotesData;
.super Ljava/lang/Object;
.source "NotesData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;,
        Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT_INDEX:I = 0x3

.field public static final NOTEPAD_CLASSIFY_ALL:I = 0x0

.field public static final NOTEPAD_CLASSIFY_LABEL:I = 0x3e8

.field public static final NOTEPAD_CLASSIFY_LIFE:I = 0x3

.field public static final NOTEPAD_CLASSIFY_NEW:I = -0x1

.field public static final NOTEPAD_CLASSIFY_TEMP:I = 0x4

.field public static final NOTEPAD_CLASSIFY_WORK:I = 0x2

.field public static final NOTEPAD_LABEL_A:I = -0x1

.field public static final NOTEPAD_LABEL_B:I = -0x2

.field public static final NOTEPAD_LABEL_C:I = -0x3

.field public static final NOTEPAD_LABEL_COUNT:I = 0x4

.field public static final NOTEPAD_LABEL_DEFAULT:I = 0x0

.field public static final NOTEPAD_LABEL_QUERY:I = 0x5

.field public static final NOTEPAD_MODE_CHECKLIST:I = 0x1

.field public static final NOTEPAD_MODE_NUMBER:I = 0x3

.field public static final NOTEPAD_MODE_SHORT_LINE:I = 0x2

.field public static final NOTEPAD_MODE_TEXT:I = 0x0

.field public static final NOTEPAD_MODE_TITLE:I = 0x4

.field public static final NOTEPAD_MODE_TITLE_CHECKLIST:I = 0x5

.field public static final NOTEPAD_MODE_TITLE_NUMBER:I = 0x7

.field public static final NOTEPAD_MODE_TITLE_SHORT_LINE:I = 0x6

.field public static final NOTEPAD_UNCLASSIFIED:I = 0x1

.field public static final NOTE_LABEL_COUNT_PROJECTION:[Ljava/lang/String;

.field public static final NOTE_LABEL_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NotePadNotesData"

.field private static executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final NOTE_PROJECTION:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContentsData:Lcn/nubia/notepad/utils/ContentsData;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "extra_1"

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_PROJECTION:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "extra_1"

    aput-object v1, v0, v4

    const-string v1, "COUNT(*) AS call_count"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "modified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "classify"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "resource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "remind"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "top"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "extra_1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "second_title"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->NOTE_PROJECTION:[Ljava/lang/String;

    .line 295
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    .line 296
    sget-object v0, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 297
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 299
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContentResolver:Landroid/content/ContentResolver;

    .line 300
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData;

    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/ContentsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    .line 301
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesData;
    .param p1, "x1"    # Ljava/util/LinkedList;
    .param p2, "x2"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/notepad/utils/NotesData;->setContentsData(Ljava/util/LinkedList;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesData;
    .param p1, "x1"    # Ljava/util/LinkedList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/utils/NotesData;->createResourceFiles(Ljava/util/LinkedList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesData;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/notepad/utils/NotesData;->createTitle(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesData;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesData;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/notepad/utils/NotesData;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesData;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/notepad/utils/NotesData;->deleteResourceFiles(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/notepad/utils/NotesData;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/notepad/utils/NotesData;->deleteResourceFiles(Ljava/lang/String;)V

    return-void
.end method

.method private createResourceFiles(Ljava/util/LinkedList;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 994
    .local v1, "resourceFileName":Ljava/lang/StringBuilder;
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1000
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v3, "image"

    .line 1001
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1002
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v3, "record"

    .line 1003
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    :cond_0
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createTitle(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 894
    .local p1, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    const-string v16, ""

    .line 895
    .local v16, "title":Ljava/lang/String;
    const/4 v13, 0x0

    .line 896
    .local v13, "recordCount":I
    const/4 v10, 0x0

    .line 897
    .local v10, "imageCount":I
    const/4 v5, 0x0

    .line 898
    .local v5, "firstTitleIndex":I
    const/4 v8, 0x0

    .local v8, "hasRecord":Z
    const/4 v7, 0x0

    .line 899
    .local v7, "hasImage":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    .line 900
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "text"

    .line 901
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 902
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 903
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 904
    .local v6, "firstTitleString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 905
    move-object/from16 v16, v6

    .line 906
    move v5, v9

    .line 907
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 908
    .local v3, "content":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 910
    .local v12, "index":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v12

    .line 909
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 911
    .local v15, "secondTitleString":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 912
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x28

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "@#&%!%&#@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 915
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v5, v2}, Lcn/nubia/notepad/utils/NotesData;->addCheckedToTitle(Ljava/lang/String;ILjava/util/LinkedList;)Ljava/lang/String;

    move-result-object v16

    .line 961
    .end local v3    # "content":Ljava/lang/String;
    .end local v6    # "firstTitleString":Ljava/lang/String;
    .end local v12    # "index":I
    .end local v15    # "secondTitleString":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 962
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a0066

    .line 964
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, "enclosureStrFormat":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int v20, v10, v13

    .line 966
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 980
    .end local v4    # "enclosureStrFormat":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v16

    .line 919
    .restart local v6    # "firstTitleString":Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcn/nubia/notepad/utils/NotesData;->getLastTextIndex(Ljava/util/LinkedList;)I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    .line 899
    .end local v6    # "firstTitleString":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 922
    .restart local v6    # "firstTitleString":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 923
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x28

    .line 924
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "@#&%!%&#@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 923
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v5, v2}, Lcn/nubia/notepad/utils/NotesData;->addCheckedToTitle(Ljava/lang/String;ILjava/util/LinkedList;)Ljava/lang/String;

    move-result-object v16

    .line 928
    goto/16 :goto_1

    .line 931
    .end local v6    # "firstTitleString":Ljava/lang/String;
    :cond_5
    const-string v17, "@#&%!%&#@"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 932
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 933
    .restart local v15    # "secondTitleString":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 934
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x28

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "@#&%!%&#@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 936
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v5, v2}, Lcn/nubia/notepad/utils/NotesData;->addCheckedToTitle(Ljava/lang/String;ILjava/util/LinkedList;)Ljava/lang/String;

    move-result-object v16

    .line 937
    goto/16 :goto_1

    .line 939
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcn/nubia/notepad/utils/NotesData;->getLastTextIndex(Ljava/util/LinkedList;)I

    move-result v17

    move/from16 v0, v17

    if-lt v9, v0, :cond_3

    .line 942
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x28

    .line 943
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "@#&%!%&#@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v5, v2}, Lcn/nubia/notepad/utils/NotesData;->addCheckedToTitle(Ljava/lang/String;ILjava/util/LinkedList;)Ljava/lang/String;

    move-result-object v16

    .line 947
    goto/16 :goto_1

    .line 951
    .end local v15    # "secondTitleString":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "image"

    .line 952
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 953
    const/4 v7, 0x1

    .line 954
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 955
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "record"

    .line 956
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 957
    const/4 v8, 0x1

    .line 958
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 968
    :cond_9
    if-eqz v7, :cond_a

    if-nez v8, :cond_a

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a0067

    .line 970
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 971
    .local v11, "imageStrFormat":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 972
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 973
    goto/16 :goto_2

    .end local v11    # "imageStrFormat":Ljava/lang/String;
    :cond_a
    if-eqz v8, :cond_1

    if-nez v7, :cond_1

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a0068

    .line 975
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 976
    .local v14, "recordStrFormat":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 977
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2
.end method

.method private dealString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 859
    move-object v0, p1

    .line 860
    .local v0, "title":Ljava/lang/String;
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 863
    :cond_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 864
    const/4 v1, 0x0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 866
    :cond_2
    return-object v0
.end method

.method private dealTitleModeChecked(Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 984
    .local p1, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 985
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v1, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    const-string v2, "11"

    iput-object v2, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 984
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    :cond_1
    return-void
.end method

.method private deleteResourceFiles(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1039
    const/4 v7, 0x0

    .line 1041
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1043
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    :cond_0
    new-instance v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-direct {v11}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V

    .line 1046
    .local v11, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    const-string v1, "resource"

    .line 1047
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1046
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    .line 1048
    iget-object v1, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1069
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_2
    if-eqz v7, :cond_3

    .line 1075
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1078
    :cond_3
    :goto_0
    return-void

    .line 1051
    .restart local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_4
    :try_start_1
    new-instance v17, Ljava/util/StringTokenizer;

    iget-object v1, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    const-string v2, ">"

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .local v17, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .local v16, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1055
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1071
    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .end local v16    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "tokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v8

    .line 1072
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1074
    if-eqz v7, :cond_3

    .line 1075
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1057
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v16    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 1058
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1059
    .local v15, "substring":Ljava/lang/String;
    const/4 v14, 0x1

    .line 1060
    .local v14, "start":I
    const-string v1, "|"

    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1061
    .local v9, "end":I
    if-gt v14, v9, :cond_6

    .line 1062
    invoke-virtual {v15, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1064
    .local v12, "resourceFile":Ljava/lang/String;
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1065
    .local v13, "resourceType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    invoke-virtual {v1, v12, v13}, Lcn/nubia/notepad/utils/ContentsData;->deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1057
    .end local v12    # "resourceFile":Ljava/lang/String;
    .end local v13    # "resourceType":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1074
    .end local v9    # "end":I
    .end local v10    # "i":I
    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .end local v14    # "start":I
    .end local v15    # "substring":Ljava/lang/String;
    .end local v16    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "tokenizer":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    .line 1075
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1077
    :cond_7
    throw v1
.end method

.method private deleteResourceFiles(Ljava/lang/String;)V
    .locals 9
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 1015
    if-nez p1, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ">"

    invoke-direct {v7, p1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    .local v7, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v6, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1021
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1024
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1025
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1026
    .local v5, "substring":Ljava/lang/String;
    const/4 v4, 0x1

    .line 1027
    .local v4, "start":I
    const-string v8, "|"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1028
    .local v0, "end":I
    if-gt v4, v0, :cond_3

    .line 1029
    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "resourceFile":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1031
    .local v3, "resourceType":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/notepad/utils/NotesData;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    invoke-virtual {v8, v2, v3}, Lcn/nubia/notepad/utils/ContentsData;->deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1024
    .end local v2    # "resourceFile":Ljava/lang/String;
    .end local v3    # "resourceType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getLastTextIndex(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 850
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v1, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v2, "text"

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 849
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 855
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getNotesLabelCount()Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 812
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 813
    .local v8, "labelCount":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 815
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 818
    invoke-virtual {p0, v3, v4}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "top DESC, modified DESC"

    .line 815
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 821
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    const-string v0, "extra_1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    .line 823
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 822
    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 824
    const-string v0, "NotePadNotesData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotesLabelCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v0, "NotePadNotesData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotesLabelCount: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra_1"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 827
    :catch_0
    move-exception v7

    .line 828
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    if-eqz v6, :cond_0

    .line 831
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 832
    const/4 v6, 0x0

    .line 835
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v8

    .line 830
    :cond_1
    if-eqz v6, :cond_0

    .line 831
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 832
    const/4 v6, 0x0

    goto :goto_1

    .line 830
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 831
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 832
    const/4 v6, 0x0

    .line 834
    :cond_2
    throw v0
.end method

.method private getSelection(I)Ljava/lang/String;
    .locals 1
    .param p1, "curLabelId"    # I

    .prologue
    const/4 v0, 0x0

    .line 372
    if-nez p1, :cond_0

    .line 373
    invoke-virtual {p0, v0, v0}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isTitleMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 839
    if-eqz p1, :cond_1

    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "5"

    .line 840
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "12"

    .line 841
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "13"

    .line 842
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    :cond_0
    const/4 v0, 0x1

    .line 845
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setContentsData(Ljava/util/LinkedList;J)Ljava/lang/String;
    .locals 2
    .param p2, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    const-string v0, ""

    .line 656
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/notepad/utils/ContentsData;->setContentsData(Ljava/util/LinkedList;J)Ljava/lang/String;

    move-result-object v0

    .line 657
    return-object v0
.end method


# virtual methods
.method addCheckedToTitle(Ljava/lang/String;ILjava/util/LinkedList;)Ljava/lang/String;
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstTitleIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 871
    .local p3, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 872
    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v0, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 873
    .local v0, "checked":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 890
    .end local v0    # "checked":Ljava/lang/String;
    .end local p1    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 877
    .end local v1    # "title":Ljava/lang/String;
    .restart local v0    # "checked":Ljava/lang/String;
    .restart local p1    # "title":Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 878
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0    # "checked":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v1, p1

    .line 890
    .end local p1    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0

    .line 880
    .end local v1    # "title":Ljava/lang/String;
    .restart local v0    # "checked":Ljava/lang/String;
    .restart local p1    # "title":Ljava/lang/String;
    :cond_3
    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5"

    .line 882
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 883
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 881
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 886
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public deleteNoteData(Ljava/util/HashMap;)V
    .locals 6
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
    .line 313
    .local p1, "noteIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id in("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 318
    .local v2, "id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 321
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v1, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v3, 0x1

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;ILjava/lang/String;)V

    .line 325
    .local v1, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v3, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 326
    iget-object v3, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public deleteNoteLabelData(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1101
    .local p1, "noteIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id in("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1105
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1106
    .local v2, "id":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1108
    .end local v2    # "id":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1109
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    new-instance v1, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v3, 0x6

    .line 1112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;ILjava/lang/String;)V

    .line 1113
    .local v1, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v3, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public getContentsData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 3
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 663
    .local v1, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    :cond_0
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 666
    .local v0, "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const-string v2, "text"

    iput-object v2, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 667
    iput-object p2, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 668
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    :goto_0
    return-object v1

    .line 670
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/utils/NotesData;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    invoke-virtual {v2, p2}, Lcn/nubia/notepad/utils/ContentsData;->getContentsData(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    goto :goto_0
.end method

.method public getNoteDataByCursor(Landroid/database/Cursor;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 447
    const/4 v3, 0x0

    .line 448
    .local v3, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    if-nez p1, :cond_0

    move-object v4, v3

    .line 495
    .end local v3    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .local v4, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :goto_0
    return-object v4

    .line 452
    .end local v4    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v3    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_0
    new-instance v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .end local v3    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    invoke-direct {v3}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V

    .line 453
    .restart local v3    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    .line 454
    const-string v6, "title"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 455
    iget-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 456
    const-string v6, "2 "

    iput-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 458
    :cond_1
    const-string v6, "second_title"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    .line 459
    const-string v6, "resource"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    .line 460
    iget-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 461
    iget-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    const-string v9, "image"

    .line 462
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    .line 463
    iget-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    const-string v9, "record"

    .line 464
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRecord:Z

    .line 467
    :cond_2
    :try_start_0
    iget-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-boolean v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    if-eqz v6, :cond_5

    .line 468
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mImageList:Ljava/util/List;

    .line 469
    iget-object v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    const-string v9, ">"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "list":[Ljava/lang/String;
    array-length v9, v2

    move v6, v8

    :goto_1
    if-ge v6, v9, :cond_5

    aget-object v1, v2, v6

    .line 471
    .local v1, "item":Ljava/lang/String;
    const-string v10, "image"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 470
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 474
    :cond_4
    const/4 v10, 0x1

    const-string v11, "image"

    .line 475
    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .line 474
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcn/nubia/notepad/utils/NotesData;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v12, v12, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 477
    iget-object v10, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mImageList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 481
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "list":[Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v6, "created"

    .line 485
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 484
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    .line 486
    const-string v6, "modified"

    .line 487
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 486
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    .line 488
    const-string v6, "classify"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    .line 489
    const-string v6, "remind"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    .line 490
    const-string v6, "remind_time"

    .line 491
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 490
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    .line 492
    const-string v6, "mode"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    .line 493
    const-string v6, "top"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_7

    :goto_4
    iput-boolean v7, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    .line 494
    const-string v6, "extra_1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    move-object v4, v3

    .line 495
    .end local v3    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v4    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    goto/16 :goto_0

    .end local v4    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v3    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_6
    move v6, v8

    .line 489
    goto :goto_3

    :cond_7
    move v7, v8

    .line 493
    goto :goto_4
.end method

.method public getNoteDataById(I)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .locals 14
    .param p1, "noteId"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 499
    const/4 v7, 0x0

    .line 500
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 502
    .local v10, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    if-gez p1, :cond_0

    move-object v11, v10

    .line 555
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .local v11, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :goto_0
    return-object v11

    .line 507
    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_0
    :try_start_0
    sget-object v0, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 508
    .local v1, "noteUri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/notepad/utils/NotesData;->NOTE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 510
    if-eqz v7, :cond_5

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    new-instance v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-direct {v11}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    .line 514
    const-string v0, "title"

    .line 515
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 514
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 516
    const-string v0, "content"

    .line 517
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 516
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, "content":Ljava/lang/String;
    const-string v0, "resource"

    .line 519
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 518
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    .line 520
    iget-object v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcn/nubia/notepad/utils/NotesData;->getContentsData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    .line 521
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 522
    iget-object v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v2, "image"

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    .line 521
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 525
    :cond_2
    iget-object v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v2, "record"

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRecord:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 547
    .end local v6    # "content":Ljava/lang/String;
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    move-object v10, v11

    .line 548
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :goto_3
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    if-eqz v7, :cond_3

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    move-object v11, v10

    .line 555
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    goto/16 :goto_0

    .line 530
    .restart local v1    # "noteUri":Landroid/net/Uri;
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_4
    :try_start_3
    const-string v0, "created"

    .line 531
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 530
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    .line 532
    const-string v0, "modified"

    .line 533
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 532
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    .line 534
    const-string v0, "classify"

    .line 535
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 534
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    .line 536
    const-string v0, "remind"

    .line 537
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 536
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_6

    move v0, v12

    :goto_5
    iput-boolean v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    .line 538
    const-string v0, "remind_time"

    .line 539
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 538
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    .line 540
    const-string v0, "mode"

    .line 541
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    .line 542
    const-string v0, "top"

    .line 543
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v12

    :goto_6
    iput-boolean v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    .line 544
    const-string v0, "extra_1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v11

    .line 550
    .end local v6    # "content":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_5
    if-eqz v7, :cond_3

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_6
    move v0, v13

    .line 536
    goto :goto_5

    :cond_7
    move v0, v13

    .line 543
    goto :goto_6

    .line 550
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v6    # "content":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v7, :cond_8

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_8
    throw v0

    .line 550
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v1    # "noteUri":Landroid/net/Uri;
    .restart local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    goto :goto_7

    .line 547
    .end local v1    # "noteUri":Landroid/net/Uri;
    :catch_1
    move-exception v8

    goto/16 :goto_3
.end method

.method public getNoteIdByCursor(Landroid/database/Cursor;)I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 643
    const/4 v0, -0x1

    .line 644
    .local v0, "noteId":I
    if-nez p1, :cond_0

    move v1, v0

    .line 650
    .end local v0    # "noteId":I
    .local v1, "noteId":I
    :goto_0
    return v1

    .line 648
    .end local v1    # "noteId":I
    .restart local v0    # "noteId":I
    :cond_0
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v1, v0

    .line 650
    .end local v0    # "noteId":I
    .restart local v1    # "noteId":I
    goto :goto_0
.end method

.method public getNoteTitleById(I)Ljava/lang/String;
    .locals 14
    .param p1, "noteId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 559
    const/4 v7, 0x0

    .line 560
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v10, ""

    .line 562
    .local v10, "title":Ljava/lang/String;
    if-gez p1, :cond_0

    move-object v11, v10

    .line 603
    .end local v10    # "title":Ljava/lang/String;
    .local v11, "title":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 567
    .end local v11    # "title":Ljava/lang/String;
    .restart local v10    # "title":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v0, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 568
    .local v1, "noteUri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 573
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 579
    :cond_1
    if-eqz v7, :cond_2

    .line 580
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 584
    .end local v1    # "noteUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    const-string v0, "@#&%!%&#@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    const-string v0, "@#&%!%&#@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 586
    .local v8, "data":[Ljava/lang/String;
    aget-object v10, v8, v12

    .line 589
    .end local v8    # "data":[Ljava/lang/String;
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v11, v10

    .line 590
    .end local v10    # "title":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/String;
    goto :goto_0

    .line 576
    .end local v11    # "title":Ljava/lang/String;
    .restart local v10    # "title":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 577
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    if-eqz v7, :cond_2

    .line 580
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 579
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 580
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_4
    throw v0

    .line 593
    :cond_5
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 594
    .local v6, "checkedFlag":C
    const/16 v0, 0x30

    if-eq v6, v0, :cond_6

    const/16 v0, 0x31

    if-eq v6, v0, :cond_6

    const/16 v0, 0x32

    if-ne v6, v0, :cond_7

    .line 595
    :cond_6
    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 598
    :cond_7
    const-string v0, "@#&%-%&#@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 599
    const-string v0, "@#&%-%&#@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 600
    .restart local v8    # "data":[Ljava/lang/String;
    aget-object v10, v8, v13

    .end local v8    # "data":[Ljava/lang/String;
    :cond_8
    move-object v11, v10

    .line 603
    .end local v10    # "title":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNoteTopById(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "noteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 607
    const/4 v7, 0x0

    .line 608
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 610
    .local v10, "isTop":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v11, v10

    .line 639
    .end local v10    # "isTop":Z
    .local v11, "isTop":I
    :goto_0
    return v11

    .line 614
    .end local v11    # "isTop":I
    .restart local v10    # "isTop":Z
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_id in("

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .local v6, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 616
    .local v9, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 618
    .end local v9    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 619
    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "top"

    aput-object v4, v2, v3

    .line 625
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 622
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 626
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    :cond_3
    const-string v0, "top"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v10, v12

    .line 629
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 634
    :cond_4
    if-eqz v7, :cond_5

    .line 635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    move v11, v10

    .line 639
    .restart local v11    # "isTop":I
    goto :goto_0

    .end local v11    # "isTop":I
    :cond_6
    move v10, v13

    .line 628
    goto :goto_2

    .line 631
    :catch_0
    move-exception v8

    .line 632
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    if-eqz v7, :cond_5

    .line 635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 634
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_7
    throw v0
.end method

.method public getNotesData(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "revert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object p1

    .line 388
    :cond_0
    const/4 v7, 0x0

    .line 389
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v11, "notesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;>;"
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/notepad/utils/NotesData;->NOTE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    const-string v5, "top ASC, modified ASC"

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 395
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    const/4 v10, 0x0

    .line 398
    .local v10, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_1
    new-instance v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    invoke-direct {v10}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V

    .line 399
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    .line 400
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    .line 401
    const-string v0, "title"

    .line 402
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 401
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 403
    const-string v0, "content"

    .line 404
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 403
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "content":Ljava/lang/String;
    const-string v0, "resource"

    .line 406
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 405
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    .line 407
    iget-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcn/nubia/notepad/utils/NotesData;->getContentsData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    .line 408
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 409
    iget-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "image"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    .line 408
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 391
    .end local v6    # "content":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_3
    const-string v5, "top DESC, modified DESC"

    goto :goto_0

    .line 412
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_4
    iget-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "record"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRecord:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 435
    .end local v6    # "content":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :catch_0
    move-exception v8

    .line 436
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    if-eqz v7, :cond_5

    .line 439
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 443
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-object v11

    .line 417
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_6
    :try_start_2
    const-string v0, "created"

    .line 418
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 417
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    .line 419
    const-string v0, "modified"

    .line 420
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 419
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    .line 421
    const-string v0, "classify"

    .line 422
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 421
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    .line 423
    const-string v0, "remind"

    .line 424
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 423
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    .line 425
    const-string v0, "remind_time"

    .line 426
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 425
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    .line 427
    const-string v0, "mode"

    .line 428
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    .line 429
    const-string v0, "top"

    .line 430
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    .line 431
    const-string v0, "second_title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    .line 432
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 438
    .end local v6    # "content":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_7
    if-eqz v7, :cond_5

    .line 439
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 423
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 430
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 438
    .end local v6    # "content":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 439
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_a
    throw v0
.end method

.method public getNotesLabelList(Z)Ljava/util/ArrayList;
    .locals 17
    .param p1, "showCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v15, "mNotesLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    const/4 v7, 0x0

    .line 683
    .local v7, "count":I
    const/4 v14, 0x0

    .line 684
    .local v14, "mLabelCount":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 685
    invoke-direct/range {p0 .. p0}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelCount()Landroid/util/SparseArray;

    move-result-object v14

    .line 686
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 687
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v7, v1

    .line 686
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 691
    .end local v12    # "index":I
    :cond_0
    new-instance v13, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-direct {v13}, Lcn/nubia/notepad/utils/NotesLabelData;-><init>()V

    .line 692
    .local v13, "label":Lcn/nubia/notepad/utils/NotesLabelData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcn/nubia/notepad/utils/NotesLabelData;->setmTitle(Ljava/lang/String;)V

    .line 693
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcn/nubia/notepad/utils/NotesLabelData;->setmId(I)V

    .line 694
    invoke-virtual {v13, v7}, Lcn/nubia/notepad/utils/NotesLabelData;->setmCount(I)V

    .line 695
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    const/4 v8, 0x0

    .line 699
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_PROJECTION:[Ljava/lang/String;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    .line 702
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "top DESC, modified DESC"

    .line 699
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 705
    const/4 v10, 0x0

    .line 706
    .local v10, "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 708
    new-instance v10, Lcn/nubia/notepad/utils/NotesLabelData;

    .end local v10    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-direct {v10}, Lcn/nubia/notepad/utils/NotesLabelData;-><init>()V

    .line 709
    .restart local v10    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 711
    .local v11, "id":I
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/utils/NotesLabelData;->setmId(I)V

    .line 713
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 714
    .local v16, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 724
    :cond_1
    :goto_2
    const-string v1, "NotePadNotesData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotesLabelList: getColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcn/nubia/notepad/utils/NotesLabelData;->setmTitle(Ljava/lang/String;)V

    .line 727
    if-eqz v14, :cond_2

    .line 728
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v11, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Lcn/nubia/notepad/utils/NotesLabelData;->setmCount(I)V

    .line 730
    :cond_2
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 733
    .end local v10    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    .end local v11    # "id":I
    .end local v16    # "title":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 734
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    if-eqz v8, :cond_3

    .line 737
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 738
    const/4 v8, 0x0

    .line 741
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v15

    .line 717
    .restart local v10    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    .restart local v11    # "id":I
    .restart local v16    # "title":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 718
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 720
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 721
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    goto/16 :goto_2

    .line 736
    .end local v11    # "id":I
    .end local v16    # "title":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_3

    .line 737
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 738
    const/4 v8, 0x0

    goto :goto_3

    .line 736
    .end local v10    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    .line 737
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 738
    const/4 v8, 0x0

    .line 740
    :cond_7
    throw v1
.end method

.method public getNotesLabelListWithoutClassifyAll(Z)Ljava/util/ArrayList;
    .locals 15
    .param p1, "showCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v13, "mNotesLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    const/4 v6, 0x0

    .line 747
    .local v6, "count":I
    const/4 v12, 0x0

    .line 748
    .local v12, "mLabelCount":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 749
    invoke-direct {p0}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelCount()Landroid/util/SparseArray;

    move-result-object v12

    .line 750
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 751
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v6, v0

    .line 750
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 761
    .end local v11    # "index":I
    :cond_0
    const/4 v7, 0x0

    .line 763
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    .line 766
    invoke-virtual {p0, v3, v4}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "top DESC, modified DESC"

    .line 763
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 769
    const/4 v9, 0x0

    .line 770
    .local v9, "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 772
    new-instance v9, Lcn/nubia/notepad/utils/NotesLabelData;

    .end local v9    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-direct {v9}, Lcn/nubia/notepad/utils/NotesLabelData;-><init>()V

    .line 773
    .restart local v9    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 774
    .local v10, "id":I
    invoke-virtual {v9, v10}, Lcn/nubia/notepad/utils/NotesLabelData;->setmId(I)V

    .line 776
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 777
    .local v14, "title":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 779
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 788
    :cond_1
    :goto_2
    invoke-virtual {v9, v14}, Lcn/nubia/notepad/utils/NotesLabelData;->setmTitle(Ljava/lang/String;)V

    .line 790
    if-eqz v12, :cond_2

    .line 791
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v0}, Lcn/nubia/notepad/utils/NotesLabelData;->setmCount(I)V

    .line 793
    :cond_2
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 796
    .end local v9    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    .end local v10    # "id":I
    .end local v14    # "title":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 797
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    if-eqz v7, :cond_3

    .line 800
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 801
    const/4 v7, 0x0

    .line 804
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v13

    .line 780
    .restart local v9    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    .restart local v10    # "id":I
    .restart local v14    # "title":Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 783
    :cond_5
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    goto :goto_2

    .line 799
    .end local v10    # "id":I
    .end local v14    # "title":Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_3

    .line 800
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 801
    const/4 v7, 0x0

    goto :goto_3

    .line 799
    .end local v9    # "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 800
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 801
    const/4 v7, 0x0

    .line 803
    :cond_7
    throw v0
.end method

.method public getSelectionByType(II)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .param p2, "labelType"    # I

    .prologue
    .line 264
    const-string v0, ""

    .line 265
    .local v0, "selection":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 285
    const-string v0, "( classify != 1000 OR classify is null ) AND deleted = 0 AND attachment =1 "

    .line 291
    :goto_0
    return-object v0

    .line 267
    :sswitch_0
    const-string v0, "( classify != 1000 OR classify is null ) AND deleted = 0 AND attachment =1 "

    .line 270
    goto :goto_0

    .line 272
    :sswitch_1
    const-string v0, "classify = 1000 AND deleted = 0 AND attachment = 1 "

    .line 274
    goto :goto_0

    .line 276
    :sswitch_2
    const-string v0, "( classify != 1000 OR classify is null ) AND deleted = 0 AND attachment =1 ) GROUP BY (extra_1"

    .line 279
    goto :goto_0

    .line 281
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " =1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    goto :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public insertNoteData(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)I
    .locals 3
    .param p1, "notesData"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;ILcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V

    .line 307
    .local v0, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v2, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 308
    .local v1, "noteId":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 309
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public insertNoteLabel(Ljava/lang/String;)I
    .locals 5
    .param p1, "labelName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1082
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1083
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v3, "content"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v3, "classify"

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v2, v4}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 1088
    .local v0, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v3, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1089
    .local v1, "noteId":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method public updateNoteData(ILcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "noteId"    # I
    .param p2, "notesData"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .param p3, "originalResource"    # Ljava/lang/String;
    .param p4, "killed"    # Z

    .prologue
    .line 331
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;IILcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Z)V

    .line 333
    .local v0, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v1, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 335
    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 336
    return-void
.end method

.method public updateNoteDataForTop(Ljava/util/HashMap;Z)V
    .locals 10
    .param p2, "isTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "noteIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v7, 0x1

    .line 340
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "_id in("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 346
    .local v2, "id":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 348
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 349
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "top"

    if-ne p2, v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    const-string v4, "modify"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    new-instance v1, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v4, 0x3

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v4, v3, v5}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 358
    .local v1, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v4, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 359
    iget-object v4, p0, Lcn/nubia/notepad/utils/NotesData;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 352
    .end local v1    # "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method public updateNoteDateForRemind(IZ)V
    .locals 6
    .param p1, "noteId"    # I
    .param p2, "isRemind"    # Z

    .prologue
    .line 363
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "remind"

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v4, v2, v3}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 368
    .local v0, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v4, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 369
    .local v1, "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    return-void

    .line 364
    .end local v0    # "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    .end local v1    # "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    .end local v3    # "where":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateNoteLabelName(ILjava/lang/String;)V
    .locals 3
    .param p1, "noteId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1093
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1094
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2, p1, v1}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;IILandroid/content/ContentValues;)V

    .line 1097
    .local v0, "callable":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v2, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1098
    return-void
.end method

.method public updateNotesDataForBelongToLabel(Ljava/util/HashMap;I)V
    .locals 7
    .param p2, "labelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1117
    .local p1, "noteIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "_id in("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1122
    .local v2, "id":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1124
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1125
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1128
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "extra_1"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    const-string v4, "modify"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    new-instance v1, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;

    const/16 v4, 0x8

    .line 1132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v4, v3, v5}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;-><init>(Lcn/nubia/notepad/utils/NotesData;ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 1133
    .local v1, "callback":Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
    sget-object v4, Lcn/nubia/notepad/utils/NotesData;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
