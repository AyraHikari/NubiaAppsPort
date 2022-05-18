.class Lcn/nubia/music/activity/CreatePlaylistActivity$4;
.super Landroid/os/AsyncTask;
.source "CreatePlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/CreatePlaylistActivity;->makePlaylistName(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/CreatePlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 163
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "playlist_name"

    aput-object v0, v2, v7

    .line 169
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    const-string v3, "playlist_name != \'\'"

    .line 171
    const-string v1, "content://nubia.music.preset/playlists"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "playlist_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 174
    if-nez v3, :cond_0

    .line 199
    :goto_0
    return-object v4

    .line 178
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v7

    .line 186
    :goto_1
    if-nez v2, :cond_2

    .line 188
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v1

    move-object v1, v0

    move v0, v6

    .line 189
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_4

    .line 190
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 192
    new-array v1, v6, [Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move v0, v7

    .line 195
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 198
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 199
    aget-object v1, p1, v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v0, p1, v7

    :cond_3
    move-object v4, v0

    goto :goto_0

    :cond_4
    move v9, v0

    move-object v0, v1

    move v1, v2

    move v2, v9

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 206
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->a(Ljava/lang/String;)V

    return-void
.end method
