.class Lcn/nubia/music/MusicApp$1;
.super Ljava/lang/Object;
.source "MusicApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MusicApp;->doBackground()V
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
    .line 138
    iput-object p1, p0, Lcn/nubia/music/MusicApp$1;->a:Lcn/nubia/music/MusicApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 142
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->init()V

    .line 143
    return-void
.end method
