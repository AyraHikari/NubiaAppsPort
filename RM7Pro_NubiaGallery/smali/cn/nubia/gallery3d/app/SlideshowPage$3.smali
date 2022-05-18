.class Lcn/nubia/gallery3d/app/SlideshowPage$3;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 259
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$900(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->playOrPause()V

    .line 262
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1000(Lcn/nubia/gallery3d/app/SlideshowPage;)Z

    move-result p1

    const v1, 0x7f09011c

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1102(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z

    .line 264
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v0, 0x7f0801f0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    .line 265
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v0, 0x7f1001a0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemTitleById(II)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1102(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z

    .line 268
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v0, 0x7f0801f1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    .line 269
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$3;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v0, 0x7f1001b4

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemTitleById(II)V

    :goto_0
    return-void
.end method
