.class Lcn/nubia/camera/clone/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/l;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/clone/l;Lcn/nubia/camera/clone/l$1;)V
    .locals 0

    .line 1197
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l$b;-><init>(Lcn/nubia/camera/clone/l;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1202
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->q(Lcn/nubia/camera/clone/l;)Z

    move-result p1

    const-string v0, "CloneViewManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->r(Lcn/nubia/camera/clone/l;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->s(Lcn/nubia/camera/clone/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    .line 1207
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_6

    const-wide/16 v4, 0x64

    if-eq p1, v2, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto/16 :goto_3

    .line 1222
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->w(Lcn/nubia/camera/clone/l;)J

    move-result-wide v6

    sub-long/2addr v1, v6

    cmp-long p1, v1, v4

    if-gez p1, :cond_2

    .line 1223
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v3}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Z)Z

    .line 1225
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_1_DOWN mIsScale = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->v(Lcn/nubia/camera/clone/l;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; uesTime = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v4}, Lcn/nubia/camera/clone/l;->w(Lcn/nubia/camera/clone/l;)J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1225
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1229
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->x(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/ui/ScaleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getOffsetScaleX()F

    move-result p1

    .line 1230
    iget-object v0, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->x(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/ui/ScaleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getOffsetScaleY()F

    move-result v0

    .line 1231
    iget-object v2, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v2}, Lcn/nubia/camera/clone/l;->x(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/ui/ScaleLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getOffsetX()I

    move-result v2

    .line 1232
    iget-object v6, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v6}, Lcn/nubia/camera/clone/l;->x(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/ui/ScaleLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getOffsetY()I

    move-result v6

    .line 1233
    iget-object v7, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v7}, Lcn/nubia/camera/clone/l;->v(Lcn/nubia/camera/clone/l;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v9}, Lcn/nubia/camera/clone/l;->w(Lcn/nubia/camera/clone/l;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-lez v4, :cond_5

    .line 1234
    iget-object v4, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v4}, Lcn/nubia/camera/clone/l;->y(Lcn/nubia/camera/clone/l;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1235
    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->C(Lcn/nubia/camera/clone/l;)Landroid/graphics/Canvas;

    move-result-object v7

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->z(Lcn/nubia/camera/clone/l;)F

    move-result v1

    mul-float/2addr v1, p1

    int-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->A(Lcn/nubia/camera/clone/l;)F

    move-result v1

    mul-float/2addr v1, v0

    int-to-float v4, v6

    add-float v9, v1, v4

    .line 1236
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, p1

    add-float v10, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr p1, v0

    add-float v11, p1, v4

    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    .line 1237
    invoke-static {p1}, Lcn/nubia/camera/clone/l;->B(Lcn/nubia/camera/clone/l;)Landroid/graphics/Paint;

    move-result-object v12

    .line 1235
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1238
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->F(Lcn/nubia/camera/clone/l;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    .line 1239
    invoke-static {v1}, Lcn/nubia/camera/clone/l;->D(Lcn/nubia/camera/clone/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v2}, Lcn/nubia/camera/clone/l;->E(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1238
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1240
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v3}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;Z)Z

    goto :goto_0

    .line 1242
    :cond_4
    iget-object v4, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v4}, Lcn/nubia/camera/clone/l;->G(Lcn/nubia/camera/clone/l;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1243
    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->H(Lcn/nubia/camera/clone/l;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1245
    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->I(Lcn/nubia/camera/clone/l;)Landroid/graphics/Canvas;

    move-result-object v7

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->z(Lcn/nubia/camera/clone/l;)F

    move-result v1

    mul-float/2addr v1, p1

    int-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->A(Lcn/nubia/camera/clone/l;)F

    move-result v1

    mul-float/2addr v1, v0

    int-to-float v4, v6

    add-float v9, v1, v4

    .line 1246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, p1

    add-float v10, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr p1, v0

    add-float v11, p1, v4

    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    .line 1247
    invoke-static {p1}, Lcn/nubia/camera/clone/l;->H(Lcn/nubia/camera/clone/l;)Landroid/graphics/Paint;

    move-result-object v12

    .line 1245
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1248
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->G(Lcn/nubia/camera/clone/l;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    .line 1249
    invoke-static {v1}, Lcn/nubia/camera/clone/l;->D(Lcn/nubia/camera/clone/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v2}, Lcn/nubia/camera/clone/l;->J(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1248
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1250
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v3}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;Z)Z

    .line 1253
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;F)F

    .line 1254
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;F)F

    .line 1255
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->u(Lcn/nubia/camera/clone/l;)V

    goto/16 :goto_3

    :cond_6
    const-string p1, "ACTION_UP"

    .line 1258
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->v(Lcn/nubia/camera/clone/l;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1260
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->y(Lcn/nubia/camera/clone/l;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1261
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->K(Lcn/nubia/camera/clone/l;)V

    goto :goto_1

    .line 1263
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->L(Lcn/nubia/camera/clone/l;)V

    .line 1266
    :cond_8
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;F)F

    .line 1267
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v0}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;F)F

    .line 1268
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->M(Lcn/nubia/camera/clone/l;)V

    .line 1269
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->N(Lcn/nubia/camera/clone/l;)V

    .line 1270
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->O(Lcn/nubia/camera/clone/l;)V

    .line 1271
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Z)Z

    .line 1272
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v1}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;Z)Z

    goto :goto_3

    .line 1209
    :cond_9
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->t(Lcn/nubia/camera/clone/l;)V

    .line 1210
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {p1, v2}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;F)F

    .line 1211
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v2}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;F)F

    .line 1212
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->u(Lcn/nubia/camera/clone/l;)V

    .line 1213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v3, :cond_a

    .line 1214
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v3}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Z)Z

    goto :goto_2

    .line 1216
    :cond_a
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1, v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Z)Z

    .line 1218
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;J)J

    .line 1219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_DOWN mIsScale = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->v(Lcn/nubia/camera/clone/l;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :goto_3
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->x(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/ui/ScaleLayout;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->P(Lcn/nubia/camera/clone/l;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1280
    iget-object p1, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->x(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/ui/ScaleLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/clone/ui/ScaleLayout;->a(Landroid/view/MotionEvent;)V

    :cond_b
    return v3

    .line 1203
    :cond_c
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsCanDraw = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p2}, Lcn/nubia/camera/clone/l;->q(Lcn/nubia/camera/clone/l;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    .line 1204
    invoke-static {p2}, Lcn/nubia/camera/clone/l;->r(Lcn/nubia/camera/clone/l;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mIsWaiting = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/clone/l$b;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p2}, Lcn/nubia/camera/clone/l;->s(Lcn/nubia/camera/clone/l;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1203
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
