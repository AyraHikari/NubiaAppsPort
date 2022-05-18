.class Lcn/nubia/camera/pretty/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/b/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/b/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/b/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/b/c;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c$1;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".yuv"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$1;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->a(Lcn/nubia/camera/pretty/b/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$1;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->b(Lcn/nubia/camera/pretty/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sdcard/FacePlusDebugYuv/"

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$1;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->b(Lcn/nubia/camera/pretty/b/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ori"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/camera/pretty/b/c$1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$1;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->c(Lcn/nubia/camera/pretty/b/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$1;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->c(Lcn/nubia/camera/pretty/b/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "_bokeh"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lcn/nubia/camera/pretty/b/c$1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/b/c$1;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/b/c;->d(Lcn/nubia/camera/pretty/b/c;)V

    return-void
.end method
