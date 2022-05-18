.class Lcn/nubia/gallery3d/ui/FaceAlbumView$3;
.super Ljava/lang/Object;
.source "FaceAlbumView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/FaceAlbumView;->showKeyBord(Lcn/nubia/commonui/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$3;->this$0:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$3;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView$3;->val$edit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
