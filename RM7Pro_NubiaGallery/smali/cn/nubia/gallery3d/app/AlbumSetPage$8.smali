.class Lcn/nubia/gallery3d/app/AlbumSetPage$8;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->updateAppBars()V
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

    .line 806
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 809
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage$8;)V

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3300(Lcn/nubia/gallery3d/app/AlbumSetPage;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method
