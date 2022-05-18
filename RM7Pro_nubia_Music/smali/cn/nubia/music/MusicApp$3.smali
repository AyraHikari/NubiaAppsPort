.class Lcn/nubia/music/MusicApp$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MusicApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MusicApp;


# direct methods
.method constructor <init>(Lcn/nubia/music/MusicApp;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcn/nubia/music/MusicApp$3;->a:Lcn/nubia/music/MusicApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcn/nubia/music/MusicApp$3;->a:Lcn/nubia/music/MusicApp;

    invoke-static {v0}, Lcn/nubia/music/MusicApp;->access$000(Lcn/nubia/music/MusicApp;)V

    .line 172
    return-void
.end method
