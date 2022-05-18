.class Lcn/nubia/gallery3d/ui/FaceAlbumView$MyTextWatcher;
.super Ljava/lang/Object;
.source "FaceAlbumView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/FaceAlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$MyTextWatcher;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;Lcn/nubia/gallery3d/ui/FaceAlbumView$1;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView$MyTextWatcher;-><init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 357
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x32

    if-lt p1, p2, :cond_0

    .line 358
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$MyTextWatcher;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->access$400(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000ac

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
