.class Lcn/nubia/camera/videomaker/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/a/b;->a(Ljava/lang/String;ILcn/nubia/camera/videomaker/a/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/a/b;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b$2;->a:Lcn/nubia/camera/videomaker/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "videoGenerator"

    const-string v1, "onComplete"

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b$2;->a:Lcn/nubia/camera/videomaker/a/b;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/a/b;->a(Lcn/nubia/camera/videomaker/a/b;)Lcn/nubia/videogenerator/codec/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/g;->c()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b$2;->a:Lcn/nubia/camera/videomaker/a/b;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/a/b;->b(Lcn/nubia/camera/videomaker/a/b;)Lcn/nubia/videogenerator/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/c;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b$2;->a:Lcn/nubia/camera/videomaker/a/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/nubia/camera/videomaker/a/b;->a(Lcn/nubia/camera/videomaker/a/b;I)I

    .line 351
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b$2;->a:Lcn/nubia/camera/videomaker/a/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/camera/videomaker/a/b;->a(Lcn/nubia/camera/videomaker/a/b;IIJ)V

    return-void
.end method
