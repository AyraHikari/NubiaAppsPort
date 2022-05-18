.class Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;
.super Ljava/lang/Object;
.source "PlaylistActionBaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/dialog/PlaylistActionBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;


# direct methods
.method constructor <init>(Lcn/nubia/music/dialog/PlaylistActionBaseDialog;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;-><init>(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 95
    invoke-virtual {v1, v0}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method
