.class Lcn/nubia/gallery3d/app/AlbumSetPage$4$6;
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

    .line 671
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$6;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 674
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$6;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$4;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/improve/category/FaceMenuExecutor;

    move-result-object v0

    const v1, 0x7f09001e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/improve/category/FaceMenuExecutor;->startAction(IILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;ZZ)V

    return-void
.end method
