.class public Lcn/nubia/music/app/MusicPlayer$ServiceToken;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceToken"
.end annotation


# instance fields
.field mWrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcn/nubia/music/app/MusicPlayer$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 526
    return-void
.end method
