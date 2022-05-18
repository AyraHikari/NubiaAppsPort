.class Lcn/nubia/gallery3d/app/AlbumSetPage$13;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 1408
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$13;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressComplete(I)V
    .locals 0

    .line 1411
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$13;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$13;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1412
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$13;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3900(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    :cond_0
    return-void
.end method
