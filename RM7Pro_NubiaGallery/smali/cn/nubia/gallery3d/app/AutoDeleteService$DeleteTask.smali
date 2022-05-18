.class Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;
.super Ljava/lang/Object;
.source "AutoDeleteService.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AutoDeleteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mTaskType:I

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AutoDeleteService;I)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;->this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p2, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;->mTaskType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 11

    const-string v0, " Utils.closeSilently(cursor);"

    const-string v1, "llw"

    const-string v2, "AutoDeleteService"

    const-string v3, "DeleteTask run"

    .line 199
    invoke-static {v2, v3}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget v3, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;->mTaskType:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 203
    :cond_0
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;->this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;

    .line 204
    invoke-virtual {v3}, Lcn/nubia/gallery3d/app/AutoDeleteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v3

    .line 207
    :try_start_0
    invoke-virtual {v3}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->queryExpiredData()Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v6, "Recycled database open failed."

    .line 210
    invoke-static {v2, v6}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    :goto_0
    if-eqz v6, :cond_5

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    .line 216
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 217
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 219
    :cond_1
    new-instance v8, Ljava/io/File;

    .line 220
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-static {v8}, Lcn/nubia/gallery3d/util/GalleryUtils;->deleteFile(Ljava/io/File;)Z

    .line 221
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 223
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 224
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v9

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 226
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->delete(Ljava/lang/String;)V

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete started...(count = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v9

    .line 233
    :cond_4
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v6}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 233
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v6}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 235
    throw p1

    .line 242
    :cond_5
    :goto_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;->this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AutoDeleteService;->access$000(Lcn/nubia/gallery3d/app/AutoDeleteService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v4
.end method
