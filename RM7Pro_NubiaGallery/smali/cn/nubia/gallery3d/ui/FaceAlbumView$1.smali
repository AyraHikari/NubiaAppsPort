.class Lcn/nubia/gallery3d/ui/FaceAlbumView$1;
.super Ljava/lang/Object;
.source "FaceAlbumView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/FaceAlbumView;->setFaceAlbumName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$000(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p1

    const p2, 0x7f090091

    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 286
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->checkName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 288
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$000(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    .line 289
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$100(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 290
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$100(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->setNameText(Ljava/lang/String;)V

    .line 293
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$200(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Lcn/nubia/gallery3d/data/FaceAlbum;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/FaceAlbum;->setName(Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->invalidate()V

    :cond_1
    return-void
.end method
