.class Lcn/nubia/video/editor/VideoEditorHelper$3$1;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/VideoEditorHelper$3;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;


# direct methods
.method constructor <init>(Lcn/nubia/video/editor/VideoEditorHelper$3;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    iget-object p1, p1, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1, p2}, Lcn/nubia/video/editor/VideoEditorHelper;->access$202(Lcn/nubia/video/editor/VideoEditorHelper;Landroid/net/Uri;)Landroid/net/Uri;

    .line 200
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    iget-object p1, p1, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1000(Lcn/nubia/video/editor/VideoEditorHelper;)V

    .line 201
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    iget-object p1, p1, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    iget-object p2, p2, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p2}, Lcn/nubia/video/editor/VideoEditorHelper;->access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
