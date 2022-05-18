.class Lcn/nubia/gallery3d/ui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/PhotoView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$1;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 0

    .line 449
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$1;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onUndoDeleteImage()V

    .line 450
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$1;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 451
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$1;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->showDeleteBar()V

    return-void
.end method
