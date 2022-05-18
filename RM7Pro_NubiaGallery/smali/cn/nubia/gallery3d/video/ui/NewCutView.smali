.class public Lcn/nubia/gallery3d/video/ui/NewCutView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "NewCutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;
    }
.end annotation


# instance fields
.field private currentTime:J

.field private mBgHeight:I

.field private mBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mBgWidth:I

.field private mBgX:I

.field private mBgY:I

.field private mContext:Landroid/content/Context;

.field private mCutHeight:I

.field private mCutViewIsVisible:Z

.field private mCutWidth:I

.field private mCutX:I

.field private mCutY:I

.field private mInitCutX:I

.field private mInitCutY:I

.field private mListener:Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;

.field private mNewCutViewTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private preTime:J

.field private pressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutViewIsVisible:Z

    .line 33
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->pressed:Z

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->currentTime:J

    .line 35
    iput-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->preTime:J

    .line 38
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/NewCutView;->initPiex()V

    .line 40
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/NewCutView;->initTex()V

    return-void
.end method

.method private drawCutView(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 12

    .line 59
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgX:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgY:I

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 60
    iget-object v6, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mNewCutViewTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v8, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutX:I

    iget v9, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutY:I

    iget v10, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutWidth:I

    iget v11, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutHeight:I

    move-object v7, p1

    invoke-interface/range {v6 .. v11}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method private initPiex()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgWidth:I

    .line 45
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgHeight:I

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutWidth:I

    .line 47
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutHeight:I

    return-void
.end method

.method private initTex()V
    .locals 3

    .line 50
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    const v2, 0x7f080065

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 51
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    const v2, 0x7f080069

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mNewCutViewTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/ui/NewCutView;->drawCutView(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public isCutViewIsVisible()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutViewIsVisible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    add-int/2addr p2, p4

    .line 65
    div-int/lit8 p2, p2, 0x2

    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutWidth:I

    div-int/lit8 p4, p1, 0x2

    sub-int p4, p2, p4

    iput p4, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgX:I

    .line 66
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutX:I

    add-int/2addr p3, p5

    .line 67
    div-int/lit8 p3, p3, 0x2

    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutHeight:I

    div-int/lit8 p4, p1, 0x2

    sub-int p4, p3, p4

    iput p4, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgY:I

    .line 68
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutY:I

    .line 69
    iput p2, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mInitCutX:I

    .line 70
    iput p3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mInitCutY:I

    .line 71
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewCutView;->invalidate()V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewCutView;->isCutViewIsVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->currentTime:J

    .line 82
    iget-wide v5, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->preTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    return v2

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 85
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->pressed:Z

    if-nez v0, :cond_1

    return v2

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 98
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->pressed:Z

    if-eqz p1, :cond_3

    .line 99
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutX:I

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgWidth:I

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutY:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgHeight:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutWidth:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutHeight:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, p1, v0, v3, v4}, Lcn/nubia/gallery3d/video/ui/NewCutView;->zoomInImage(IIII)V

    .line 100
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mListener:Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;->onStartCutListen()V

    .line 102
    :cond_3
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->pressed:Z

    goto :goto_0

    .line 89
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->preTime:J

    .line 92
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->pressed:Z

    if-nez p1, :cond_5

    .line 93
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutX:I

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgWidth:I

    div-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutY:I

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mBgHeight:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1, v0, v1, v3}, Lcn/nubia/gallery3d/video/ui/NewCutView;->zoomInImage(IIII)V

    .line 94
    :cond_5
    iput-boolean v2, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->pressed:Z

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewCutView;->invalidate()V

    return v2

    .line 107
    :cond_6
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutX:I

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mInitCutX:I

    if-eq p1, v0, :cond_7

    .line 108
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutX:I

    .line 109
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mInitCutY:I

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutY:I

    .line 110
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutWidth:I

    .line 111
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutHeight:I

    .line 112
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->pressed:Z

    :cond_7
    return v1
.end method

.method public setCutViewIsVisible(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutViewIsVisible:Z

    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mListener:Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;

    return-void
.end method

.method protected zoomInImage(IIII)V
    .locals 0

    .line 119
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutX:I

    .line 120
    iput p2, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutY:I

    .line 121
    iput p3, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutWidth:I

    .line 122
    iput p4, p0, Lcn/nubia/gallery3d/video/ui/NewCutView;->mCutHeight:I

    return-void
.end method
