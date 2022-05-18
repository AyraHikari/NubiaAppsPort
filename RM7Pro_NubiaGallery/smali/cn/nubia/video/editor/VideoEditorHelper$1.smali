.class Lcn/nubia/video/editor/VideoEditorHelper$1;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 135
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$1;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    new-instance v0, Lcn/nubia/gallery3d/video/VideoToast;

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper$1;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100294

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    return-void
.end method
