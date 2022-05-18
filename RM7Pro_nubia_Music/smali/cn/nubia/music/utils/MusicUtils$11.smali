.class final Lcn/nubia/music/utils/MusicUtils$11;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/MusicUtils;->insertSongInfoAsync(Lcn/nubia/music/online/data/MusicEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/online/data/MusicEntry;


# direct methods
.method constructor <init>(Lcn/nubia/music/online/data/MusicEntry;)V
    .locals 0

    .prologue
    .line 2778
    iput-object p1, p0, Lcn/nubia/music/utils/MusicUtils$11;->a:Lcn/nubia/music/online/data/MusicEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2781
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$11;->a:Lcn/nubia/music/online/data/MusicEntry;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->insertSongInfo(Lcn/nubia/music/online/data/MusicEntry;)J

    .line 2782
    return-void
.end method
