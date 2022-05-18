.class Lcom/zte/camera/a/a/b$1;
.super Lcom/zte/camera/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/a/a/b;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/zte/camera/a/a/b;


# direct methods
.method constructor <init>(Lcom/zte/camera/a/a/b;JJZII)V
    .locals 6

    .line 188
    iput-object p1, p0, Lcom/zte/camera/a/a/b$1;->c:Lcom/zte/camera/a/a/b;

    iput p7, p0, Lcom/zte/camera/a/a/b$1;->a:I

    iput p8, p0, Lcom/zte/camera/a/a/b$1;->b:I

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/zte/camera/d/a;-><init>(JJZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/zte/camera/a/a/b$1;->c:Lcom/zte/camera/a/a/b;

    invoke-static {v0}, Lcom/zte/camera/a/a/b;->a(Lcom/zte/camera/a/a/b;)Lcom/zte/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/camera/d/a;->b()V

    .line 196
    iget-object v0, p0, Lcom/zte/camera/a/a/b$1;->c:Lcom/zte/camera/a/a/b;

    iget v1, p0, Lcom/zte/camera/a/a/b$1;->a:I

    iget v2, p0, Lcom/zte/camera/a/a/b$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/zte/camera/a/a/b;->a(Lcom/zte/camera/a/a/b;II)V

    .line 197
    iget-object v0, p0, Lcom/zte/camera/a/a/b$1;->c:Lcom/zte/camera/a/a/b;

    invoke-static {v0}, Lcom/zte/camera/a/a/b;->b(Lcom/zte/camera/a/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 198
    iget-object v0, p0, Lcom/zte/camera/a/a/b$1;->c:Lcom/zte/camera/a/a/b;

    invoke-static {v0}, Lcom/zte/camera/a/a/b;->b(Lcom/zte/camera/a/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/zte/camera/a/a/b$1;->a:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method
