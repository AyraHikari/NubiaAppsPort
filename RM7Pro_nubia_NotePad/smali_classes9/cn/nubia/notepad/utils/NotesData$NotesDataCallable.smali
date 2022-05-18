.class Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;
.super Ljava/lang/Object;
.source "NotesData.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/utils/NotesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotesDataCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final DELETE:I = 0x1

.field public static final DELETE_LABEL:I = 0x6

.field public static final INSERT:I = 0x0

.field public static final INSERT_LABEL:I = 0x5

.field public static final UPDATE:I = 0x2

.field public static final UPDATE_LABEL_BELONG:I = 0x8

.field public static final UPDATE_LABEL_NAME:I = 0x7

.field public static final UPDATE_REMIND:I = 0x4

.field public static final UPDATE_TOP:I = 0x3


# instance fields
.field private mIsKilled:Z

.field private mValues:Landroid/content/ContentValues;

.field private noteId:I

.field private notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

.field private originalResource:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/notepad/utils/NotesData;

.field private type:I

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/utils/NotesData;IILandroid/content/ContentValues;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "noteId"    # I
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1180
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    iput p2, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->type:I

    .line 1182
    iput-object p4, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    .line 1183
    iput p3, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->noteId:I

    .line 1184
    return-void
.end method

.method public constructor <init>(Lcn/nubia/notepad/utils/NotesData;IILcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "noteId"    # I
    .param p4, "notesDate"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .param p5, "originalResource"    # Ljava/lang/String;
    .param p6, "killed"    # Z

    .prologue
    .line 1172
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    iput p2, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->type:I

    .line 1174
    iput-object p4, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 1175
    iput-object p5, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    .line 1176
    iput p3, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->noteId:I

    .line 1177
    iput-boolean p6, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mIsKilled:Z

    .line 1178
    return-void
.end method

.method public constructor <init>(Lcn/nubia/notepad/utils/NotesData;ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;

    .prologue
    .line 1165
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    iput p2, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->type:I

    .line 1167
    iput-object p3, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    .line 1168
    iput-object p4, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    .line 1169
    return-void
.end method

.method public constructor <init>(Lcn/nubia/notepad/utils/NotesData;ILcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "notesData"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .prologue
    .line 1155
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    iput p2, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->type:I

    .line 1157
    iput-object p3, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 1158
    return-void
.end method

.method public constructor <init>(Lcn/nubia/notepad/utils/NotesData;ILjava/lang/String;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "where"    # Ljava/lang/String;

    .prologue
    .line 1160
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    iput p2, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->type:I

    .line 1162
    iput-object p3, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    .line 1163
    return-void
.end method

.method private deleteFromDB(Ljava/lang/String;)V
    .locals 15
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 1390
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "_id in("

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v8, "deleteBuffer":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "_id in("

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v13, "markBuffer":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "hasDelete":Z
    const/4 v11, 0x0

    .line 1394
    .local v11, "hasMark":Z
    const/4 v6, 0x0

    .line 1396
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v0}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "server_id"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1400
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1434
    :cond_0
    if-eqz v6, :cond_1

    .line 1435
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1436
    const/4 v6, 0x0

    .line 1439
    :cond_1
    :goto_0
    return-void

    .line 1403
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1404
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 1405
    const/4 v10, 0x1

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1431
    :catch_0
    move-exception v9

    .line 1432
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1434
    if-eqz v6, :cond_1

    .line 1435
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1436
    const/4 v6, 0x0

    goto :goto_0

    .line 1408
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v11, 0x1

    .line 1409
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1434
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1435
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1436
    const/4 v6, 0x0

    .line 1438
    :cond_4
    throw v0

    .line 1412
    :cond_5
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1413
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1416
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1419
    .local v7, "delete":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 1420
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v0}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1424
    :cond_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1425
    .local v12, "mark":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 1426
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1427
    .local v14, "values":Landroid/content/ContentValues;
    const-string v0, "deleted"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1428
    const-string v0, "modify"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1429
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v0}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v14, v12, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1434
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_7
    if-eqz v6, :cond_1

    .line 1435
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1436
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private getLabelIdByTitle(Ljava/lang/String;)I
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1380
    iget-object v3, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v3, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelList(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1381
    .local v1, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 1382
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1383
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    .line 1386
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :cond_1
    return v2
.end method

.method private insertNoteLabel()I
    .locals 5

    .prologue
    .line 1443
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v2}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1445
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    .line 1448
    .end local v0    # "contentUri":Landroid/net/Uri;
    :goto_0
    return v2

    .line 1446
    :catch_0
    move-exception v1

    .line 1447
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1448
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 20

    .prologue
    .line 1188
    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->type:I

    packed-switch v14, :pswitch_data_0

    .line 1376
    :cond_0
    :goto_0
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :cond_1
    :goto_1
    return-object v14

    .line 1191
    :pswitch_0
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-direct {v3, v14}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1193
    .local v3, "contentsDataOriginal":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcn/nubia/notepad/utils/NotesData;->access$000(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;J)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-static {v14, v15, v2}, Lcn/nubia/notepad/utils/NotesData;->access$100(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1197
    .local v9, "resource":Ljava/lang/String;
    const-string v10, ""

    .line 1198
    .local v10, "secondTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14, v3}, Lcn/nubia/notepad/utils/NotesData;->access$200(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v7

    .line 1199
    .local v7, "noteTitle":Ljava/lang/String;
    const-string v14, "@#&%!%&#@"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1200
    const-string v14, "@#&%!%&#@"

    .line 1201
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1202
    .local v4, "data":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v7, v4, v14

    .line 1203
    array-length v14, v4

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    .line 1204
    const/4 v14, 0x1

    aget-object v10, v4, v14

    .line 1208
    .end local v4    # "data":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v15}, Lcn/nubia/notepad/utils/NotesData;->access$300(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getBuildTitleRemoveFlag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1210
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@#&%-%&#@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1213
    :cond_3
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1214
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "title"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v14, "second_title"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v14, "content"

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v14, "created"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v0, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1218
    const-string v14, "modified"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v0, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1219
    const-string v14, "classify"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1220
    const-string v14, "resource"

    invoke-virtual {v13, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v15, "remind"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-boolean v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    const-string v14, "remind_time"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v0, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1223
    const-string v14, "mode"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    const-string v14, "top"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-boolean v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1225
    const-string v14, "extra_1"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1228
    .local v8, "noteUri":Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto/16 :goto_1

    .line 1221
    .end local v8    # "noteUri":Landroid/net/Uri;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1229
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "contentsDataOriginal":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    .end local v7    # "noteTitle":Ljava/lang/String;
    .end local v9    # "resource":Ljava/lang/String;
    .end local v10    # "secondTitle":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 1230
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1235
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    sget-object v15, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "resource"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v18}, Lcn/nubia/notepad/utils/NotesData;->access$500(Lcn/nubia/notepad/utils/NotesData;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->deleteFromDB(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1240
    :catch_1
    move-exception v5

    .line 1241
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1245
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcn/nubia/notepad/utils/NotesData;->access$000(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;J)Ljava/lang/String;

    move-result-object v2

    .line 1247
    .restart local v2    # "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-static {v14, v15, v2}, Lcn/nubia/notepad/utils/NotesData;->access$100(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1249
    .restart local v9    # "resource":Ljava/lang/String;
    const-string v14, "NotePadNotesData"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resource:="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", originalResource:="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string v10, ""

    .line 1252
    .restart local v10    # "secondTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-static {v14, v15}, Lcn/nubia/notepad/utils/NotesData;->access$200(Lcn/nubia/notepad/utils/NotesData;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v7

    .line 1253
    .restart local v7    # "noteTitle":Ljava/lang/String;
    const-string v14, "@#&%!%&#@"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1254
    const-string v14, "@#&%!%&#@"

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1255
    .restart local v4    # "data":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v7, v4, v14

    .line 1256
    array-length v14, v4

    const/4 v15, 0x1

    if-le v14, v15, :cond_5

    .line 1257
    const/4 v14, 0x1

    aget-object v10, v4, v14

    .line 1260
    .end local v4    # "data":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v15}, Lcn/nubia/notepad/utils/NotesData;->access$300(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getBuildTitleRemoveFlag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1263
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@#&%-%&#@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1265
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mIsKilled:Z

    if-eqz v14, :cond_a

    .line 1266
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$300(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcn/nubia/notepad/service/NotePadKillService;

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1267
    .local v6, "intent":Landroid/content/Intent;
    const-string v14, "type"

    const/16 v15, 0x3e8

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1268
    const-string v14, "noteId"

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->noteId:I

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1269
    const-string v14, "title"

    invoke-virtual {v6, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    const-string v14, "second_title"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const-string v14, "classify"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1272
    const-string v14, "resource"

    invoke-virtual {v6, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    const-string v15, "remind"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-boolean v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v6, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    const-string v14, "remind_time"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v0, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1275
    const-string v14, "mode"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1276
    const-string v14, "extra_1"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1277
    const-string v14, "content"

    invoke-virtual {v6, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const-string v14, "modified"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v0, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1279
    const-string v16, "top"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-boolean v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 1282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v18, 0x3e8

    div-long v14, v14, v18

    .line 1279
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1283
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1a

    if-lt v14, v15, :cond_9

    .line 1284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$300(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1288
    :goto_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mIsKilled:Z

    .line 1289
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1273
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 1282
    :cond_8
    const-wide/16 v14, 0x0

    goto :goto_4

    .line 1286
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$300(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    .line 1291
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_a
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1292
    .restart local v13    # "values":Landroid/content/ContentValues;
    const-string v14, "title"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v14, "second_title"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v14, "classify"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1295
    const-string v14, "resource"

    invoke-virtual {v13, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v15, "remind"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-boolean v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_b

    const/4 v14, 0x1

    :goto_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    const-string v14, "remind_time"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v0, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1298
    const-string v14, "mode"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1299
    const-string v14, "extra_1"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    const-string v14, "modify"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1301
    const-string v14, "content"

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v14, "modified"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v0, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1303
    const-string v16, "top"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->notesData:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-boolean v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v18, 0x3e8

    div-long v14, v14, v18

    .line 1305
    :goto_7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1303
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1308
    :try_start_2
    sget-object v14, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->noteId:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1310
    .restart local v8    # "noteUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v8, v13, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 1314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcn/nubia/notepad/utils/NotesData;->access$600(Lcn/nubia/notepad/utils/NotesData;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1296
    .end local v8    # "noteUri":Landroid/net/Uri;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 1306
    :cond_c
    const-wide/16 v14, 0x0

    goto :goto_7

    .line 1311
    :catch_2
    move-exception v5

    .line 1312
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    invoke-static {v14, v15}, Lcn/nubia/notepad/utils/NotesData;->access$600(Lcn/nubia/notepad/utils/NotesData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1314
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 1315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->originalResource:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcn/nubia/notepad/utils/NotesData;->access$600(Lcn/nubia/notepad/utils/NotesData;Ljava/lang/String;)V

    .line 1317
    :cond_d
    throw v14

    .line 1321
    .end local v2    # "content":Ljava/lang/String;
    .end local v7    # "noteTitle":Ljava/lang/String;
    .end local v9    # "resource":Ljava/lang/String;
    .end local v10    # "secondTitle":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :pswitch_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    const-string v15, "modify"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v14

    goto/16 :goto_1

    .line 1324
    :catch_3
    move-exception v5

    .line 1325
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1330
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    const-string v15, "modify"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v14

    goto/16 :goto_1

    .line 1333
    :catch_4
    move-exception v5

    .line 1334
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1338
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->insertNoteLabel()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_1

    .line 1341
    :pswitch_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->deleteFromDB(Ljava/lang/String;)V

    .line 1343
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    .local v12, "value":Landroid/content/ContentValues;
    const-string v14, "modify"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1345
    const-string v14, "extra_1"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v15}, Lcn/nubia/notepad/utils/NotesData;->access$300(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0a0076

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->getLabelIdByTitle(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    const-string v15, "_id"

    const-string v16, "extra_1"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    .line 1347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v12, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 1348
    .end local v12    # "value":Landroid/content/ContentValues;
    :catch_5
    move-exception v5

    .line 1349
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1355
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extra_1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->noteId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1356
    .local v11, "selection":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1357
    .restart local v12    # "value":Landroid/content/ContentValues;
    const-string v14, "modify"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v11, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1359
    sget-object v14, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->noteId:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1361
    .restart local v8    # "noteUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v8, v15, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v14

    goto/16 :goto_1

    .line 1362
    .end local v8    # "noteUri":Landroid/net/Uri;
    .end local v11    # "selection":Ljava/lang/String;
    .end local v12    # "value":Landroid/content/ContentValues;
    :catch_6
    move-exception v5

    .line 1363
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1368
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->this$0:Lcn/nubia/notepad/utils/NotesData;

    invoke-static {v14}, Lcn/nubia/notepad/utils/NotesData;->access$400(Lcn/nubia/notepad/utils/NotesData;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->mValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/utils/NotesData$NotesDataCallable;->where:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v14

    goto/16 :goto_1

    .line 1369
    :catch_7
    move-exception v5

    .line 1370
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
