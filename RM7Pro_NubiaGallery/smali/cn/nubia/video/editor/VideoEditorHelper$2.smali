.class Lcn/nubia/video/editor/VideoEditorHelper$2;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator$OnErrorListener;


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

    .line 153
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcn/nubia/video/editor/VideoEditorHelper$2$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/editor/VideoEditorHelper$2$1;-><init>(Lcn/nubia/video/editor/VideoEditorHelper$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$700(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/editor/SlomoVideoEditor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$600(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->cancel(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$800(Lcn/nubia/video/editor/VideoEditorHelper;)V

    return-void
.end method
