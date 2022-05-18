.class Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;
.super Landroid/os/AsyncTask;
.source "PlaylistActionBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->onClick(Landroid/view/View;)V
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

.field final synthetic b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;


# direct methods
.method constructor <init>(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iput-object p2, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iget-object v0, v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    iget-object v2, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->access$000(Lcn/nubia/music/dialog/PlaylistActionBaseDialog;Ljava/lang/String;)I

    move-result v0

    .line 79
    if-ltz v0, :cond_1

    move v0, v1

    .line 80
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iget-object v2, v2, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    iget-object v2, v2, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iget-object v2, v2, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    iget-object v2, v2, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 82
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 83
    const-string v1, "playlist_name"

    iget-object v4, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iget-object v1, v1, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->insertContentValue(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 86
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iget-object v0, v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iget-object v0, v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 92
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->b:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    iget-object v0, v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    invoke-virtual {v0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->showSuccess(Ljava/lang/Boolean;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
