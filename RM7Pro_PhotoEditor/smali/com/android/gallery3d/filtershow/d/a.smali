.class public Lcom/android/gallery3d/filtershow/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static f:I = -0x1

.field public static g:I = 0x3


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/d/a;->d:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->e:Landroid/content/res/Resources;

    sget v0, Lcom/android/gallery3d/filtershow/d/a;->f:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/d/a;->a:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/d/a;->b:I

    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/d/a;->d:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->e:Landroid/content/res/Resources;

    iput p1, p0, Lcom/android/gallery3d/filtershow/d/a;->a:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/d/a;->b:I

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/d/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->d:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/d/a;->a:I

    return v0
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/d/a;->b()V

    return-void
.end method

.method public e(Landroid/content/res/Resources;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->e:Landroid/content/res/Resources;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/d/a;->e:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/d/a;->b()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/android/gallery3d/filtershow/d/a;

    iget v0, p1, Lcom/android/gallery3d/filtershow/d/a;->b:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/d/a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/gallery3d/filtershow/d/a;->a:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/d/a;->a:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/d/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->c:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
