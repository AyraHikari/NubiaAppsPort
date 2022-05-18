.class Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/modules/videoRender/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 3

    const-string v0, "VirtualVideoFragment"

    const-string v1, "onSurfaceAvailable!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->u(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->a0(Landroid/view/Surface;)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->v(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->y(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    move-result-object p1

    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;)V

    const-wide/16 v1, 0x82

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/TextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
