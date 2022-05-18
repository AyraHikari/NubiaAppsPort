.class Lcn/nubia/music/fragment/MyPlaylistFragment$3;
.super Ljava/lang/Object;
.source "MyPlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/MyPlaylistFragment;->createDeletePlaylistDialog([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcn/nubia/commonui/app/AlertDialog;

.field final synthetic c:Lcn/nubia/music/fragment/MyPlaylistFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyPlaylistFragment;[JLcn/nubia/commonui/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$3;->c:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iput-object p2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$3;->a:[J

    iput-object p3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$3;->b:Lcn/nubia/commonui/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcn/nubia/music/fragment/MyPlaylistFragment$3$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/MyPlaylistFragment$3$1;-><init>(Lcn/nubia/music/fragment/MyPlaylistFragment$3;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 294
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$3;->b:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 295
    return-void
.end method
