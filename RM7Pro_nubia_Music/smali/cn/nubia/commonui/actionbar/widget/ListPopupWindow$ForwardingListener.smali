.class public abstract Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$b;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$a;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1248
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1249
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1250
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1252
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    .line 1253
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0

    .prologue
    .line 1214
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1381
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1384
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1387
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1389
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1390
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1405
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1406
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1407
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1409
    iput-boolean v9, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1410
    iput-boolean v9, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    goto :goto_0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1420
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1421
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v3

    .line 1422
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return v1

    .line 1426
    :cond_1
    invoke-static {v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    move-result-object v3

    .line 1427
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1432
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1433
    invoke-direct {p0, v2, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1434
    invoke-direct {p0, v3, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1437
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v3, v4, v2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 1438
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1441
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1442
    if-eq v2, v0, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    move v2, v0

    .line 1445
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1442
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1445
    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1333
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1334
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return v0

    .line 1338
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1339
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1341
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1342
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1344
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 1345
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$a;

    invoke-direct {v1, p0, v6}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$a;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1347
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 1349
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$b;

    invoke-direct {v1, p0, v6}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$b;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 1351
    :cond_3
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1354
    :pswitch_1
    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1355
    if-ltz v3, :cond_0

    .line 1356
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1357
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1358
    iget v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v4, v3, v5}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1359
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1362
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 1363
    goto :goto_0

    .line 1369
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 1339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 2

    .prologue
    .line 1449
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 1450
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1451
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 1449
    :goto_0
    return v0

    .line 1451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1470
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1471
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1472
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1473
    return v2
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1459
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1460
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1461
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1462
    return v2
.end method


# virtual methods
.method public abstract getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1307
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->show()V

    .line 1309
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 1319
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    .line 1320
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->dismiss()V

    .line 1323
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1269
    iget-boolean v10, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1271
    if-eqz v10, :cond_5

    .line 1272
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    if-eqz v0, :cond_2

    .line 1276
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1293
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1294
    if-nez v0, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    move v7, v8

    :cond_1
    return v7

    .line 1278
    :cond_2
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_0

    .line 1281
    :cond_5
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    move v9, v8

    .line 1283
    :goto_1
    if-eqz v9, :cond_6

    .line 1285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1286
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1289
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_6
    move v0, v9

    goto :goto_0

    :cond_7
    move v9, v7

    .line 1281
    goto :goto_1
.end method
