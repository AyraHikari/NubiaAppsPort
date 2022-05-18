.class public Lcn/nubia/cloud/db/CloudDbUtils;
.super Ljava/lang/Object;
.source "CloudDbUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final STATE_BEGIN:I = 0x1

.field public static final STATE_DONE:I = 0x2

.field public static final STATE_ERROR:I = 0x0

.field public static final STATE_PROGRESS:I = 0x3

.field public static final TYPE_LIST_DONE:I = 0x2

.field public static final TYPE_LIST_UNDONE:I = 0x1

.field public static final TYPE_SOURCE_FILE:I = 0x2

.field public static final TYPE_SOURCE_FOLDER:I = 0x1

.field public static final TYPE_TASK_DOWNLOAD:I = 0x2

.field public static final TYPE_TASK_UPLOAD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteTaskByTaskId(Landroid/content/Context;I)V
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 148
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static deleteTaskByTaskType(Landroid/content/Context;I)V
    .locals 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tasktype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "taskid"

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 132
    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getCloudTaskContentValues(Lcn/nubia/improve/xcloud/CloudTask;)Landroid/content/ContentValues;
    .locals 3

    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/CloudTask;->getTaskID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "taskid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/CloudTask;->getTaskType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tasktype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/CloudTask;->getSourceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sourcetype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/CloudTask;->getCloudPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clouddata"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/CloudTask;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "localdata"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/CloudTask;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    invoke-virtual {p0}, Lcn/nubia/improve/xcloud/CloudTask;->getDoneTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "datetaken"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private static getDoneListSelection()Ljava/lang/String;
    .locals 1

    const-string v0, "state=\'2\'"

    return-object v0
.end method

.method private static getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;
    .locals 0

    .line 160
    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static getGalleryDbHelperCursor(Landroid/content/Context;II)Landroid/database/Cursor;
    .locals 9

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tasktype=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const-string v1, " AND "

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/cloud/db/CloudDbUtils;->getDoneListSelection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "datetaken DESC "

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/cloud/db/CloudDbUtils;->getUndoneListSelection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "state DESC "

    goto :goto_0

    .line 103
    :goto_1
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getTaskList(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/improve/xcloud/CloudTask;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 167
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcn/nubia/improve/xcloud/CloudTask;

    invoke-direct {v0, p1}, Lcn/nubia/improve/xcloud/CloudTask;-><init>(Landroid/database/Cursor;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_0
    throw p0

    :cond_1
    if-eqz p1, :cond_2

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p0
.end method

.method private static getUndoneListSelection()Ljava/lang/String;
    .locals 1

    const-string v0, "(state=\'1\' OR state=\'3\' OR state=\'0\')"

    return-object v0
.end method

.method public static insertTask(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    const-string v0, "taskid"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    invoke-static {p0, v0}, Lcn/nubia/cloud/db/CloudDbUtils;->isTaskExist(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const-string v0, "cloudtask"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-void
.end method

.method private static isTaskExist(Landroid/content/Context;I)Z
    .locals 2

    .line 182
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 185
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 189
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static queryTaskByTaskId(Landroid/content/Context;I)Lcn/nubia/improve/xcloud/CloudTask;
    .locals 4

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 46
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Lcn/nubia/improve/xcloud/CloudTask;

    invoke-direct {v0, p0}, Lcn/nubia/improve/xcloud/CloudTask;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_2
    throw p1
.end method

.method public static queryTasksByType(Landroid/content/Context;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcn/nubia/improve/xcloud/CloudTask;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tasktype=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const-string v1, " AND "

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/cloud/db/CloudDbUtils;->getDoneListSelection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "datetaken DESC "

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/cloud/db/CloudDbUtils;->getUndoneListSelection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "state DESC "

    goto :goto_0

    .line 79
    :goto_1
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Lcn/nubia/cloud/db/CloudDbUtils;->getTaskList(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static updateTaskByTaskId(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 3

    .line 155
    invoke-static {p0}, Lcn/nubia/cloud/db/CloudDbUtils;->getGalleryDbHelper(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "taskid=?"

    .line 155
    invoke-virtual {p0, v0, p2, p1, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
