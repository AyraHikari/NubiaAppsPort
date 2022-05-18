.class Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$1;
.super Ljava/lang/Object;
.source "MusicListDetailEmptyViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$1;->a:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$1;->a:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->access$000(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;)Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$1;->a:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->access$000(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;)Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;->refreshData()V

    .line 187
    :cond_0
    return-void
.end method
