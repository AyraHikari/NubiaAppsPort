.class Lcn/nubia/music/activity/RenamePlaylistActivity$1;
.super Ljava/lang/Object;
.source "RenamePlaylistActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/RenamePlaylistActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 82
    iput-object p1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$1;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$1;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->finish()V

    .line 86
    return-void
.end method
