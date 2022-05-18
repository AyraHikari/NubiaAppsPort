.class Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->w(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;Landroid/net/Uri;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->u(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;

    iget-object v1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->U(Lb/a/a/e/g;)V

    return-void
.end method
