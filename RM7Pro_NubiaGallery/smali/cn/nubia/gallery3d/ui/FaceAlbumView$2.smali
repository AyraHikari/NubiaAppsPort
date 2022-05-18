.class Lcn/nubia/gallery3d/ui/FaceAlbumView$2;
.super Ljava/lang/Object;
.source "FaceAlbumView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/FaceAlbumView;->showRenameDialog(Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

.field final synthetic val$confirmListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;->val$confirmListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 321
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$300(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$400(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->setRenameButtonText(Ljava/lang/String;)V

    .line 325
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;->val$confirmListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$000(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
