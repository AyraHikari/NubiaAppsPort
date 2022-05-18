.class Lcn/nubia/music/app/menu/MusicListActionModManager$3;
.super Ljava/lang/Object;
.source "MusicListActionModManager.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/menu/MusicListActionModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/menu/MusicListActionModManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/menu/MusicListActionModManager;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$3;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$3;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$1100(Lcn/nubia/music/app/menu/MusicListActionModManager;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$3;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$3;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$1100(Lcn/nubia/music/app/menu/MusicListActionModManager;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-static {v0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$1200(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V

    .line 401
    :cond_0
    return-void
.end method
