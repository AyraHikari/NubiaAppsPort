.class Lcn/nubia/music/activity/RenamePlaylistActivity$5;
.super Ljava/lang/Object;
.source "RenamePlaylistActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/RenamePlaylistActivity;
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
    .line 224
    iput-object p1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;-><init>(Lcn/nubia/music/activity/RenamePlaylistActivity$5;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 252
    invoke-virtual {v1, v0}, Lcn/nubia/music/activity/RenamePlaylistActivity$5$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    return-void
.end method
