.class public Lcn/nubia/camera/multiRecord/SelectRectView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/NinePatchDrawable;

.field private b:Landroid/graphics/drawable/NinePatchDrawable;

.field private c:Landroid/graphics/drawable/NinePatchDrawable;

.field private d:Landroid/graphics/drawable/NinePatchDrawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private j:I

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->e:I

    .line 43
    iput p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->f:I

    .line 44
    iput p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->g:I

    const/4 p1, 0x6

    .line 51
    iput p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    return-void
.end method

.method private a(I)Landroid/graphics/Rect;
    .locals 8

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iget v5, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v5, v4

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v5

    const/4 v6, 0x3

    div-int/2addr v5, v6

    iget v7, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v7, v4

    sub-int/2addr v5, v7

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v6, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result p1

    div-int/2addr p1, v4

    iget v1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v1, v4

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v3

    div-int/2addr v3, v6

    iget v5, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v5, v4

    sub-int/2addr v3, v5

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result p1

    div-int/2addr p1, v4

    iget v1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v1, v4

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v1

    div-int/2addr v1, v6

    iget v2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v3

    mul-int/2addr v3, v4

    div-int/2addr v3, v6

    iget v5, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v5, v4

    sub-int/2addr v3, v5

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 101
    :cond_2
    iget p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    add-int/2addr p1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v1

    div-int/2addr v1, v6

    iget v2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result v2

    div-int/2addr v2, v4

    iget v3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v3

    mul-int/2addr v3, v4

    div-int/2addr v3, v6

    iget v5, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v5, v4

    sub-int/2addr v3, v5

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result p1

    div-int/2addr p1, v4

    iget v1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v1, v4

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v1

    mul-int/2addr v1, v4

    div-int/2addr v1, v6

    iget v2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 107
    :cond_4
    iget p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    add-int/2addr p1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v1

    mul-int/2addr v1, v4

    div-int/2addr v1, v6

    iget v2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getWidth()I

    move-result v2

    div-int/2addr v2, v4

    iget v3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 13

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->a:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x0

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08012e

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 122
    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/graphics/NinePatch;

    invoke-direct {v6, v0, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v4, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->a:Landroid/graphics/drawable/NinePatchDrawable;

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->b:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 126
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080203

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 129
    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/graphics/NinePatch;

    invoke-direct {v6, v0, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v4, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->b:Landroid/graphics/drawable/NinePatchDrawable;

    .line 131
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 134
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080204

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 136
    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/graphics/NinePatch;

    invoke-direct {v6, v0, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v4, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    .line 138
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->d:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 141
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080205

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 143
    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Landroid/graphics/NinePatch;

    invoke-direct {v5, v0, v1}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->d:Landroid/graphics/drawable/NinePatchDrawable;

    .line 145
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->h:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->h:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070096

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->i:I

    .line 150
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->j:I

    .line 152
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    const-string v1, "10x"

    .line 155
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "2x"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "5x"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "0.5x"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "1x"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->l:Ljava/util/HashMap;

    .line 163
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->l:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "front"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->l:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->l:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .line 88
    iput p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->e:I

    .line 89
    iput p2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->f:I

    .line 90
    iput p3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->g:I

    return-void
.end method

.method public getCameraIdMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/SelectRectView;->a()V

    .line 62
    iget v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 63
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/SelectRectView;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->b:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->b:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    :cond_0
    iget v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->f:I

    if-eq v0, v1, :cond_1

    .line 68
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/SelectRectView;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    :cond_1
    iget v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->g:I

    if-eq v0, v1, :cond_2

    .line 73
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/SelectRectView;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->d:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->d:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 79
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/multiRecord/SelectRectView;->a(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 81
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 82
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->h:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 83
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v4, v3

    iget v3, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->i:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->j:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDisplayAllMarge(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcn/nubia/camera/multiRecord/SelectRectView;->m:I

    return-void
.end method
