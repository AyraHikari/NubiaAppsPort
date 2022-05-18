.class Lcn/nubia/cloud/storage/common/bean/FileInfo$1;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/bean/FileInfo;->loadThumbnail(Lcn/nubia/cloud/storage/common/CloudStorage;IIILcn/nubia/cloud/utils/SimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/bean/FileInfo;

.field final synthetic val$height:I

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;

.field final synthetic val$quality:I

.field final synthetic val$storage:Lcn/nubia/cloud/storage/common/CloudStorage;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/bean/FileInfo;IILcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/storage/common/CloudStorage;I)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->this$0:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iput p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$width:I

    iput p3, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$height:I

    iput-object p4, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    iput-object p5, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$storage:Lcn/nubia/cloud/storage/common/CloudStorage;

    iput p6, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$quality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 102
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->this$0:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-object v0, v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->this$0:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-object v0, v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$width:I

    iget v3, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$height:I

    invoke-static {v0, v2, v3}, Lcn/nubia/cloud/storage/common/utils/ImageLoaderUtil;->loadFromFd(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    new-instance v2, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;-><init>(ILjava/lang/String;)V

    .line 107
    iput-object v0, v2, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-interface {v0, v2}, Lcn/nubia/cloud/utils/SimpleListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_1
    iget-object v3, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$storage:Lcn/nubia/cloud/storage/common/CloudStorage;

    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->this$0:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-object v4, v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    iget v5, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$quality:I

    iget v6, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$width:I

    iget v7, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$height:I

    iget-object v8, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-interface/range {v3 .. v8}, Lcn/nubia/cloud/storage/common/CloudStorage;->thumbnail(Ljava/lang/String;IIILcn/nubia/cloud/utils/SimpleListener;)V

    :goto_1
    return-void
.end method
