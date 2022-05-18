.class public Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/PrismaSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aO()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 262
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez p2, :cond_0

    .line 274
    iget-object v2, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0057

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 275
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    .line 276
    invoke-static {v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    .line 277
    invoke-static {v6}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 278
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;

    iget-object v4, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-direct {v3, v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;-><init>(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)V

    const v4, 0x7f0900d4

    .line 281
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateImageView;

    iput-object v4, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->a:Lcom/android/common/ui/RotateImageView;

    const v4, 0x7f09019d

    .line 282
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateImageView;

    iput-object v4, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->b:Lcom/android/common/ui/RotateImageView;

    const v4, 0x7f09012f

    .line 283
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateLayout;

    iput-object v4, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->c:Lcom/android/common/ui/RotateLayout;

    const v4, 0x7f090331

    .line 284
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->d:Landroid/widget/TextView;

    .line 285
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;

    move-object/from16 v2, p2

    .line 290
    :goto_0
    iget-object v4, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ne v1, v4, :cond_1

    .line 291
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->b:Lcom/android/common/ui/RotateImageView;

    const v4, 0x7f080293

    invoke-virtual {v1, v4}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 292
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->c:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v5}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 293
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->a:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 294
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->d:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 296
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    .line 297
    iget v6, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->b:I

    const/4 v7, 0x0

    if-lez v6, :cond_2

    .line 298
    iget-object v6, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->b:Lcom/android/common/ui/RotateImageView;

    iget v8, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->b:I

    invoke-virtual {v6, v8}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 299
    :cond_2
    iget-object v6, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->d:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_3

    .line 300
    iget-object v6, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->b:Lcom/android/common/ui/RotateImageView;

    iget-object v8, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->d:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6, v8}, Lcom/android/common/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 301
    :cond_3
    iget-object v6, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->c:Ljava/lang/String;

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 303
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v9}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->c:Ljava/lang/String;

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    const/4 v8, 0x1

    .line 304
    iget-object v9, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v9}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aput-object v9, v6, v8

    .line 305
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v8, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->d:Landroid/graphics/drawable/LayerDrawable;

    .line 306
    iget-object v9, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->d:Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 307
    iget-object v15, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->d:Landroid/graphics/drawable/LayerDrawable;

    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v6, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v6}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070112

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 308
    iget-object v6, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->b:Lcom/android/common/ui/RotateImageView;

    iget-object v8, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->d:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6, v8}, Lcom/android/common/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_4
    :goto_1
    iget-object v6, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->d:Landroid/widget/TextView;

    iget-object v8, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v8, v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v4, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->f(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 314
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->a:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v7}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_2

    .line 316
    :cond_5
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->a:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 320
    :goto_2
    iget-object v1, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    .line 321
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->a:Lcom/android/common/ui/RotateImageView;

    iget-object v4, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)I

    move-result v4

    iget-object v5, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v5}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 322
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->b:Lcom/android/common/ui/RotateImageView;

    iget-object v4, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)I

    move-result v4

    iget-object v5, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v5}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 323
    iget-object v1, v3, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;->c:Lcom/android/common/ui/RotateLayout;

    iget-object v3, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v3}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)I

    move-result v3

    iget-object v4, v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    :cond_6
    return-object v2
.end method
