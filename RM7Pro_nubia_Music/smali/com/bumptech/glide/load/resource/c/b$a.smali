.class Lcom/bumptech/glide/load/resource/c/b$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bumptech/glide/b/c;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lcom/bumptech/glide/b/a$a;

.field h:Lcom/bumptech/glide/load/engine/a/c;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b/c;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b/c;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/b/a$a;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 336
    if-nez p9, :cond_0

    .line 337
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/b$a;->a:Lcom/bumptech/glide/b/c;

    .line 340
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/c/b$a;->b:[B

    .line 341
    iput-object p8, p0, Lcom/bumptech/glide/load/resource/c/b$a;->h:Lcom/bumptech/glide/load/engine/a/c;

    .line 342
    iput-object p9, p0, Lcom/bumptech/glide/load/resource/c/b$a;->i:Landroid/graphics/Bitmap;

    .line 343
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/b$a;->c:Landroid/content/Context;

    .line 344
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/c/b$a;->d:Lcom/bumptech/glide/load/f;

    .line 345
    iput p5, p0, Lcom/bumptech/glide/load/resource/c/b$a;->e:I

    .line 346
    iput p6, p0, Lcom/bumptech/glide/load/resource/c/b$a;->f:I

    .line 347
    iput-object p7, p0, Lcom/bumptech/glide/load/resource/c/b$a;->g:Lcom/bumptech/glide/b/a$a;

    .line 348
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/bumptech/glide/load/resource/c/b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/c/b;-><init>(Lcom/bumptech/glide/load/resource/c/b$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/c/b$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
