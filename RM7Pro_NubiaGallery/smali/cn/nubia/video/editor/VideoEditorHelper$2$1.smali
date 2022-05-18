.class Lcn/nubia/video/editor/VideoEditorHelper$2$1;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/VideoEditorHelper$2;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/editor/VideoEditorHelper$2;


# direct methods
.method constructor <init>(Lcn/nubia/video/editor/VideoEditorHelper$2;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$2$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$2$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$2;

    iget-object v0, v0, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper$2$1;->this$1:Lcn/nubia/video/editor/VideoEditorHelper$2;

    iget-object v1, v1, Lcn/nubia/video/editor/VideoEditorHelper$2;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100124

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
