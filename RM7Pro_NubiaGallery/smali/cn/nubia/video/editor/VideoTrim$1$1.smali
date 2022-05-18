.class Lcn/nubia/video/editor/VideoTrim$1$1;
.super Ljava/lang/Object;
.source "VideoTrim.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/VideoTrim$1;->trim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/editor/VideoTrim$1;


# direct methods
.method constructor <init>(Lcn/nubia/video/editor/VideoTrim$1;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    .line 205
    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    iget-object p1, p1, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoTrim;->access$400(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    move-result-object p1

    const/16 p2, 0x3ec

    invoke-interface {p1, p2}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimError(I)V

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    iget-object p2, p2, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {p2}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object p2

    iget-object p2, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    iget-object p2, p2, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {p2}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object p2

    iget-object p2, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p2, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    iget-object p2, p2, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {p2, p1}, Lcn/nubia/video/editor/VideoTrim;->access$500(Lcn/nubia/video/editor/VideoTrim;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoTrim$1;->access$600(Lcn/nubia/video/editor/VideoTrim$1;)V

    .line 210
    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    iget-object p1, p1, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoTrim;->access$400(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim$1$1;->this$1:Lcn/nubia/video/editor/VideoTrim$1;

    iget-object v0, v0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimComplete(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
