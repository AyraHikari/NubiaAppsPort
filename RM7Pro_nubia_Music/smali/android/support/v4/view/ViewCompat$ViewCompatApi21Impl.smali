.class Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi21Impl"
.end annotation


# static fields
.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1204
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;-><init>()V

    return-void
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1445
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 1446
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 1448
    :cond_0
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1449
    if-nez v0, :cond_1

    .line 1450
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1451
    sget-object v1, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1453
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1454
    return-object v0
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 1374
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1375
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1376
    if-eq v1, v0, :cond_0

    .line 1377
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 1379
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    .prologue
    .line 1301
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 1

    .prologue
    .line 1288
    invoke-virtual/range {p1 .. p6}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1316
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 1359
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1229
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1214
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1239
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1394
    invoke-static {}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1397
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1398
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 1399
    check-cast v0, Landroid/view/View;

    .line 1400
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1403
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1404
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1403
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1408
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1412
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1413
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1412
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1416
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1403
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1420
    invoke-static {}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1423
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1424
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 1425
    check-cast v0, Landroid/view/View;

    .line 1426
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1429
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1430
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1429
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1434
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1438
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1439
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1438
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1442
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1429
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 1364
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1365
    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1366
    if-eq v1, v0, :cond_0

    .line 1367
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 1369
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1219
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 1220
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 1321
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 1326
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1327
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1328
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1329
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1330
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1333
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    :cond_1
    return-void

    .line 1328
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 1340
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 1345
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1346
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1347
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1348
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1349
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1352
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1355
    :cond_1
    return-void

    .line 1347
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1224
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 1225
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1262
    invoke-virtual {p1, p2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 1263
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 1

    .prologue
    .line 1245
    if-nez p2, :cond_0

    .line 1246
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1258
    :goto_0
    return-void

    .line 1250
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl$1;-><init>(Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1209
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1234
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    .line 1235
    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1389
    invoke-virtual {p1, p2}, Landroid/view/View;->setZ(F)V

    .line 1390
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1272
    invoke-virtual {p1, p2}, Landroid/view/View;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1277
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 1278
    return-void
.end method
