.class Lcn/nubia/music/activity/AddToPlaylistActivity$1;
.super Ljava/lang/Object;
.source "AddToPlaylistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AddToPlaylistActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AddToPlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AddToPlaylistActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$1;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$1;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$000(Lcn/nubia/music/activity/AddToPlaylistActivity;)V

    .line 70
    return-void
.end method
