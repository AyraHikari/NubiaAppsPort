.class public Lcom/zte/camera/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/a/c$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "c"


# instance fields
.field volatile a:Z

.field b:Lcom/zte/camera/a/a;

.field private d:Landroid/graphics/SurfaceTexture;

.field private e:I

.field private f:Lcom/zte/camera/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/zte/camera/a/c;->d:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/zte/camera/a/c;->e:I

    .line 24
    iput-boolean v1, p0, Lcom/zte/camera/a/c;->a:Z

    .line 26
    iput-object v0, p0, Lcom/zte/camera/a/c;->b:Lcom/zte/camera/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/camera/b/a;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/zte/camera/a/c;->f:Lcom/zte/camera/a/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zte/camera/a/c$a;->a()Lcom/zte/camera/b/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/zte/camera/a/c;->f:Lcom/zte/camera/a/c$a;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1}, Lcom/zte/camera/a/c$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/zte/camera/a/c;->f:Lcom/zte/camera/a/c$a;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/zte/camera/a/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update vlog width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/zte/camera/a/c;->f:Lcom/zte/camera/a/c$a;

    invoke-interface {v0, p1, p2}, Lcom/zte/camera/a/c$a;->a(II)V

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/zte/camera/a/c;->f:Lcom/zte/camera/a/c$a;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1, p2, p3}, Lcom/zte/camera/a/c$a;->a(IJ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/opengl/EGLContext;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/zte/camera/a/c;->f:Lcom/zte/camera/a/c$a;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1}, Lcom/zte/camera/a/c$a;->a(Landroid/opengl/EGLContext;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/zte/camera/a/c$a;)V
    .locals 1

    .line 155
    iput-object p1, p0, Lcom/zte/camera/a/c;->f:Lcom/zte/camera/a/c$a;

    if-eqz p1, :cond_0

    .line 157
    iget v0, p0, Lcom/zte/camera/a/c;->e:I

    invoke-interface {p1, v0}, Lcom/zte/camera/a/c$a;->a(I)V

    :cond_0
    return-void
.end method
