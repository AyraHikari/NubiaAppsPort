.class Lcom/zte/camera/a/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/a/a/a;->b(Landroid/content/Context;IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Lcom/zte/camera/a/a/a;


# direct methods
.method constructor <init>(Lcom/zte/camera/a/a/a;Landroid/content/Context;IIIJ)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/zte/camera/a/a/a$3;->f:Lcom/zte/camera/a/a/a;

    iput-object p2, p0, Lcom/zte/camera/a/a/a$3;->a:Landroid/content/Context;

    iput p3, p0, Lcom/zte/camera/a/a/a$3;->b:I

    iput p4, p0, Lcom/zte/camera/a/a/a$3;->c:I

    iput p5, p0, Lcom/zte/camera/a/a/a$3;->d:I

    iput-wide p6, p0, Lcom/zte/camera/a/a/a$3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 464
    iget-object v7, p0, Lcom/zte/camera/a/a/a$3;->f:Lcom/zte/camera/a/a/a;

    iget-object v1, p0, Lcom/zte/camera/a/a/a$3;->a:Landroid/content/Context;

    iget v2, p0, Lcom/zte/camera/a/a/a$3;->b:I

    iget v3, p0, Lcom/zte/camera/a/a/a$3;->c:I

    iget v4, p0, Lcom/zte/camera/a/a/a$3;->d:I

    iget-wide v5, p0, Lcom/zte/camera/a/a/a$3;->e:J

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/zte/camera/a/a/a;->a(Landroid/content/Context;IIIJ)Lcom/zte/camera/a/a/e;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/zte/camera/a/a/a;->a(Lcom/zte/camera/a/a/a;Lcom/zte/camera/a/a/e;)Lcom/zte/camera/a/a/e;

    .line 465
    iget-object v0, p0, Lcom/zte/camera/a/a/a$3;->f:Lcom/zte/camera/a/a/a;

    invoke-virtual {v0}, Lcom/zte/camera/a/a/a;->b()Landroid/media/MediaCodec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/a/a/a;->a(Lcom/zte/camera/a/a/a;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 466
    iget-object v0, p0, Lcom/zte/camera/a/a/a$3;->f:Lcom/zte/camera/a/a/a;

    invoke-virtual {v0}, Lcom/zte/camera/a/a/a;->a()Landroid/media/MediaCodec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/a/a/a;->b(Lcom/zte/camera/a/a/a;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    return-void
.end method
