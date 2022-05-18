.class Lcn/nubia/music/fragment/MyPlaylistFragment$2;
.super Ljava/lang/Object;
.source "MyPlaylistFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/MyPlaylistFragment;->createDeletePlaylistDialog([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/MyPlaylistFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyPlaylistFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$2;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 281
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 282
    return-void
.end method
