.class public Lcn/nubia/music/utils/imageloader/CustomGlideModule;
.super Ljava/lang/Object;
.source "CustomGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/d/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomGlideModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/h;)V
    .locals 3

    .prologue
    .line 21
    const-string v0, "CustomGlideModule"

    const-string v1, "applyOptions"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcn/nubia/music/app/download/PathManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/download/PathManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->IMAGE:Lcn/nubia/music/app/download/PathManager$PathTag;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/download/PathManager;->getCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "CustomGlideModule"

    invoke-static {v1, v0}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/high16 v1, 0xc800000

    .line 25
    new-instance v2, Lcom/bumptech/glide/load/engine/b/d;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/engine/b/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/engine/b/a$a;)Lcom/bumptech/glide/h;

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    .line 28
    div-int/lit8 v0, v0, 0x20

    .line 29
    new-instance v1, Lcom/bumptech/glide/load/engine/b/g;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/b/g;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/engine/b/h;)Lcom/bumptech/glide/h;

    .line 30
    new-instance v1, Lcom/bumptech/glide/load/engine/a/f;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/a/f;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/h;

    .line 31
    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
