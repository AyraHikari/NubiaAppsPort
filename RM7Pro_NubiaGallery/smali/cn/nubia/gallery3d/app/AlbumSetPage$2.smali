.class Lcn/nubia/gallery3d/app/AlbumSetPage$2;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->pickAlbum(I)V
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

    .line 346
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 349
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p1

    const p2, 0x7f090091

    .line 350
    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 352
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 353
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->createNewFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 355
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->createNewFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 358
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    .line 359
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    const/4 v0, 0x0

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1100(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SelectionHintView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getToggleState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p2, p1, v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumSetPage;Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method
