.class Lcn/nubia/gallery3d/app/AlbumSetPage$4;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->onResume()V
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

    .line 603
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClicked(I)Z
    .locals 7

    const v0, 0x7f09001e

    const v1, 0x7f09008f

    const v2, 0x7f0c0026

    const v3, 0x7f10004e

    const v4, 0x7f110129

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v6

    .line 631
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2600(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    return v5

    .line 612
    :pswitch_1
    new-instance p1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100118

    .line 613
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 614
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$4$1;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage$4;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    new-array v0, v5, [Ljava/lang/String;

    .line 619
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100207

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 620
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$4$2;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage$4;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    return v6

    .line 608
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2400(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    return v6

    .line 635
    :pswitch_3
    new-instance p1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f10011b

    .line 636
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 637
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$3;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$4$3;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage$4;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    new-array v0, v5, [Ljava/lang/String;

    .line 642
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10011a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 643
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$4;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$4$4;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage$4;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 650
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    return v6

    .line 659
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/improve/category/FaceMenuExecutor;

    move-result-object v0

    const v1, 0x7f090019

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/improve/category/FaceMenuExecutor;->startAction(IILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;ZZ)V

    return v6

    .line 654
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/improve/category/FaceMenuExecutor;

    move-result-object v0

    const v1, 0x7f090018

    const/4 v2, 0x0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/improve/category/FaceMenuExecutor;->startAction(IILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;ZZ)V

    return v6

    .line 663
    :cond_0
    new-instance p1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100155

    .line 664
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 665
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$5;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$4$5;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage$4;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    new-array v0, v5, [Ljava/lang/String;

    .line 670
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100154

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 671
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$4$6;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$4$6;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage$4;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 678
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    return v6

    :pswitch_data_0
    .packed-switch 0x7f090018
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f09002d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
