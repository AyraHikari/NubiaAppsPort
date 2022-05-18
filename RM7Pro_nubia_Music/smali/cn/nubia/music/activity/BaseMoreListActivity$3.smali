.class Lcn/nubia/music/activity/BaseMoreListActivity$3;
.super Ljava/lang/Object;
.source "BaseMoreListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:Lcn/nubia/music/activity/BaseMoreListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;ILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iput p2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->a:I

    iput-object p3, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->b:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v9, 0x0

    .line 244
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/music/ui/ScrollRefreshListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 245
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderDistance:I

    if-gtz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->a:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderDistance:I

    .line 249
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderDistance:I

    if-gtz v0, :cond_2

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 254
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 256
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->a:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    .line 259
    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    .line 260
    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 261
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getListHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderViewSrc:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 268
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->a:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderViewSrc:Landroid/graphics/Bitmap;

    .line 271
    :cond_5
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderViewSrc:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 272
    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 273
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 275
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget v5, v5, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderDistance:I

    .line 276
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v7, v7, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    .line 277
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->a:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 279
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderViewSrc:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseMoreListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseMoreListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 291
    const-string v0, "scroll base more 11"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BaseMoreListActivity onScroll Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_6
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->a:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->a:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    .line 294
    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 295
    const-string v0, "scroll base more 22"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getListHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$3;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method
