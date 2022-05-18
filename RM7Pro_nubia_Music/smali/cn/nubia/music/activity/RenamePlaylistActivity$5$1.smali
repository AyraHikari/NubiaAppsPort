.class Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;
.super Landroid/os/AsyncTask;
.source "RenamePlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/RenamePlaylistActivity$5;->onClick(Landroid/content/DialogInterface;I)V
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

.field final synthetic b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/RenamePlaylistActivity$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iput-object p2, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    iget-object v3, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$300(Lcn/nubia/music/activity/RenamePlaylistActivity;Ljava/lang/String;)I

    move-result v0

    .line 232
    if-ltz v0, :cond_1

    move v0, v1

    .line 233
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    iget-object v3, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iget-object v3, v3, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-virtual {v3}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 235
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 236
    const-string v5, "playlist_name"

    iget-object v6, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v5, "content://nubia.music.preset/playlists"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "playlist_id=?"

    new-array v1, v1, [Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iget-object v7, v7, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    .line 239
    invoke-static {v7}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$400(Lcn/nubia/music/activity/RenamePlaylistActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 237
    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 232
    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$500(Lcn/nubia/music/activity/RenamePlaylistActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 247
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/RenamePlaylistActivity;->setResult(I)V

    .line 248
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00cd

    :goto_0
    invoke-static {v1, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 250
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->b:Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    iget-object v0, v0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->finish()V

    .line 251
    return-void

    .line 248
    :cond_0
    const v0, 0x7f0b00d0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
