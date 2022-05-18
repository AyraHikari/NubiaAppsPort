.class public Lcom/GifEncoder/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field private b:I

.field protected c:Ljava/lang/String;

.field protected d:Lcom/GifEncoder/e$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/GifEncoder/e$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/GifEncoder/c;->a:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    iput p3, p0, Lcom/GifEncoder/c;->b:I

    invoke-static {p1}, Lcom/GifEncoder/h;->g(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/GifEncoder/c;->b:I

    iput-object p1, p0, Lcom/GifEncoder/c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/GifEncoder/c;->d:Lcom/GifEncoder/e$b;

    invoke-virtual {p0}, Lcom/GifEncoder/c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {p0}, Lcom/GifEncoder/h;->c(Lcom/GifEncoder/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/GifEncoder/c;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/GifEncoder/c;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/GifEncoder/e$b;
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/c;->d:Lcom/GifEncoder/e$b;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/GifEncoder/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/GifEncoder/c;->a:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
