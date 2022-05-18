.class Lcn/nubia/music/app/menu/MusicListActionModManager$2;
.super Ljava/lang/Object;
.source "MusicListActionModManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 300
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$2;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$2;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$1000(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V

    .line 305
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 306
    return-void
.end method
