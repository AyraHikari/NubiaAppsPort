.class final Lcn/nubia/notepad/cloud/NotePadCloudDbManager$1;
.super Ljava/lang/Object;
.source "NotePadCloudDbManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteUnuploadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 291
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcn/nubia/notepad/utils/FileHelper;->CLOULD_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v0    # "dir":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 297
    .local v3, "upload":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-eqz v4, :cond_0

    .line 300
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 301
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "upload":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
