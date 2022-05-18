.class Lcn/nubia/video/editor/VideoEditorHelper$3;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/VideoEditorHelper;->hwVideoEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/editor/VideoEditorHelper;


# direct methods
.method constructor <init>(Lcn/nubia/video/editor/VideoEditorHelper;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    const-string v0, "VideoEditorHelper"

    const-string v1, "onComplete"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$902(Lcn/nubia/video/editor/VideoEditorHelper;Z)Z

    .line 193
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->release()V

    .line 194
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$600(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    new-instance v4, Lcn/nubia/video/editor/VideoEditorHelper$3$1;

    invoke-direct {v4, p0}, Lcn/nubia/video/editor/VideoEditorHelper$3$1;-><init>(Lcn/nubia/video/editor/VideoEditorHelper$3;)V

    invoke-static {v2, v3, v0, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$300(Lcn/nubia/video/editor/VideoEditorHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcn/nubia/video/editor/VideoEditorHelper$3$2;

    invoke-direct {v2, p0}, Lcn/nubia/video/editor/VideoEditorHelper$3$2;-><init>(Lcn/nubia/video/editor/VideoEditorHelper$3;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 216
    :catch_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoEditorHelper;->access$600(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$800(Lcn/nubia/video/editor/VideoEditorHelper;)V

    return-void

    :goto_1
    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$800(Lcn/nubia/video/editor/VideoEditorHelper;)V

    .line 220
    throw v0
.end method
