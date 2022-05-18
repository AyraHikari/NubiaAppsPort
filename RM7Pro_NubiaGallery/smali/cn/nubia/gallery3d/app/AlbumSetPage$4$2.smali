.class Lcn/nubia/gallery3d/app/AlbumSetPage$4$2;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage$4;->onMenuItemClicked(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$4;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage$4;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$2;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 623
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$2;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$4;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2500(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    .line 624
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$2;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$4;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    return-void
.end method
