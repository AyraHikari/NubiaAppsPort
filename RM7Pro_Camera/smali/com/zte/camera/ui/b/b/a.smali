.class public Lcom/zte/camera/ui/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Lcom/zte/camera/ui/b/a/d;

.field private c:Lcom/zte/camera/ui/b/a/b;

.field private d:J

.field private e:J

.field private f:I

.field private g:Lcom/zte/camera/b/a;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/EGLContext;Landroid/view/Surface;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lcom/zte/camera/ui/b/b/a;->d:J

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcom/zte/camera/ui/b/b/a;->e:J

    .line 23
    iput-wide v0, p0, Lcom/zte/camera/ui/b/b/a;->d:J

    .line 24
    new-instance v0, Lcom/zte/camera/ui/b/a/b;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/zte/camera/ui/b/a/b;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/zte/camera/ui/b/b/a;->c:Lcom/zte/camera/ui/b/a/b;

    .line 25
    new-instance p2, Lcom/zte/camera/ui/b/a/d;

    iget-object v0, p0, Lcom/zte/camera/ui/b/b/a;->c:Lcom/zte/camera/ui/b/a/b;

    invoke-direct {p2, v0, p3, v1}, Lcom/zte/camera/ui/b/a/d;-><init>(Lcom/zte/camera/ui/b/a/b;Landroid/view/Surface;Z)V

    iput-object p2, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    .line 26
    new-instance p2, Lcom/zte/camera/b/a;

    invoke-direct {p2, p1}, Lcom/zte/camera/b/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/zte/camera/b/a;->f()V

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    .line 62
    iget-object v1, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    if-eqz v1, :cond_1

    .line 64
    :try_start_0
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/a/d;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :goto_0
    iput-object v0, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/zte/camera/ui/b/b/a;->c:Lcom/zte/camera/ui/b/a/b;

    if-eqz v1, :cond_2

    .line 72
    :try_start_1
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/a/b;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :goto_1
    iput-object v0, p0, Lcom/zte/camera/ui/b/b/a;->c:Lcom/zte/camera/ui/b/a/b;

    :cond_2
    return-void
.end method

.method public a(IIIII)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    invoke-virtual {v0}, Lcom/zte/camera/ui/b/a/d;->d()V

    .line 31
    iget-object v0, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    invoke-virtual {v0}, Lcom/zte/camera/ui/b/a/d;->b()V

    .line 32
    iget-object v0, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    invoke-virtual {v0}, Lcom/zte/camera/b/a;->a()Z

    .line 33
    iget-object v0, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    invoke-virtual {v0, p3}, Lcom/zte/camera/b/a;->a(I)V

    .line 34
    iget-object p3, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    invoke-virtual {p3, p1, p2}, Lcom/zte/camera/b/a;->a(II)V

    .line 35
    iput p4, p0, Lcom/zte/camera/ui/b/b/a;->h:I

    .line 36
    iput p5, p0, Lcom/zte/camera/ui/b/b/a;->f:I

    .line 37
    iget-object p1, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    invoke-virtual {p1, p4, p5}, Lcom/zte/camera/b/a;->b(II)V

    return-void
.end method

.method public a(IJ)V
    .locals 4

    .line 41
    iget-object p1, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    if-nez p1, :cond_0

    .line 42
    sget-object p1, Lcom/zte/camera/ui/b/b/a;->a:Ljava/lang/String;

    const-string p2, "draw window surface is null"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/zte/camera/ui/b/a/d;->b()V

    .line 47
    iget-wide v0, p0, Lcom/zte/camera/ui/b/b/a;->d:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 48
    iput-wide p2, p0, Lcom/zte/camera/ui/b/b/a;->d:J

    .line 50
    :cond_1
    iget-wide v0, p0, Lcom/zte/camera/ui/b/b/a;->d:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/zte/camera/ui/b/b/a;->e:J

    .line 51
    iget-object p1, p0, Lcom/zte/camera/ui/b/b/a;->g:Lcom/zte/camera/b/a;

    invoke-virtual {p1, p2, p3}, Lcom/zte/camera/b/a;->a(J)V

    .line 52
    iget-object p1, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    iget-wide p2, p0, Lcom/zte/camera/ui/b/b/a;->e:J

    invoke-virtual {p1, p2, p3}, Lcom/zte/camera/ui/b/a/d;->a(J)V

    .line 53
    iget-object p1, p0, Lcom/zte/camera/ui/b/b/a;->b:Lcom/zte/camera/ui/b/a/d;

    invoke-virtual {p1}, Lcom/zte/camera/ui/b/a/d;->c()Z

    return-void
.end method
