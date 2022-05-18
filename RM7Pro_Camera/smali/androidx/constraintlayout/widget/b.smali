.class public Landroidx/constraintlayout/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field private c:Landroidx/constraintlayout/widget/b$a;

.field private d:I

.field private e:F

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/b;Ljava/lang/Object;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iget-object v0, p1, Landroidx/constraintlayout/widget/b;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/lang/String;

    .line 219
    iget-object p1, p1, Landroidx/constraintlayout/widget/b;->c:Landroidx/constraintlayout/widget/b$a;

    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->c:Landroidx/constraintlayout/widget/b$a;

    .line 220
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/b$a;Ljava/lang/Object;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Landroidx/constraintlayout/widget/b;->c:Landroidx/constraintlayout/widget/b$a;

    .line 214
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/b;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 252
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/b;

    :try_start_0
    const-string v5, "BackgroundColor"

    .line 256
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    .line 258
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 259
    new-instance v6, Landroidx/constraintlayout/widget/b;

    invoke-direct {v6, v4, v5}, Landroidx/constraintlayout/widget/b;-><init>(Landroidx/constraintlayout/widget/b;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    .line 262
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 263
    new-instance v6, Landroidx/constraintlayout/widget/b;

    invoke-direct {v6, v4, v5}, Landroidx/constraintlayout/widget/b;-><init>(Landroidx/constraintlayout/widget/b;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 271
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 269
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 267
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/b;",
            ">;)V"
        }
    .end annotation

    .line 399
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 400
    sget-object v0, Landroidx/constraintlayout/widget/j$b;->cC:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_9

    .line 406
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 407
    sget v7, Landroidx/constraintlayout/widget/j$b;->cD:I

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    .line 408
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 409
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 412
    :cond_0
    sget v7, Landroidx/constraintlayout/widget/j$b;->cE:I

    if-ne v6, v7, :cond_1

    .line 413
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 414
    sget-object v4, Landroidx/constraintlayout/widget/b$a;->f:Landroidx/constraintlayout/widget/b$a;

    goto/16 :goto_2

    .line 415
    :cond_1
    sget v7, Landroidx/constraintlayout/widget/j$b;->cG:I

    if-ne v6, v7, :cond_2

    .line 416
    sget-object v3, Landroidx/constraintlayout/widget/b$a;->c:Landroidx/constraintlayout/widget/b$a;

    .line 417
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_2

    .line 418
    :cond_2
    sget v7, Landroidx/constraintlayout/widget/j$b;->cF:I

    if-ne v6, v7, :cond_3

    .line 419
    sget-object v3, Landroidx/constraintlayout/widget/b$a;->d:Landroidx/constraintlayout/widget/b$a;

    .line 420
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 421
    :cond_3
    sget v7, Landroidx/constraintlayout/widget/j$b;->cK:I

    const/4 v9, 0x0

    if-ne v6, v7, :cond_4

    .line 422
    sget-object v3, Landroidx/constraintlayout/widget/b$a;->g:Landroidx/constraintlayout/widget/b$a;

    .line 425
    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 423
    invoke-static {v8, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    .line 427
    :cond_4
    sget v7, Landroidx/constraintlayout/widget/j$b;->cH:I

    if-ne v6, v7, :cond_5

    .line 428
    sget-object v3, Landroidx/constraintlayout/widget/b$a;->g:Landroidx/constraintlayout/widget/b$a;

    .line 429
    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    .line 430
    :cond_5
    sget v7, Landroidx/constraintlayout/widget/j$b;->cI:I

    if-ne v6, v7, :cond_6

    .line 431
    sget-object v3, Landroidx/constraintlayout/widget/b$a;->b:Landroidx/constraintlayout/widget/b$a;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 432
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    .line 433
    :cond_6
    sget v7, Landroidx/constraintlayout/widget/j$b;->cJ:I

    if-ne v6, v7, :cond_7

    .line 434
    sget-object v3, Landroidx/constraintlayout/widget/b$a;->a:Landroidx/constraintlayout/widget/b$a;

    const/4 v4, -0x1

    .line 435
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 436
    :cond_7
    sget v7, Landroidx/constraintlayout/widget/j$b;->cL:I

    if-ne v6, v7, :cond_8

    .line 437
    sget-object v3, Landroidx/constraintlayout/widget/b$a;->e:Landroidx/constraintlayout/widget/b$a;

    .line 438
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    .line 442
    new-instance p0, Landroidx/constraintlayout/widget/b;

    invoke-direct {p0, v1, v4, v3}, Landroidx/constraintlayout/widget/b;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/b$a;Ljava/lang/Object;)V

    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\" not found on "

    const-string v1, " Custom Attribute \""

    const-string v2, "TransitionLayout"

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 279
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 280
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/b;

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    :try_start_0
    sget-object v8, Landroidx/constraintlayout/widget/b$1;->a:[I

    iget-object v9, v6, Landroidx/constraintlayout/widget/b;->c:Landroidx/constraintlayout/widget/b$a;

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/b$a;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v8, v10, [Ljava/lang/Class;

    .line 312
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v10, [Ljava/lang/Object;

    .line 313
    iget v6, v6, Landroidx/constraintlayout/widget/b;->e:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    new-array v8, v10, [Ljava/lang/Class;

    .line 308
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v10, [Ljava/lang/Object;

    .line 309
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/b;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    new-array v8, v10, [Ljava/lang/Class;

    .line 304
    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v10, [Ljava/lang/Object;

    .line 305
    iget-object v6, v6, Landroidx/constraintlayout/widget/b;->f:Ljava/lang/String;

    aput-object v6, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    new-array v8, v10, [Ljava/lang/Class;

    .line 290
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v10, [Ljava/lang/Object;

    .line 291
    iget v6, v6, Landroidx/constraintlayout/widget/b;->e:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_4
    new-array v8, v10, [Ljava/lang/Class;

    .line 286
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v10, [Ljava/lang/Object;

    .line 287
    iget v6, v6, Landroidx/constraintlayout/widget/b;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    new-array v8, v10, [Ljava/lang/Class;

    .line 294
    const-class v11, Landroid/graphics/drawable/Drawable;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 295
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 296
    iget v6, v6, Landroidx/constraintlayout/widget/b;->g:I

    invoke-virtual {v11, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v11, v6, v9

    .line 297
    invoke-virtual {v8, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    new-array v8, v10, [Ljava/lang/Class;

    .line 300
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v10, [Ljava/lang/Object;

    .line 301
    iget v6, v6, Landroidx/constraintlayout/widget/b;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v6

    .line 317
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must have a method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 225
    sget-object v0, Landroidx/constraintlayout/widget/b$1;->a:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->c:Landroidx/constraintlayout/widget/b$a;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/b;->e:F

    goto :goto_0

    .line 240
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/b;->b:Z

    goto :goto_0

    .line 237
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 230
    :pswitch_3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/b;->e:F

    goto :goto_0

    .line 227
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/b;->d:I

    goto :goto_0

    .line 234
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/b;->g:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
