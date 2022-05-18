.class Lcn/nubia/video/editor/VideoEditorHelper$5;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/VideoEditorHelper;->showProgressDialog()V
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

    .line 261
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    new-instance v1, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110129

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1102(Lcn/nubia/video/editor/VideoEditorHelper;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 266
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 268
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 270
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper$5;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoEditorHelper;->access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setAnimPanelBackground(I)V

    return-void
.end method
