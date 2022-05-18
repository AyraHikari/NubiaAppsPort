.class Lcn/nubia/gallery3d/app/AlbumSetPage$5;
.super Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->initializeViews()V
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

    .line 732
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1

    .line 735
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3000(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V

    return-void
.end method

.method public onLongTap(I)V
    .locals 1

    .line 750
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onLongTap(I)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onSingleTapUp(I)V

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3100(Lcn/nubia/gallery3d/app/AlbumSetPage;Z)V

    return-void
.end method
