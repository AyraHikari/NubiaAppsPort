.class Lcn/nubia/music/activity/RenamePlaylistActivity$4;
.super Ljava/lang/Object;
.source "RenamePlaylistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/RenamePlaylistActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/RenamePlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/RenamePlaylistActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$4;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$4;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 213
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$4;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 214
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$4;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 216
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$4;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    const-string v1, "input_method"

    .line 217
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$4;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 220
    return-void
.end method
