.class Lcn/nubia/video/editor/VideoEditorHelper$3$2;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 205
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$2;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 208
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$2;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    iget-object v0, v0, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$2;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    iget-object v1, v1, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/video/editor/VideoEditorHelper$3$2;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$3;

    iget-object v3, v3, Lcn/nubia/video/editor/VideoEditorHelper$3;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    .line 209
    invoke-static {v3}, Lcn/nubia/video/editor/VideoEditorHelper;->access$600(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1001d6

    .line 208
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
