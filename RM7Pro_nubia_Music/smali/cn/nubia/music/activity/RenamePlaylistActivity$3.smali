.class Lcn/nubia/music/activity/RenamePlaylistActivity$3;
.super Landroid/os/AsyncTask;
.source "RenamePlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/RenamePlaylistActivity;->setPlaylistName(Ljava/lang/String;J)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/music/activity/RenamePlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/RenamePlaylistActivity;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->c:Lcn/nubia/music/activity/RenamePlaylistActivity;

    iput-wide p2, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->a:J

    iput-object p4, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->c:Lcn/nubia/music/activity/RenamePlaylistActivity;

    iget-wide v2, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->a:J

    invoke-static {v0, v2, v3}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$200(Lcn/nubia/music/activity/RenamePlaylistActivity;J)Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->b:Ljava/lang/String;

    .line 171
    :cond_0
    iget-wide v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->c:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->finish()V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->c:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->c:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 177
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->c:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->c:Lcn/nubia/music/activity/RenamePlaylistActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/RenamePlaylistActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->a(Ljava/lang/String;)V

    return-void
.end method
