.class Lcn/nubia/video/editor/VideoEditorHelper$4;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator$OnProgressListener;


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

    .line 225
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$4;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(J)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$4;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$4;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method
