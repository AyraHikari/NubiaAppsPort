.class Lcn/nubia/music/activity/CreatePlaylistActivity$5;
.super Ljava/lang/Object;
.source "CreatePlaylistActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/CreatePlaylistActivity;
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
    .line 211
    iput-object p1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$5;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 217
    new-instance v1, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;-><init>(Lcn/nubia/music/activity/CreatePlaylistActivity$5;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 244
    invoke-virtual {v1, v0}, Lcn/nubia/music/activity/CreatePlaylistActivity$5$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    :cond_0
    return-void
.end method
