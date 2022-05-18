.class public abstract Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;
.super Ljava/lang/Object;
.source "DrawElement.java"


# instance fields
.field protected mIsVisibility:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mPositionX:I

    .line 16
    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mPositionY:I

    .line 17
    iput-object p2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mIsVisibility:Z

    .line 19
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    .line 50
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mPositionY:I

    return v0
.end method

.method public redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mIsVisibility:Z

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setPositionXY(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 34
    iput p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mPositionX:I

    .line 35
    iput p2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mPositionY:I

    .line 36
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->mIsVisibility:Z

    .line 23
    return-void
.end method
