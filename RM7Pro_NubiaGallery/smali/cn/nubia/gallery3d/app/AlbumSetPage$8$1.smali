.class Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage$8;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 815
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p1

    const p2, 0x7f090091

    .line 816
    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 817
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 818
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 821
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->createNewFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3202(Lcn/nubia/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;

    .line 822
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 823
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    .line 824
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcn/nubia/gallery3d/app/Gallery;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "android.intent.action.GET_CONTENT"

    .line 826
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "*/*"

    .line 827
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "get_multi_content"

    const/4 v0, 0x1

    .line 828
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "addto_newfolder"

    .line 829
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p2, 0x7fffffff

    const-string v0, "max_num"

    .line 830
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$8$1;->this$1:Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumSetPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
