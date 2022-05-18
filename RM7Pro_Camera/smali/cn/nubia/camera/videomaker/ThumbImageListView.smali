.class public Lcn/nubia/camera/videomaker/ThumbImageListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/videomaker/ThumbImageListView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/content/Context;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/videomaker/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcn/nubia/camera/videomaker/ThumbImageListView$a;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->a:I

    .line 34
    iput p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->b:I

    .line 35
    iput p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->c:I

    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->d:Z

    .line 37
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->e:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->f:Landroid/graphics/Bitmap;

    .line 39
    iput-object p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->g:Landroid/graphics/Bitmap;

    .line 42
    iput-object p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->j:Lcn/nubia/camera/videomaker/ThumbImageListView$a;

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    .line 44
    iput p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->l:I

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->h:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    return p1
.end method

.method private a(Landroid/view/View;I)I
    .locals 0

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    return p2
.end method

.method private a(Landroid/widget/ImageView;IZ)V
    .locals 12

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 201
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 202
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 206
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, -0x1000000

    .line 207
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x96

    .line 208
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x1

    .line 209
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget v3, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->l:I

    if-eqz v3, :cond_3

    if-nez v3, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/videomaker/d;

    invoke-virtual {p2}, Lcn/nubia/camera/videomaker/d;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 224
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 225
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 227
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 228
    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 229
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 230
    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 233
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 232
    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 234
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x3

    invoke-direct {v4, v6, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v10, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 238
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 239
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 240
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 241
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    const/16 v3, 0x8

    .line 243
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 244
    iput v3, v2, Landroid/graphics/Rect;->top:I

    const/16 v3, 0x21

    .line 245
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 246
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x0

    .line 248
    invoke-virtual {v10, p2, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-nez p3, :cond_2

    .line 251
    iget p2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, p2

    iget p2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, p2

    iget p2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, p2

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, p2

    move-object v3, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget-object p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->g:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->e:Landroid/graphics/Rect;

    invoke-virtual {v10, p2, p3, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object p2, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->f:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->e:Landroid/graphics/Rect;

    invoke-virtual {v10, p2, p3, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 257
    :goto_0
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(IZ)Z
    .locals 2

    .line 187
    invoke-virtual {p0, p1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->c(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f090327

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 192
    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(Landroid/widget/ImageView;IZ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcn/nubia/camera/videomaker/d;I)Landroid/view/View;
    .locals 3

    .line 170
    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/d;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f090327

    .line 179
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 180
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(Landroid/widget/ImageView;IZ)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->removeAllViews()V

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->b(I)Lcn/nubia/camera/videomaker/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/d;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    .line 91
    iput v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    .line 93
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 65
    iput p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->l:I

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08031b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->f:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08031c

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->g:Landroid/graphics/Bitmap;

    .line 70
    iget-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->e:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 71
    iget-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->e:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 72
    iget-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 73
    iget-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 75
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a()V

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    .line 77
    iput v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    return-void
.end method

.method public a(Lcn/nubia/camera/videomaker/d;I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Lcn/nubia/camera/videomaker/d;->a(Z)V

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/videomaker/ThumbImageListView;->b(Lcn/nubia/camera/videomaker/d;I)Landroid/view/View;

    move-result-object p1

    .line 103
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(Landroid/view/View;I)I

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/videomaker/ThumbImageListView;->addView(Landroid/view/View;I)V

    .line 107
    iget p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    return-void
.end method

.method public b(I)Lcn/nubia/camera/videomaker/d;
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/videomaker/d;

    return-object p1
.end method

.method public c(I)I
    .locals 0

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHighLightNumber()I
    .locals 1

    .line 112
    iget v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(Landroid/view/View;)I

    move-result p1

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/videomaker/d;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/d;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 119
    iget v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 120
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->h:Landroid/content/Context;

    const v2, 0x7f0f00a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    sub-int/2addr v0, v1

    .line 124
    iput v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/videomaker/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/d;->a(Z)V

    .line 126
    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(IZ)Z

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->k:I

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/videomaker/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/d;->a(Z)V

    .line 130
    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(IZ)Z

    .line 133
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->j:Lcn/nubia/camera/videomaker/ThumbImageListView$a;

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v0, p1}, Lcn/nubia/camera/videomaker/ThumbImageListView$a;->a(I)V

    :cond_2
    return-void
.end method

.method public setOnThumbImageClickListener(Lcn/nubia/camera/videomaker/ThumbImageListView$a;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcn/nubia/camera/videomaker/ThumbImageListView;->j:Lcn/nubia/camera/videomaker/ThumbImageListView$a;

    return-void
.end method
