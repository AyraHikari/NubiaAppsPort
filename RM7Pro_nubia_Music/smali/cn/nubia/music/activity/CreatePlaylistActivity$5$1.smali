.class Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;
.super Landroid/os/AsyncTask;
.source "CreatePlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/CreatePlaylistActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/CreatePlaylistActivity$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    iput-object p2, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 220
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    iget-object v1, v1, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$200(Lcn/nubia/music/activity/CreatePlaylistActivity;Ljava/lang/String;)I

    move-result v1

    .line 223
    if-ltz v1, :cond_0

    .line 224
    const-string v0, "id >= 0"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 228
    :cond_0
    const-string v1, "id < 0"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 229
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 230
    const-string v2, "playlist_name"

    iget-object v3, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "playlist_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v2, "content://nubia.music.preset/playlists"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    iget-object v1, v1, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->setResult(ILandroid/content/Intent;)V

    .line 234
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    iget-object v1, v0, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0033

    :goto_0
    invoke-static {v1, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 241
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$300(Lcn/nubia/music/activity/CreatePlaylistActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 242
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->finish()V

    .line 243
    return-void

    .line 239
    :cond_0
    const v0, 0x7f0b00cd

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
