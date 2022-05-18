.class Lcn/nubia/gallery3d/video/VideoToast$1;
.super Ljava/lang/Object;
.source "VideoToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/video/VideoToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/VideoToast;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/VideoToast;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoToast$1;->this$0:Lcn/nubia/gallery3d/video/VideoToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast$1;->this$0:Lcn/nubia/gallery3d/video/VideoToast;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoToast;->access$000(Lcn/nubia/gallery3d/video/VideoToast;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast$1;->this$0:Lcn/nubia/gallery3d/video/VideoToast;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoToast;->access$000(Lcn/nubia/gallery3d/video/VideoToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method
