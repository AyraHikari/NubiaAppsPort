.class Lcn/nubia/music/activity/CreatePlaylistActivity$3;
.super Ljava/lang/Object;
.source "CreatePlaylistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/CreatePlaylistActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/CreatePlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$3;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$3;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 145
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$3;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 146
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$3;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 148
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$3;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    const-string v1, "input_method"

    .line 149
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 151
    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$3;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 152
    return-void
.end method
