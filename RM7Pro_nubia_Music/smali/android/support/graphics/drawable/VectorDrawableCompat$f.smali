.class Landroid/support/graphics/drawable/VectorDrawableCompat$f;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1033
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    .line 928
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1034
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    .line 1035
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$f;)V
    .locals 3

    .prologue
    .line 945
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    .line 928
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 946
    if-eqz p1, :cond_2

    .line 947
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    .line 948
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$e;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    .line 949
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-static {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a(Landroid/support/graphics/drawable/VectorDrawableCompat$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-static {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a(Landroid/support/graphics/drawable/VectorDrawableCompat$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a(Landroid/support/graphics/drawable/VectorDrawableCompat$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 952
    :cond_0
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-static {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-static {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 955
    :cond_1
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    .line 956
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 957
    iget-boolean v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    .line 959
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 976
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 986
    :goto_0
    return-object v0

    .line 980
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 981
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->l:Landroid/graphics/Paint;

    .line 982
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 984
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 985
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 986
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->l:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 990
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 991
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 992
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 993
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 964
    invoke-virtual {p0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object v0

    .line 965
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 966
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/Bitmap;

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->k:Z

    .line 1002
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 1013
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->j:Z

    iget-boolean v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->i:I

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    .line 1017
    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1018
    const/4 v0, 0x1

    .line 1020
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->g:Landroid/content/res/ColorStateList;

    .line 1027
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1028
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a()I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->i:I

    .line 1029
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->j:Z

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->k:Z

    .line 1031
    return-void
.end method

.method public c(II)Z
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/Bitmap;

    .line 1006
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1007
    const/4 v0, 0x1

    .line 1009
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1039
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$f;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1044
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$f;)V

    return-object v0
.end method
