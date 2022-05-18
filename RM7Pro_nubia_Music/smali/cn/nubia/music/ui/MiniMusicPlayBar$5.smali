.class Lcn/nubia/music/ui/MiniMusicPlayBar$5;
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
    .line 218
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$5;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar$5;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 237
    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$5;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    const-string v1, "minibar"

    const-string v2, "minibar"

    const-string v3, "open"

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$200(Lcn/nubia/music/ui/MiniMusicPlayBar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method
