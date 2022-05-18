.class Lcn/nubia/music/app/download/PathManager$1;
.super Ljava/lang/Object;
.source "PathManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/download/PathManager;->getCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcn/nubia/music/app/download/PathManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/download/PathManager;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/music/app/download/PathManager$1;->b:Lcn/nubia/music/app/download/PathManager;

    iput-object p2, p0, Lcn/nubia/music/app/download/PathManager$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :cond_0
    return-void
.end method
