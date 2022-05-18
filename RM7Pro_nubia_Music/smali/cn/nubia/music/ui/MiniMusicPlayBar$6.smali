.class Lcn/nubia/music/ui/MiniMusicPlayBar$6;
.super Ljava/lang/Object;
.source "MiniMusicPlayBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/ui/MiniMusicPlayBar;->setPlayView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MiniMusicPlayBar;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$6;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isFastClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$6;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00ce

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method
